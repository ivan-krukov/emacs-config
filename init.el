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

