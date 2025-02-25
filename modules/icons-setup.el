;; -*- lexical-binding: t; -*-

(require 'nerd-icons)
(require 'nerd-icons-dired)
(require 'nerd-icons-ibuffer)
(require 'nerd-icons-corfu)
(require 'nerd-icons-ivy-rich)

(add-hook 'dired-mode-hook #'nerd-icons-dired-mode)
(add-hook 'ibuffer-mode-hook #'nerd-icons-ibuffer-mode)
(add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)

(nerd-icons-ivy-rich-mode t)
(ivy-rich-mode t)

(provide 'icons-setup)