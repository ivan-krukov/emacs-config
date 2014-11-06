;;provide several convenience functions
;;The following definitions are here since they do not fit in any other category

					;start in server mode - can connect new clients as I go
(server-mode t)

										;git
(global-git-gutter-mode t)
(git-gutter:linum-setup)
										;linum
(global-linum-mode t)

					;speedbar
;(setq speedbar-show-unknown-files t)

										;perl
(defalias 'perl-mode 'cperl-mode)
;(autoload 'perltidy "perltidy-mode" nil t)
;(autoload 'perltidy-mode "perltidy-mode" nil t)

;; (add-hook 'perl-mode-hook 'perltidy-mode)

(provide 'ik-niceties)
