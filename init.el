;;; package --- Marco Minutoli's dotEmacs

;;; Commentary:

;;; Code:
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
(put 'downcase-region 'disabled nil)


;;; Key bindings
(global-set-key (kbd "C-x C-b") 'ibuffer)


;;; Start of per package configuration
;; auctex
(use-package tex-site
  :load-path "site-lisp/auctex/preview"
  :mode ("\\.tex\\'" . latex-mode)
  :config
  (progn
    (use-package latex-mode
      :defer t
      :init
      (progn
        (add-hook 'LaTeX-mode-hook
                  (lambda ()
                    (setq fill-column 80)
                    (auto-fill-mode)
                    (flyspell-mode))))
      :config
      (progn
        (use-package preview)))))

;; bbdb
(use-package bbdb-loaddefs
  :config
  (progn
    (bbdb-initialize 'gnus 'message 'pgp)
    (bbdb-mua-auto-update-init 'gnus 'message 'pgp)))


;; company-mode
(use-package company
  :defer 5
  :commands company-mode
  :config (global-company-mode 1))

;; yasnippet
(use-package yasnippet
  :defer 5
  :config (yas-global-mode 1))


;; cc-mode
(use-package cc-mode
  :defer t
  :init (progn
          (defun my-cc-mode-hook ()
            (local-set-key (kbd "<f5>") 'recompile))
          (add-hook 'c-mode-common-hook 'my-cc-mode-hook))
  :config (progn
            ;;; ggtags
            (use-package ggtags :config (ggtags-mode))
            (use-package google-c-style
              :init (progn
                      (add-hook 'c-mode-common-hook
                                (lambda ()
                                  (google-set-c-style)
                                  (google-make-newline-indent))))
              :config
              (progn
                (c-set-offset 'statement-case-open 0)))))

;; flycheck
(use-package flycheck
  :defer 5
  :config (progn
            (global-flycheck-mode 1)))

;;; gnus
(use-package dot-gnus
  :bind (("<f9> g" . gnus)
         ("C-x m" . compose-mail))
  :init
  (setq gnus-init-file (expand-file-name "dot-gnus" user-emacs-directory))

  :config (use-package w3m))

;;; Helm
(use-package helm-config
  :bind (("C-c h" . helm-command-prefix)
         ("M-x" . helm-M-x)
         ("C-x C-f" . helm-find-files)
         ("C-x b" . helm-mini))
  :config
  (progn
    (use-package helm-mode
      :diminish helm-mode
      :init (helm-mode 1))
    (global-unset-key (kbd "C-x c"))))


;;; initsplit
(use-package cus-edit
  :config
  (use-package initsplit))


;;; markdown-mode
(use-package markdown-mode
  :mode ("\\.md" . markdown-mode))

;;; org-mode
(use-package dot-org
  :init
  (progn
    (use-package org
      :mode ("\\.org" . org-mode))
    (use-package org-agenda
      :bind ("<f12>" . org-agenda))
    (use-package org-capture
      :bind ("C-c c" . org-capture))))

;;; projectile
(use-package projectile
  :defer 5
  :config (progn
            (projectile-global-mode 1)))

;;; solarized
(use-package solarized
  :load-path "themes/solarized"
  :config
  (load-theme 'solarized-dark))


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

;;; init.el ends here
