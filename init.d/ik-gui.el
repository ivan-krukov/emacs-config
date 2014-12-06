;;some gui settings
;;the goal of this is to provide a somewhat minimal user interface

					;start maximized
(custom-set-variables
 '(initial-frame-alist (quote ((fullscreen . maximized)))))

					;window decorations
;; (menu-bar-mode -1)
(tool-bar-mode -1)
(scroll-bar-mode -1)

										;boudnaries
;; (setq-default indicate-buffer-boundaries 'left)
;; (setq-default indicate-empty-lines t)
										;whitespace
;; (setq-default show-trailing-whitespace t)

										;symobls
(global-prettify-symbols-mode)

					;font
(add-to-list 'default-frame-alist '(font . "Liberation Mono-10"))

					;mouse settings
(mouse-wheel-mode t)
(setq-default scroll-conservatively 10000)
(setq-default scroll-step 1)
;; (setq-default hscroll-margin 0)
;; (setq-default hscroll-step 1)
(setq-default mouse-wheel-progressive-speed nil)

(global-visual-line-mode t)

					;line cursor
(setq-default cursor-type 'bar)

					;startup screen
(setq-default inhibit-startup-screen t)

					;scratch message
(setq-default initial-scratch-message (format ";;GNU EMACS %s\n;;%s" emacs-version (format-time-string "%A, %B %d \n;;%H:%M\n")))

					;y-n answers in menus
(fset 'yes-or-no-p 'y-or-n-p)

					;line truncate
(set-default 'truncate-lines t)

					;ido vertical
(ido-vertical-mode t)
(setq-default ido-vertical-define-keys 'C-n-C-p-up-down-left-right)

					;ido for M-x
(global-set-key (kbd "M-x") (lambda ()
			       (interactive)
			       (call-interactively
				(intern
				 (ido-completing-read
				  "M-x "
				  (all-completions "" obarray 'commandp))))))

										;windmove
(global-set-key (kbd "C-c <left>") 'windmove-left)
(global-set-key (kbd "C-c <right>") 'windmove-right)
(global-set-key (kbd "C-c <up>") 'windmove-up)
(global-set-key (kbd "C-c <down>") 'windmove-down)

(provide 'ik-gui)


