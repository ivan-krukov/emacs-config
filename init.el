;;Ivan Kryukov
;;An extended config setup for emacs

;;Add ./init.d to script path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path (concat dotfiles-dir "/init.d"))

(require 'ik-packages)
(require 'ik-editing)
(require 'ik-navigation)
(require 'ik-gui)

(require 'ik-niceties)
(require 'sr-speedbar)
(require 'buffer-move)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes (quote ("75c9f0b0499ecdd0c856939a5de052742d85af81814e84faa666522c2bba7e85" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
