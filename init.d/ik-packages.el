
;;List and install packages as required
;; (setq-default package-list '(ace-jump-mode auto-complete-c-headers auto-complete expand-region git-gutter-fringe fringe-helper git-gutter ido-vertical-mode leuven-theme magit git-rebase-mode git-commit-mode monokai-theme org popup smart-mode-line dash tronesque-theme twilight-bright-theme yasnippet iedit))

(setq-default package-list '(
							 auto-complete
							 ace-jump-mode
							 expand-region
							 fringe-helper
							 git-gutter
							 git-gutter-fringe
							 ido-vertical-mode
							 monokai-theme
							 solarized-theme
							 popup
							 smart-mode-line
							 dash
							 yasnippet
							 clojure-mode
							 multiple-cursors
							 markdown-mode
							 ))

(require 'package)
					; list the repositories containing them
(add-to-list 'package-archives
             '("melpa" . "http://melpa.org/packages/") t)								 
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
