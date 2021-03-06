;;Settings applying to text editing

					;common mode
;; (cua-mode t)

					;parens
(show-paren-mode t)

										;indentation
(electric-indent-mode t)


;;as per AutoIndentation on emacs wiki
(dolist (command '(yank yank-pop))
  (eval `(defadvice ,command (after indent-region activate)
		   (and (not current-prefix-arg)
				(member major-mode '(emacs-lisp-mode
									 lisp-mode
									 clojure-mode
									 scheme-mode
									 haskell-mode
									 ruby-mode
									 rspec-mode
									 python-mode
									 perl-mode
									 c-mode
									 c++-mode
									 objc-mode
									 latex-mode
									 coffee-mode
									 plain-tex-mode))
				(let ((mark-even-if-inactive transient-mark-mode))
				  (indent-region (region-beginning) (region-end) nil))))))


										;pairing
(electric-pair-mode t)

;; http://www.masteringemacs.org/article/effective-editing-movement
(setq next-line-add-newlines t)
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

										;multiple-cursors
(global-set-key (kbd "C->") 'mc/mark-next-like-this)
(global-set-key (kbd "C-<") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)
					;c header
;; (defun ik-ac-c-headers-init ()
;;   (require 'auto-complete-c-headers)
;;   (add-to-list 'ac-sources 'ac-source-c-headers))

;; (add-hook 'c++-mode-hook 'ik-ac-c-headers-init)
;; (add-hook 'c-mode-hook 'ik-ac-c-headers-init)

					;ace-jump-mode
(define-key global-map (kbd "C-c C-SPC") 'ace-jump-mode)

					;expand region
(global-set-key (kbd "C-=") 'er/expand-region)

					;indentation
(setq-default c-basic-offset 4)
(setq-default tab-width 4)
(setq-default tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60))


(defun comment-dwim-line (&optional arg)
  "Replacement for the comment-dwim command.
        If no region is selected and current line is not blank and we are not at the end of the line,
        then comment current line.
        Replaces default behaviour of comment-dwim, when it inserts comment at the end of the line."
  (interactive "*P")
  (comment-normalize-vars)
  (if (and (not (region-active-p)) (not (looking-at "[ \t]*$")))
	  (comment-or-uncomment-region (line-beginning-position) (line-end-position))
	(comment-dwim arg)))

(global-set-key "\M-;" 'comment-dwim-line)
										;; ;iedit mode
;; (require 'iedit)


;; (defun iedit-dwim (arg)
;;   "Starts iedit but uses \\[narrow-to-defun] to limit its scope."
;;   (interactive "P")
;;   (if arg
;;       (iedit-mode)
;;     (save-excursion
;;       (save-restriction
;;         (widen)
;;         ;; this function determines the scope of `iedit-start'.
;;         (if iedit-mode
;;             (iedit-done)
;;           ;; `current-word' can of course be replaced by other
;;           ;; functions.
;;           (narrow-to-defun)
;;           (iedit-start (current-word) (point-min) (point-max)))))))



;; (global-set-key (kbd "C-;") 'iedit-dwim)

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
