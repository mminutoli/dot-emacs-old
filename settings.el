
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector
   ["#212526" "#ff4b4b" "#b4fa70" "#fce94f" "#729fcf" "#ad7fa8" "#8cc4ff" "#eeeeec"])
 '(auto-save-list-file-prefix "~/.emacs.d/data/auto-save-list/.saves-")
 '(background-color nil)
 '(background-mode light)
 '(bbdb-auto-notes-ignore-messages nil)
 '(bbdb-horiz-pop-up-window-size
   (quote
    (112 . 0.3)))
 '(bbdb-ignore-message-alist
   (quote
    (("From" . "no.?reply\\|daemon\\|DAEMON\\|facebookmail\\|twitter"))))
 '(bbdb-mua-pop-up-window-size 5)
 '(bbdb/message-update-records-p
   (lambda nil
     (let
         ((bbdb-update-records-p
           (quote query)))
       (bbdb-select-message))))
 '(bbdb/vm-auto-folder-field
   (quote vm-folder))
 '(bbdb/vm-virtual-folder-field
   (quote vm-virtual))
 '(bbdb/vm-virtual-real-folders nil)
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(cursor-color nil)
 '(custom-enabled-themes nil)
 '(custom-file "~/.emacs.d/settings.el")
 '(custom-safe-themes
   (quote
    ("fc5fcb6f1f1c1bc01305694c59a1a861b008c534cae8d0e48e4d5e81ad718bc6" "1e7e097ec8cb1f8c3a912d7e1e0331caeed49fef6cff220be63bd2a6ba4cc365" "3c9d994e18db86ae397d077b6324bfdc445ecc7dc81bb9d528cd9bba08c1dac1" "0603fb5696ab4af05e7c8bb11498bd189bdb7930c7c88dd6ac1e5ec2fc3efb2b" default)))
 '(ede-project-directories nil)
 '(ede-project-placeholder-cache-file "~/.emacs.d/data/ede-projects.el")
 '(erc-hide-list
   (quote
    ("JOIN" "PART" "QUIT")))
 '(eshell-directory-name "~/.emacs.d/data/eshell/")
 '(exec-path
   (quote
    ("/usr/local/sbin" "/usr/local/bin" "/usr/sbin" "/usr/bin" "/usr/lib/emacs/24.3/x86_64-unknown-linux-gnu" "/home/mminutoli/projects/llvm/root/bin")))
 '(fci-rule-color "#383838")
 '(flycheck-verilog-verilator-executable "/usr/bin/verilator_bin")
 '(font-latex-fontify-script nil)
 '(foreground-color nil)
 '(global-flycheck-mode t nil
                        (flycheck))
 '(global-whitespace-mode nil)
 '(global-whitespace-newline-mode nil)
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initsplit-customizations-alist
   (quote
    (("\\`\\(org-\\)" "org-settings.el" nil nil)
     ("\\`\\(gnus\\|nn\\|message\\|mail\\|mm-\\|mml2015\\|smtp\\|send-mail\\|check-mail\\|spam\\|sc-\\)" "gnus-settings.el" nil nil)
     ("\\`\\(safe-local-variable-values\\|safe-local-eval-forms\\)" "safe-local-variable-values.el" t t))))
 '(initsplit-pretty-print t)
 '(ispell-program-name "aspell")
 '(menu-bar-mode nil)
 '(scroll-bar-mode nil)
 '(semanticdb-default-save-directory "~/.emacs.d/data/semanticdb")
 '(show-paren-mode t)
 '(srecode-map-save-file "~/.emacs.d/data/srecode-map.el")
 '(tool-bar-mode nil)
 '(tramp-persistency-file-name "/home/mminutoli/.emacs.d/data/tramp")
 '(transient-mark-mode nil)
 '(truncate-partial-width-windows t)
 '(uniquify-buffer-name-style
   (quote forward)
   nil
   (uniquify))
 '(user-full-name "Marco Minutoli")
 '(user-mail-address "mminutoli@gmail.com")
 '(vc-annotate-background "#2B2B2B")
 '(vc-annotate-color-map
   (quote
    ((20 . "#BC8383")
     (40 . "#CC9393")
     (60 . "#DFAF8F")
     (80 . "#D0BF8F")
     (100 . "#E0CF9F")
     (120 . "#F0DFAF")
     (140 . "#5F7F5F")
     (160 . "#7F9F7F")
     (180 . "#8FB28F")
     (200 . "#9FC59F")
     (220 . "#AFD8AF")
     (240 . "#BFEBBF")
     (260 . "#93E0E3")
     (280 . "#6CA0A3")
     (300 . "#7CB8BB")
     (320 . "#8CD0D3")
     (340 . "#94BFF3")
     (360 . "#DC8CC3"))))
 '(vc-annotate-very-old-color "#DC8CC3")
 '(vc-handled-backends
   (quote
    (Git RCS CVS SVN SCCS Bzr Hg Mtn Arch)))
 '(verilog-auto-arg-sort t)
 '(verilog-case-fold nil)
 '(yas-prompt-functions
   (quote
    (yas-ido-prompt yas-no-prompt))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default
    ((t
      (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 80 :width normal :foundry "adobe" :family "Source Code Pro")))))
