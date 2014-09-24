;;; dot-gnus.el -- Gnus configuration
;;; Commentary:
;;;   Gnus configuration.
;;; Code:
(load "gnus-settings")

(require 'gnus)
(require 'gnus-demon)
(require 'starttls)
(require 'message)

;; Start the gnus-demon
(gnus-demon-init)

;; This defadvice has been added to solve a compatibility issue with
;; Outlook.  It seems that Outlook doesn't play nice with unnamed
;; attachments as the signature.
(defadvice mml2015-sign (after mml2015-sign-rename (cont) act)
    (save-excursion
      (search-backward "Content-Type: application/pgp-signature")
      (goto-char (point-at-eol))
      (insert "; name=\"signature.asc\"; description=\"Digital signature\"")))

;; Handling multiple smtp account

(defvar smtp-accounts
  '((ssl "mminutoli@gmail.com" "gmail" "smtp.gmail.com" 587)
    (ssl "marco.minutoli@mail.polimi.it" "polimi" "smtp.office365.com" 587)))

(defun set-smtp-common (alias server port &optional user password)
  (unless user
    (setq user (plist-get
                (car (auth-source-search :host alias :port 587))
                :user)))
  (setq smtpmail-smtp-user user
        smtpmail-smtp-server server
        smtpmail-smtp-service port))

(defun set-smtp (mech alias server port &optional user password)
  "Set related SMTP variables for supplied parameters."
  (set-smtp-common alias server port user password)
  (setq smtpmail-auth-supported (list mech)
        smtpmail-starttls-credentials nil))

(defun set-smtp-ssl (alias server port &optional user password key cert)
  "Set related SMTP and SSL variables for supplied parameters."
  (set-smtp-common alias server port user password)
  (setq starttls-use-gnutls nil        ;use starttls-program
        starttls-extra-arguments nil
        smtpmail-starttls-credentials (list (list server port key cert))))

(defun change-smtp ()
  "Change the SMTP server according to the current from line."
  (save-excursion
    (loop with from = (save-restriction
                        (message-narrow-to-headers)
                        (message-fetch-field "from"))
          for (auth-mech address . auth-spec) in smtp-accounts
          when (string-match (message address) from)
          do (cond
              ((memq auth-mech '(cram-md5 plain login))
               (return (apply 'set-smtp 'auth-mech auth-spec)))
              ((eql auth-mech 'ssl)
               (return (apply 'set-smtp-ssl auth-spec)))
              (t (error "Unrecognized SMTP auth. mechanism: `%s'." auth-mech)))
          finally (error "Cannot infer SMTP information for address `%s'" from))))

(require 'smtpmail)

(defadvice smtpmail-via-smtp (around set-smtp-server-from-sender activate)
  ;; Not sure if this is the right way, but it seems to prevent the password
  ;; lingering around in the variable.
  (let ((smtpmail-auth-credentials nil))
    (with-current-buffer smtpmail-text-buffer
      (change-smtp))
    ad-do-it))

(provide 'dot-gnus)
;;; dot-gnus.el ends here
