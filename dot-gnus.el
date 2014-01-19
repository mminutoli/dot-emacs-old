;;; Gnus configuration

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

(provide 'dot-gnus)
