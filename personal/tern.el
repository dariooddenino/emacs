(add-hook 'js2-mode-hook (lambda () (tern-mode t)))
(setq tern-command (cons (executable-find "tern") '()))
(eval-after-load 'tern
  '(progn
    (require 'tern-auto-complete)
    (tern-ac-setup)))