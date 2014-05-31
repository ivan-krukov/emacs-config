;;navigation, file backup and such

					;global history
(savehist-mode t)

					;autosave
(require 'saveplace)
(setq-default save-place t)

					;backup directory
(setq save-place-file (concat user-emacs-directory "places"))
(setq backup-directory-alist `(("." . ,(concat user-emacs-directory
					       "backups"))))

					;simpler buffer switch
(global-set-key (kbd "C-x C-b") 'switch-to-buffer)


;;ido
(ido-mode t)
					;ido switch C-tab
(global-set-key (kbd "<C-tab>") 'ido-switch-buffer)
					;tab to get next match in ido
(setq ido-cannot-complete-command (quote ido-next-match))
					;fuzzy match
(setq ido-enable-flex-matching t)


(provide 'ik-navigation)
