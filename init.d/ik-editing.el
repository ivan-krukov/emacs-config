;;Settings applying to text editing

					;common mode
(cua-mode t)

					;parens
(show-paren-mode t)

					;indentation
(electric-indent-mode t)

					;which function
(which-function-mode t)

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
(defun ik-ac-c-headers-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-source-c-headers))

(add-hook 'c++-mode-hook 'ik-ac-c-headers-init)
(add-hook 'c-mode-hool 'ik-ac-c-headers-init)

					;ace-jump-mode
(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

					;expand region
(global-set-key (kbd "C-\"") 'er/expand-region)
(provide 'ik-editing)
