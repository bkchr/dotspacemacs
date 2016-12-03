
;;; c++ mode settings
;;; http://stackoverflow.com/a/663636/1531656
;;; http://stackoverflow.com/a/22711444/1531656
(defun my-c++-mode-hook ()
  (setq c-basic-offset 2)
  (setq indent-tabs-mode nil)
  (c-set-offset 'innamespace [2])
  (c-set-offset 'substatement-open 0)
  ;; Show 80-column marker
  (define-globalized-minor-mode global-fci-mode fci-mode (lambda () (fci-mode 1)))
  (global-fci-mode 1)
  (global-hl-line-mode -1) ; Disable current line highlight
  (global-linum-mode)) ; Show line numbers by default
  )
(add-hook 'c++-mode-hook 'my-c++-mode-hook)

(defun my-c-mode-hook ()
  (setq c-basic-offset 2)
  (setq indent-tabs-mode nil)
  (c-set-offset 'substatement-open 0)
  )
(add-hook 'c-mode-hook 'my-c-mode-hook)

(add-to-list 'auto-mode-alist '("\\.cl\\'" . c-mode))

(setq company-idle-delay 0)
(define-key c-mode-map [(tab)] 'company-complete)
(define-key c++-mode-map [(tab)] 'company-complete)

(require 'semantic/bovine/gcc)
(setq cmake-ide-flags-c++ (append '("-std=c++11")
                           (mapcar (lambda (path) (concat "-I" path)) (semantic-gcc-get-include-paths "c++"))))
(setq cmake-ide-flags-c (append (mapcar (lambda (path) (concat "-I" path)) (semantic-gcc-get-include-paths "c"))))
