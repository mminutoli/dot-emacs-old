
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ac-clang-complete-executable "~/.emacs.d/site-lisp/ac/emacs-clang-complete-async/clang-complete")
 '(ac-comphist-file "/home/mminutoli/.emacs.d/data/ac-comphist.dat")
 '(auto-save-list-file-prefix "~/.emacs.d/data/auto-save-list/.saves-")
 '(blink-cursor-mode nil)
 '(column-number-mode t)
 '(custom-file "~/.emacs.d/settings.el")
 '(ede-project-directories nil)
 '(ede-project-placeholder-cache-file "~/.emacs.d/data/ede-projects.el")
 '(eshell-directory-name "~/.emacs.d/data/eshell/")
 '(indent-tabs-mode nil)
 '(inhibit-startup-screen t)
 '(initsplit-customizations-alist
   (quote
    (("\\`\\(org-\\)" "org-settings.el" nil nil)
     ("\\`\\(gnus\\|nn\\|message\\|mail\\|mm-\\|mml2015\\|smtp\\|send-mail\\|check-mail\\|spam\\|sc-\\)" "gnus-settings.el" nil nil))))
 '(initsplit-pretty-print t)
 '(menu-bar-mode nil)
 '(org2blog/wp-blog-alist
   (quote
    (("bithatbite" :url "http://bithatbite.wordpress.com/xmlrpc.php" :username "nvmind"))))
 '(safe-local-variable-values
   (quote
    ((eval ac-clang-update-cmdlineargs)
     (update-flags
      (ac-clang-update-cmdlineargs))
     (update-flags ac-clang-update-cmdlineargs)
     (nil ac-clang-update-cmdlineargs)
     (ac-clang-cflags "-I/home/mminutoli/projects/llvm/src/projects/code-morphing/include" "-I/home/mminutoli/projects/llvm/src/include")
     (ac-clang-cflags "-I~/projects/llvm/src/projects/code-morphing/include" "-I~/projects/llvm/src/include"))))
 '(scroll-bar-mode nil)
 '(semanticdb-default-save-directory "~/.emacs.d/data/semanticdb")
 '(show-paren-mode t)
 '(srecode-map-save-file "~/.emacs.d/data/srecode-map.el")
 '(tool-bar-mode nil)
 '(tramp-persistency-file-name "/home/mminutoli/.emacs.d/data/tramp")
 '(transient-mark-mode nil)
 '(uniquify-buffer-name-style
   (quote forward)
   nil
   (uniquify))
 '(user-mail-address "mminutoli@gmail.com")
 '(vc-handled-backends
   (quote
    (Git RCS CVS SVN SCCS Bzr Hg Mtn Arch))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor
   ((t
     (:background "black")))))
