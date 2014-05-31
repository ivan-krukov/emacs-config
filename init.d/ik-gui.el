;;some gui settings
;;the goal of this is to provide a somewhat minimal user interface

					;start maximized
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

					;window decorations
(menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode nil)

					;mouse settings
(mouse-wheel-mode t)
(setq scroll-conservatively 10000)
(setq scroll-step 1)
(setq mouse-wheel-progressive-speed nil)

					;line cursor
(setq-default cursor-type 'bar)

					;startup screen
(setq inhibit-startup-screen t)

					;scratch message
(setq initial-scratch-message (format ";;GNU EMACS %s\n;;%s" emacs-version (format-time-string "%A, %B %d \n;;%H:%M\n")))

					;y-n answers in menus
(fset 'yes-or-no-p 'y-or-n-p)

					;line truncate
(set-default 'truncate-lines t)

					;ido vertical
(ido-vertical-mode t)
(setq ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

					;ido for M-x
(global-set-key (kbd "M-x") (lambda ()
			       (interactive)
			       (call-interactively
				(intern
				 (ido-completing-read
				  "M-x "
				  (all-completions "" obarray 'commandp))))))

(provide 'ik-gui)


