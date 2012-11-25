(when (file-exists-p "~/projects/panda/projects/panda-bambu-wishbone/Makefile.am")
  (setq cpp-tests-project
	(ede-cpp-root-project "panda-bambu-wishbone"
			      :file "~/projects/panda/projects/panda-bambu-wishbone/Makefile.am"
			      )))
(provide 'projects)
