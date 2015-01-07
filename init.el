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
(load (expand-file-name "settings" user-settings-directory))

;;; Set cursor type
(setq-default cursor-type 'bar)

;;; Enable disabled command
(put 'narrow-to-region 'disabled nil)  ;;; Narrow to region (C-x n n)
(put 'upcase-region 'disabled nil)
(put 'downcase-region 'disabled nil)

;;; Key bindings
(global-set-key (kbd "C-x C-b") 'ibuffer)
(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "<f12>") 'org-agenda)
(global-set-key (kbd "S-<f11>") 'org-clock-goto)
(global-set-key (kbd "<f10>") 'org-clock-in)
(global-set-key (kbd "<f11>") 'org-clock-out)

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
  :init
  (progn
    (bbdb-initialize 'gnus 'message 'pgp)

    (bbdb-mua-auto-update-init 'gnus 'message 'pgp))
  )


;; company-mode
(use-package company
  :init (progn
          (global-company-mode 1)))

;; yasnippet
(use-package yasnippet
  :init (yas-global-mode))


;; cc-mode
(use-package cc-mode
  :defer t
  :init (progn
          (defun my-cc-mode-hook ()
            (local-set-key (kbd "<f5>") 'recompile))
          (add-hook 'c-mode-common-hook 'my-cc-mode-hook))
  :config (progn
          (use-package google-c-style
            :init (progn
                    (add-hook 'c-mode-common-hook 'google-set-c-style)
                    (add-hook 'c-mode-common-hook 'google-make-newline-indent))
            :config
            (progn
              (c-set-offset 'statement-case-open 0)))))

;; flycheck
(use-package flycheck
  :init (progn
          (global-flycheck-mode 1)))

;;; gnus
(use-package dot-gnus
  :bind (("<f9> g"   . gnus)
         ("C-x m" . compose-mail))
  :init (use-package w3m))

;;; ggtags
(use-package ggtags
  :init (add-hook 'c-mode-common-hook 'ggtags-mode))

;;; initsplit
(eval-after-load 'cus-edit
  (use-package initsplit))

;;; ido-mode
(use-package ido
  :init (progn
          (ido-mode)
          (ido-everywhere))
  )

;;; markdown-mode
(use-package markdown-mode
  :mode ("\\.md" . markdown-mode))

;;; org-mode
(use-package dot-org)

;;; projectile
(use-package projectile
  :init (progn
          (projectile-global-mode 1)))

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
