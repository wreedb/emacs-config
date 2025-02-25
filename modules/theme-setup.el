;; -*- lexical-binding: t; -*-

(reqwire "kaolin-themes")

(with-eval-after-load 'doom-themes
  (setopt doom-themes-enable-bold t
          doom-themes-enable-italic t
          doom-gruvbox-dark-variant "hard"))

(with-eval-after-load 'catppuccin-theme
  (setopt catppuccin-flavor 'mocha)
  (catppuccin-reload)
  (reload/font-lock))

(load-theme 'kaolin-dark t)

(provide 'theme-setup)
