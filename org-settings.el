(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-compact-blocks nil)
 '(org-agenda-custom-commands
   (quote
    (("n" "Agenda and all TODO's"
      ((agenda "" nil)
       (alltodo "" nil))
      nil)
     (" " "Agenda"
      ((agenda "" nil)
       (tags "REFILE"
             ((org-agenda-overriding-header "Tasks to Refile")))
       (tags-todo "-REFILE/NEXT!"
                  ((org-agenda-overriding-header "Next Tasks")))
       (tags-todo "-REFILE/TODO!"
                  ((org-agenda-overriding-header "New Tasks"))))
      nil))))
 '(org-agenda-files
   (quote
    ("~/org" "~/org/polimi")))
 '(org-agenda-sorting-strategy
   (quote
    ((agenda habit-down time-up effort-up category-keep)
     (todo category-up effort-up)
     (tags category-up effort-up)
     (search category-up))))
 '(org-agenda-span
   (quote day))
 '(org-agenda-sticky t)
 '(org-capture-templates
   (quote
    (("t" "todo" entry
      (file "~/org/refile.org")
      "* TODO %?
  %U
  %a
" :clock-in t :clock-resume t)
     ("r" "respond" entry
      (file "~/org/refile.org")
      "* NEXT Respond to %:from on %:subject
  SCHEDULED:%t
  %U
  %a
" :immediate-finish t :clock-in t :clock-resume t)
     ("m" "meeting" entry
      (file "~/org/refile.org")
      "* MEETING with %? :MEETING:
  %U" :clock-in t :clock-resume t)
     ("n" "note" entry
      (file "~/org/refile.org")
      "* %? :NOTE:
  %U
  %a
" :clock-in t :clock-resume t))))
 '(org-columns-default-format "%40ITEM(Task) %17Effort(Estimated Effort){:} %CLOCKSUM")
 '(org-completion-use-ido t)
 '(org-default-notes-file "~/org/refile.org")
 '(org-directory "/home/mminutoli/org")
 '(org-global-properties
   (quote
    (("Effort_ALL" . "0 0:10 0:30 1:00 2:00 3:00 4:00 5:00 6:00 7:00"))))
 '(org-refile-allow-creating-parent-nodes
   (quote confirm))
 '(org-refile-targets
   (quote
    ((org-agenda-files :maxlevel . 9))))
 '(org-refile-use-outline-path
   (quote file))
 '(org-todo-keyword-faces
   (quote
    (quote
     (("TODO" :foreground "red" :weight bold)
      ("NEXT" :foreground "blue" :weight bold)
      ("DONE" :foreground "forest green" :weight bold)
      ("CANCELLED" :foreground "forest green" :weight bold)
      ("MEETING" :foreground "forest green" :weight bold)))))
 '(org-todo-keywords
   (quote
    ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
     (sequence "|" "CANCELLED(c@/!)" "MEETING")))))
