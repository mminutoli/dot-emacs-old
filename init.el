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
;; auctex
(use-package tex-site
  :load-path "site-lisp/auctex/preview"
  :mode ("\\.tex\\'" . latex-mode)
  :config
  (progn
    (use-package latex-mode
      :defer t
      :config
      (progn
        (use-package preview)))))

;; company-mode
(use-package company
  :commands company-mode)

;; yasnippet
(use-package yasnippet
  :init (yas-global-mode))


;; cc-mode
(use-package cc-mode
  :defer t
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

;;; org-mode
(use-package dot-org
  :mode ("\\.org\\'" . org-mode)
  :commands org-agenda-list
  :bind (("C-c a" . org-agenda)
         ("C-c c" . org-capture)))

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
(put 'downcase-region 'disabled nil)
