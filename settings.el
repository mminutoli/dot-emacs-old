
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
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
    ("8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" default)))
 '(ede-project-directories nil)
 '(ede-project-placeholder-cache-file "~/.emacs.d/data/ede-projects.el")
 '(erc-hide-list
   (quote
    ("JOIN" "PART" "QUIT")))
 '(eshell-directory-name "~/.emacs.d/data/eshell/")
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
 '(verilog-auto-arg-sort t)
 '(verilog-case-fold nil)
 '(yas-prompt-functions
   (quote
    (yas-ido-prompt yas-no-prompt))))
