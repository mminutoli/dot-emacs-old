;;; Gnus configuration

(load "gnus-settings")

(require 'gnus)
(require 'gnus-demon)
(require 'starttls)
(require 'message)

;; Start the gnus-demon
(gnus-demon-init)

(provide 'dot-gnus)
