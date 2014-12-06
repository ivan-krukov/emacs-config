;;provide several convenience functions
;;The following definitions are here since they do not fit in any other category

					;start in server mode - can connect new clients as I go
(server-mode t)

										;git
(require 'git-gutter-fringe)
(setq git-gutter-fr:side 'right-fringe)
(global-git-gutter-mode t)

										;linum
;; (global-linum-mode t)

										;reload things auotmatically
(global-auto-revert-mode t)

										;use web-mode insted of html
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
					;speedbar
;(setq speedbar-show-unknown-files t)

										;perl
;; (defalias 'perl-mode 'cperl-mode)
;(autoload 'perltidy "perltidy-mode" nil t)
;(autoload 'perltidy-mode "perltidy-mode" nil t)

;; (add-hook 'perl-mode-hook 'perltidy-mode)

(provide 'ik-niceties)
