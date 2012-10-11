;;; Initialization

(setq message-log-max 16384)

(defconst emacs-start-time (current-time))

(unless noninteractive
  (message "Loading %s..." load-file-name))

(load (expand-file-name "load-path" (file-name-directory load-file-name)))

(require 'use-package)

;;; Packages configuration
(load (expand-file-name "settings" user-emacs-directory))

;;; Enable disabled command
(put 'narrow-to-region 'disabled nil)  ;;; Narrow to region (C-x n n)

;;; Start of per package configuration

;;; gnus
(use-package dot-gnus
  :bind (("M-g"   . gnus)
         ("C-x m" . compose-mail)))

;;; initsplit
(eval-after-load 'cus-edit
  (use-package initsplit))

;;; org-mode
(use-package dot-org
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-smart-capture)))

;;; End of the configuration process.
(when window-system
  (let ((elapsed (float-time (time-subtract (current-time)
                                            emacs-start-time))))
    (message "Loading %s...done (%.3fs)" load-file-name elapsed))

  (add-hook 'after-init-hook
            `(lambda ()
               (let ((elapsed (float-time (time-subtract (current-time)
                                                         emacs-start-time))))
                 (message "Loading %s...done (%.3fs) [after-init]"
                          ,load-file-name elapsed)))
            t))
