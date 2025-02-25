;; -*- lexical-binding: t; -*-

(require 'font-lock)
(set-face-attribute 'help-key-binding nil
                    :background "unspecified"
                    :foreground "unspecified"
                    :slant 'italic
                    :weight 'bold
                    :box nil)

(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-comment-delimiter-face nil :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
(set-face-attribute 'font-lock-builtin-face nil :weight 'medium)

(global-font-lock-mode t)
(provide 'font-lock-setup)
