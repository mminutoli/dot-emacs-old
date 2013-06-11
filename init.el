;;; Initialization

(setq message-log-max t)

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
;; auto-complete
(use-package auto-complete-config
  :load-path ("site-lisp/ac/auto-complete"
              "site-lisp/ac/emacs-clang-complete-async"
              "site-lisp/ac/popup-el")
  :diminish auto-complete-mode
  :init
  (progn
    (use-package auto-complete-clang-async)
    (ac-config-default)))

;; yasnippet
(use-package yasnippet
  :diminish yas-minor-mode
  :commands (yas-minor-mode yas-expand)
  :mode ("/\\.emacs\\.d/snippets/" . snippet-mode)
  :init
  (add-hook 'prog-mode-hook
            '(lambda ()
               (yas-minor-mode 1)))
  :config
  (progn
    (yas--initialize)))

;; cc-mode
(use-package cc-mode
  :defer t
  :init (progn
          (defun ac-cc-mode-setup ()
            (setq ac-sources '(ac-source-clang-async))
            (ac-clang-launch-completion-process)
            (auto-complete-mode t))
          (add-hook 'c-mode-common-hook 'ac-cc-mode-setup))
  :config (progn
          (use-package google-c-style
            :init (progn
                    (add-hook 'c-mode-common-hook 'google-set-c-style)
                    (add-hook 'c-mode-common-hook 'google-make-newline-indent)
                    ))
          ))

;;; gnus
(use-package dot-gnus
  :bind (("M-G"   . gnus)
         ("C-x m" . compose-mail)))

;;; initsplit
(eval-after-load 'cus-edit
  (use-package initsplit))

;;; ido-mode
(use-package ido
  :init (progn
          (ido-mode)
          (ido-everywhere))
  )

;;; magit
(use-package magit
  :bind ("C-x g" . magit-status))

;;; org-mode
(use-package dot-org
  :mode ("\\.org\\'" . org-mode)
  :commands org-agenda-list
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-capture)))

;;; org2blog
(use-package org2blog-autoloads)

;;; whitespace-mode
(use-package whitespace
  :disabled t
  :commands (whitespace-mode whitespace-cleanup)
  :init
  (add-hook 'prog-mode-hook
            '(lambda ()
               (whitespace-mode 1)))
  )

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
