
;;List and install packages as required
(setq package-list '(ace-jump-mode auto-complete-c-headers auto-complete expand-region git-gutter-fringe fringe-helper git-gutter ido-vertical-mode leuven-theme magit git-rebase-mode git-commit-mode monokai-theme org popup smart-mode-line dash tronesque-theme twilight-bright-theme yasnippet))

					; list the repositories containing them
(setq package-archives '(("melpa" . "http://melpa.milkbox.net/packages/") ("http://elpa.gnu.org/packages/")))


					; activate all the packages (in particular autoloads)
(package-initialize)

					; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

					; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

(provide 'ik-packages)