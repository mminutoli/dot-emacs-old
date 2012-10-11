(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(gnus-after-getting-new-news-hook
   (quote
    (gnus-display-time-event-handler gnus-notifications)))
 '(gnus-demon-handlers
   (quote
    ((gnus-demon-scan-news 5 5))))
 '(gnus-group-mode-hook
   (quote
    (gnus-topic-mode gnus-agent-mode)))
 '(gnus-init-file "~/.emacs.d/dot-gnus.el")
 '(gnus-message-archive-group nil)
 '(gnus-notifications-use-google-contacts nil)
 '(gnus-notifications-use-gravatar nil)
 '(gnus-secondary-select-methods
   (quote
    ((nntp "news.gmane.org"))))
 '(gnus-select-method
   (quote
    (nnimap "imap.gmail.com"
            (nnimap-server-port 993)
            (nnimap-stream ssl))))
 '(org-agenda-files
   (quote
    ("home.org" "university.org")))
 '(org-default-notes-file "~/org/notes.org")
 '(send-mail-function
   (quote smtpmail-send-it))
 '(smtpmail-default-smtp-server "smtp.gmai.com")
 '(smtpmail-smtp-server "smtp.gmail.com")
 '(smtpmail-smtp-service 587)
 '(smtpmail-smtp-user "mminutoli@gmail.com")
 '(smtpmail-stream-type
   (quote starttls)))
