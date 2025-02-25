;; -*- lexical-binding: t; -*-

(setopt init-pkgs nil)

(load (expand-file-name "modules/definitions.el" user-emacs-directory))

(load (concat emacs-dir "modules/pkgs-setup.el"))
(load (concat emacs-dir "modules/basic-setup.el"))
(load (concat emacs-dir "modules/theme-setup.el"))
(load (concat emacs-dir "modules/font-setup.el"))
(load (concat emacs-dir "modules/icons-setup.el"))
(load (concat emacs-dir "modules/editor-setup.el"))
(load (concat emacs-dir "modules/ui-setup.el"))
(load (concat emacs-dir "modules/org-setup.el"))
(load (concat emacs-dir "modules/languages-setup.el"))
(load (concat emacs-dir "modules/treesitter-setup.el"))
(load (concat emacs-dir "modules/lsp-setup.el"))
(load (concat emacs-dir "modules/hooks-setup.el"))
(load (concat emacs-dir "modules/dashboard-setup.el"))
(load (concat emacs-dir "modules/keybinds-setup.el"))
(load (concat emacs-dir "modules/font-lock-setup.el"))