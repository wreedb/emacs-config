;; -*- lexical-binding: t; -*-

(req 'nerd-icons)

;; (req 'nerd-icons-dired)
(req 'nerd-icons-ibuffer)
(req 'nerd-icons-corfu)
(req 'nerd-icons-ivy-rich)

(add-hook 'dired-mode-hook #'nerd-icons-dired-mode)
(add-hook 'ibuffer-mode-hook #'nerd-icons-ibuffer-mode)

(with-eval-after-load 'corfu
  (add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter))

(nerd-icons-ivy-rich-mode t)
(ivy-rich-mode t)

(provide 'icons-setup)
