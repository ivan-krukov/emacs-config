;;provide several convenience functions
;;The following definitions are here since they do not fit in any other category

					;start in server mode - can connect new clients as I go
(server-mode t)

					;git
(global-git-gutter-mode t)

					;speedbar
(setq speedbar-show-unknown-files t)
(provide 'ik-niceties)
