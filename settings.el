
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
 '(cursor-type t)
 '(custom-enabled-themes
   (quote
    (solarized-dark)))
 '(custom-file "~/.emacs.d/settings.el")
 '(custom-safe-themes
   (quote
    ("a8245b7cc985a0610d71f9852e9f2767ad1b852c2bdea6f4aadc12cce9c4d6d0" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "e4e97731f52a5237f37ceb2423cb327778c7d3af7dc831788473d4a76bcc9760" "1297a022df4228b81bc0436230f211bad168a117282c20ddcba2db8c6a200743" "31a01668c84d03862a970c471edbd377b2430868eccf5e8a9aec6831f1a0908d" "8db4b03b9ae654d4a57804286eb3e332725c84d7cdab38463cb6b97d5762ad26" default)))
 '(ede-project-directories nil)
 '(ede-project-placeholder-cache-file "~/.emacs.d/data/ede-projects.el")
 '(erc-hide-list
   (quote
    ("JOIN" "PART" "QUIT")))
 '(eshell-directory-name "~/.emacs.d/data/eshell/")
 '(fci-rule-color "#383838")
 '(flycheck-verilog-verilator-executable "/usr/bin/verilator_bin")
 '(font-latex-fontify-script nil)
 '(font-use-system-font t)
 '(foreground-color nil)
 '(frame-background-mode nil)
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
 '(srecode-map-save-file "~/.emacs.d/data/srecode-map.el")
 '(tool-bar-mode nil)
 '(tramp-persistency-file-name "/home/mminutoli/.emacs.d/data/tramp")
 '(truncate-partial-width-windows t)
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
