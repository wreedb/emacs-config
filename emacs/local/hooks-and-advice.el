;; -*- lexical-binding: t; -*-

(with-eval-after-load 'v-mode
  (advice-add 'v-after-save-hook :override #'ignore))

(advice-add 'colorful-add-color-names :override #'ignore)

(add-hook-list #'highlight-defined-mode
 '(prog-mode-hook
   conf-mode-hook))

(add-hook-list #'highlight-quoted-mode
 '(prog-mode-hook
   conf-mode-hook))

(add-hook-list #'highlight-numbers-mode
 '(prog-mode-hook
   text-mode-hook))

(add-hook-list #'rainbow-delimiters-mode
 '(prog-mode-hook
   conf-mode-hook))

(add-hook-list #'colorful-mode
  '(prog-mode-hook
    conf-mode-hook
    toml-ts-mode-hook
    text-mode-hook
    org-mode-hook))

(provide 'hooks-and-advice)
