(global-linum-mode)

(with-eval-after-load 'linum
  (linum-relative-toggle))

;; Do not paste the highlighted text when it should be replaced
(setq save-interprogram-paste-before-kill
      t)

(defun my-save-if-bufferfilename ()
  (if (buffer-file-name)
      (progn
        (save-buffer))))

;; save on leaving evil mode
(add-hook 'evil-insert-state-exit-hook 'my-save-if-bufferfilename)

;; don't yell at me about tags
(setq large-file-warning-threshold nil)
(setq dotspacemacs-large-file-size 9999999)
