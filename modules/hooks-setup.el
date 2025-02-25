;; -*- lexical-binding: t; -*-

(add-hook-list #'display-line-numbers-mode
  '(prog-mode-hook
    emacs-lisp-mode-hook
    conf-mode-hook
    toml-ts-mode-hook
    text-mode-hook))

(add-hook-list #'highlight-defined-mode
 '(prog-mode-hook
   help-mode-hook
   conf-mode-hook))

(add-hook-list #'highlight-quoted-mode
 '(prog-mode-hook
   conf-mode-hook))

(add-hook-list #'highlight-numbers-mode
 '(prog-mode-hook
   text-mode-hook
   help-mode-hook))

(add-hook-list #'rainbow-delimiters-mode
 '(prog-mode-hook
   conf-mode-hook))

(add-hook-list #'evil-cleverparens-mode
 '(emacs-lisp-mode-hook
   lisp-mode-hook
   scheme-mode-hook))

(advice-add 'colorful-add-color-names :override #'ignore)
(add-hook-list #'colorful-mode
  '(prog-mode-hook
    conf-mode-hook
    toml-ts-mode-hook
    text-mode-hook
    org-mode-hook))

(provide 'hooks-setup)