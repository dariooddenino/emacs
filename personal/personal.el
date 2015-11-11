(prelude-require-packages '(emmet-mode git-gutter nodejs-repl tern tern-auto-complete))
(setq projectile-use-git-grep "T")
(require 'nodejs-repl)
(global-git-gutter-mode +1)

;; run a few shells.
(shell "*shell5*")
(shell "*shell6*")
(shell "*shell7*")
(shell "*shell8*")

; C-5, 6, 7 to switch to shells
(global-set-key [(control \5)]
  (lambda () (interactive) (switch-to-buffer "*shell5*")))
(global-set-key [(control \6)]
  (lambda () (interactive) (switch-to-buffer "*shell6*")))
(global-set-key [(control \7)]
  (lambda () (interactive) (switch-to-buffer "*shell7*")))
(global-set-key [(control \8)]
  (lambda () (interactive) (switch-to-buffer "*shell8*")))

(global-set-key (kbd "C-x t") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x y") 'git-gutter:next-hunk)
