(prelude-require-packages '(emmet-mode git-gutter nodejs-repl tern tern-auto-complete))
(setq projectile-use-git-grep "T")
(require 'nodejs-repl)
(global-git-gutter-mode +1)

(global-set-key (kbd "C-x t") 'git-gutter:previous-hunk)
(global-set-key (kbd "C-x y") 'git-gutter:next-hunk)
