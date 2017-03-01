
;;(add-hook 'rust-mode-hook 'ycmd-mode)
(defun my-rust-column-length ()
  (setq-default fci-rule-column 80)
)

;; save on leaving evil mode
(add-hook 'rust-mode-hook 'my-rust-column-length)

(spacemacs/add-to-hooks 'turn-on-fci-mode '(rust-mode-hook))
