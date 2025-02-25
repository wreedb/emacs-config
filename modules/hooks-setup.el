;; -*- lexical-binding: t; -*-

(defun add-hook-list (target modes)
  "Add hook HOOK to all members of list MODES"
  (let ((new-hooks modes))
    (mapc (lambda (hook) (add-hook hook target)) new-hooks)))

(add-hook-list #'display-line-numbers-mode '(prog-mode-hook emacs-lisp-mode-hook conf-mode toml-ts-mode text-mode-hook))

(add-hook-list #'highlight-defined-mode
 '(prog-mode-hook
   help-mode-hook
   conf-mode))

(add-hook-list #'highlight-quoted-mode
 '(prog-mode-hook
   conf-mode))

(add-hook-list #'highlight-numbers-mode
 '(prog-mode-hook
   text-mode-hook
   help-mode-hook))

(add-hook-list #'rainbow-delimiters-mode
 '(prog-mode-hook
   conf-mode))

(add-hook-list #'evil-cleverparens-mode
 '(emacs-lisp-mode-hook
   lisp-mode-hook
   scheme-mode))

(advice-add 'colorful-add-color-names :override #'ignore)
(add-hook-list #'colorful-mode
  '(prog-mode-hook
    conf-mode
    toml-ts-mode-hook
    text-mode-hook
    org-mode-hook))

(provide 'hooks-setup)