(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(add-to-list 'comint-output-filter-functions 'ansi-color-process-output)

;; run a few terms.
(ansi-term "/bin/bash" "term5")
(ansi-term "/bin/bash" "term6")
(ansi-term "/bin/bash" "term7")
(ansi-term "/bin/bash" "term8")

; C-5, 6, 7 to switch to terms
(global-set-key [(control \5)]
  (lambda () (interactive) (switch-to-buffer "*term5*")))
(global-set-key [(control \6)]
  (lambda () (interactive) (switch-to-buffer "*term6*")))
(global-set-key [(control \7)]
  (lambda () (interactive) (switch-to-buffer "*term7*")))
(global-set-key [(control \8)]
  (lambda () (interactive) (switch-to-buffer "*term8*")))
