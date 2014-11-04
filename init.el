;;Ivan Kryukov
;;An extended config setup for emacs

;;Add ./init.d to script path
(setq dotfiles-dir (file-name-directory
                    (or (buffer-file-name) load-file-name)))
(add-to-list 'load-path (concat dotfiles-dir "/init.d"))

										;load standalone cedet
;;(load-file (concat dotfiles-dir "/cedet/cedet-devel-load.el"))
										;tag folding from contrib
;;(load-file (concat dotfiles-dir "/cedet/contrib/semantic-tag-folding.el"))
										;custom config
(require 'ik-packages)
(require 'ik-editing)
(require 'ik-navigation)
(require 'ik-gui)

(require 'ik-niceties)
(require 'sr-speedbar)
(require 'buffer-move)
(require 'semantic-tag-folding)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-term-color-vector [unspecified "#081724" "#ff694d" "#68f6cb" "#fffe4e" "#bad6e2" "#afc0fd" "#d2f1ff" "#d3f9ee"] t)
 '(custom-enabled-themes (quote (leuven)))
 '(custom-safe-themes (quote ("cb247cf944eea968aa613a5c40f4cb79f4c05503591cf33e5b4224394dd57e94" "ee6081af57dd389d9c94be45d49cf75d7d737c4a78970325165c7d8cb6eb9e34" "75c9f0b0499ecdd0c856939a5de052742d85af81814e84faa666522c2bba7e85" default)))
 '(initial-frame-alist (quote ((fullscreen . maximized)))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
