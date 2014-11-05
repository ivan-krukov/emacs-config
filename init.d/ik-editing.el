;;Settings applying to text editing

					;common mode
(cua-mode t)

					;parens
(show-paren-mode t)

					;indentation
(electric-indent-mode t)

					;which function
;; (which-function-mode t)

					;use more sensible regex-aware forward i-search
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
					;use more sensible regex-aware backward i-search
(global-set-key (kbd "C-r") 'isearch-backward-regexp)

					;avoid using the ibuffer kill - use the default - ask no question
(global-set-key (kbd "C-x k") 'kill-this-buffer)

					;simpler window switch
(global-set-key (kbd "M-o") 'other-window)

					;simpler open file (overwrites column-fill)
(global-set-key (kbd "C-x f") 'find-file)

					;autocomplete
(ac-config-default)

					;yasnippet
(yas-global-mode t)

					;c header
;; (defun ik-ac-c-headers-init ()
;;   (require 'auto-complete-c-headers)
;;   (add-to-list 'ac-sources 'ac-source-c-headers))

;; (add-hook 'c++-mode-hook 'ik-ac-c-headers-init)
;; (add-hook 'c-mode-hook 'ik-ac-c-headers-init)

					;ace-jump-mode
(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

					;expand region
(global-set-key (kbd "C-\"") 'er/expand-region)

					;indentation
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))

										;iedit mode
(setq-default iedit-mode t)

										;semantic mode for cedet
;; (semantic-mode 1)
;; (defun ik-add-semantic-to-autocomplete() 
;;   (add-to-list 'ac-sources 'ac-source-semantic))
;; (add-hook 'c-mode-common-hook 'ik-add-semantic-to-autocomplete)
;; 										;activates highlighting of local names that are the same as name of tag under cursor
;; (global-semantic-idle-local-symbol-highlight-mode 1)
;; 										;activates automatic parsing of source code in the idle time;
;; (global-semantic-idle-scheduler-mode 1)
;; 										;shows current parser state in the modeline
;; (global-semantic-show-parser-state-mode 1)

;; 										;more semantic features
;; (require 'semantic/ia)

;; (global-set-key (kbd "C-x j") 'semantic-complete-jump)

(provide 'ik-editing)
