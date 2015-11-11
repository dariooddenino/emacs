;; Join the a couple of interesting channels whenever connecting to Freenode.
(setq erc-autojoin-channels-alist '(("freenode.net"
                                     "#emacs" "#clojure" "#nodejs"
                                     "#clojurescript" "#javascript")))
;; set your nickname
(setq erc-nick "doddenino")

;; share your username (optional)
(setq erc-user-full-name "Dario Oddenino")

;; auto identify
(when (file-exists-p (expand-file-name "~/.ercpass"))
  (load "~/.ercpass")
  (require 'erc-services)
  (erc-services-mode 1)
  (setq erc-prompt-for-nickserv-password nil)
  (setq erc-nickserv-passwords
        `((freenode ((erc-nick . ,erc-pass))))))