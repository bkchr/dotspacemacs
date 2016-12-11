(global-linum-mode)

(with-eval-after-load 'linum
    (linum-relative-toggle))

;; Do not paste the highlighted text when it should be replaced 
(setq save-interprogram-paste-before-kill t)
