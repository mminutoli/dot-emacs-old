(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gnus-after-getting-new-news-hook
   (quote
    (gnus-display-time-event-handler)))
 '(gnus-buttonized-mime-types
   (quote
    ("multipart/alternative" "multipart/encrypted" "multipart/signed")))
 '(gnus-demon-handlers
   (quote
    ((gnus-demon-scan-news 3 2))))
 '(gnus-demon-timestep 60)
 '(gnus-gcc-mark-as-read t)
 '(gnus-group-mode-hook
   (quote
    (gnus-topic-mode gnus-agent-mode)))
 '(gnus-inhibit-startup-message t)
 '(gnus-init-file "~/.emacs.d/settings/dot-gnus.el")
 '(gnus-message-archive-group
   (quote
    (("polimi" "nnimap+polimi:Sent Items")
     (".*" nil))))
 '(gnus-message-replysign t)
 '(gnus-message-setup-hook
   (quote
    (mml-secure-message-sign-pgpmime)))
 '(gnus-notifications-use-google-contacts nil)
 '(gnus-notifications-use-gravatar nil)
 '(gnus-posting-styles
   (quote
    (("polimi"
      (name "Marco Minutoli")
      (address "marco.minutoli@mail.polimi.it"))
     ((message-news-p)
      (name "Marco Minutoli")
      (address "mminutoli@gmail.com")))))
 '(gnus-save-newsrc-file nil)
 '(gnus-secondary-select-methods
   (quote
    ((nnimap "polimi"
             (nnimap-stream ssl)
             (nnimap-server-port 993)
             (nnimap-address "outlook.office365.com"))
     (nntp "news.gmane.org"))))
 '(gnus-select-method
   (quote
    (nnimap "imap.gmail.com"
            (nnimap-server-port 993)
            (nnimap-stream ssl))))
 '(gnus-summary-line-format "%U%R%z%I%(%[%-23,23f%]%) %s
")
 '(gnus-thread-indent-level 2)
 '(gnus-treat-x-pgp-sig t)
 '(message-setup-hook
   (quote
    (mml-secure-message-sign-pgpmime)))
 '(mm-discouraged-alternatives
   (quote
    ("text/html" "text/richtext")))
 '(mm-inline-text-html-with-images t)
 '(mm-text-html-renderer
   (quote w3m))
 '(mm-verify-option
   (quote always))
 '(mml2015-sign-with-sender t)
 '(send-mail-function
   (quote smtpmail-send-it))
 '(smtpmail-default-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(smtpmail-smtp-user "mminutoli@gmail.com")
 '(smtpmail-stream-type
   (quote starttls)))
