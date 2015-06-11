;;; load-path.el

(defconst user-data-directory
  (expand-file-name "data/" user-emacs-directory))
(defconst user-lisp-directory
  (expand-file-name "lisp/" user-emacs-directory))
(defconst user-site-lisp-directory
  (expand-file-name "site-lisp/" user-emacs-directory))
(defconst user-settings-directory
  (expand-file-name "settings/" user-emacs-directory))
(defconst user-site-themes-directory
  (expand-file-name "themes/" user-emacs-directory))

(defun add-to-load-path (path &optional dir)
  (setq load-path
        (cons (expand-file-name path (or dir user-lisp-directory)) load-path)))

(defun add-to-themes-load-path (path &optional dir)
  (add-to-list 'custom-theme-load-path
               (expand-file-name path (or dir user-site-themes-directory))))

;; Add top-level lisp directories, in case they were not setup by the
;; environment.
(dolist (dir (nreverse
              (list user-settings-directory
                    user-lisp-directory
                    user-site-lisp-directory)))
  (dolist (entry (nreverse (directory-files-and-attributes dir nil "[^\.,\.\.]")))
    (if (cadr entry)
        (add-to-load-path (car entry) dir))))

(mapc #'add-to-load-path
      (nreverse
       (list
        user-lisp-directory
        user-site-lisp-directory
        user-settings-directory
        "site-lisp/bbdb/lisp"
        )))

(let ((cl-p load-path))
  (while cl-p
    (setcar cl-p (file-name-as-directory
                  (expand-file-name (car cl-p))))
    (setq cl-p (cdr cl-p))))

(setq load-path (delete-dups load-path))

;; Add themes to the load theme path.
(dolist (entry (nreverse (directory-files-and-attributes user-site-themes-directory)))
  (if (cadr entry)
      (add-to-themes-load-path (car entry))))

(provide 'load-path)
;;; load-path.el ends here
