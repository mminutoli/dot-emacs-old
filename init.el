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
(put 'upcase-region 'disabled nil)

;;; Key bindings
(global-set-key (kbd "C-x C-b") 'ibuffer)

;;; Start of per package configuration
;; ede-mode
(use-package ede
  :defer t
  :commands (ede-minor-mode ede-cpp-root-project)
  )

;; yasnippet
(use-package yasnippet
  :commands (yas/minor-mode yas/expand)
  :mode ("/\\.emacs\\.d/snippets/" . snippet-mode)
  :init
  (add-hook 'prog-mode-hook
            '(lambda ()
               (yas/minor-mode 1)))
  :config
  (progn
    (yas/reload-all))
  )

;; cc-mode
(use-package cc-mode
  :defer t
  :config (progn
          (use-package cedet
            :init
            (progn
              ;; Add further minor-modes to be enabled by
              ;; semantic-mode.  See doc-string of
              ;; `semantic-default-submodes' for other things you can
              ;; use here.
              (dolist
                  (submode
                   '(global-semantic-idle-scheduler-mode
                     global-semantic-idle-summary-mode
                     global-semantic-idle-completions-mode

                     global-semantic-mru-bookmark-mode
                     ))
                (add-to-list 'semantic-default-submodes submode t))
              ;; Enable Semantic
              (semantic-mode 1)))

          (ede-minor-mode)
          (use-package projects)

          (use-package google-c-style
            :init (progn
                    (add-hook 'c-mode-common-hook 'google-set-c-style)
                    (add-hook 'c-mode-common-hook 'google-make-newline-indent)
                    ))
          ))

;;; gnus
(use-package dot-gnus
  :bind (("M-g"   . gnus)
         ("C-x m" . compose-mail)))

;;; initsplit
(eval-after-load 'cus-edit
  (use-package initsplit))

;;; magit
(use-package magit
  :bind ("C-x g" . magit-status))

;;; org-mode
(use-package dot-org
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-capture)))

;;; org2blog
(use-package org2blog-autoloads)

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
