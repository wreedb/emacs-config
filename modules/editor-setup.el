;; -*- lexical-binding: t; -*-


(require 'editorconfig)
(editorconfig-mode t)

;; undo-fu: replacement for builtin undo system
;; note: see keybinds-setup.el for undo-fu binds
(require 'undo-fu)

;; evil-mode: VI layer
(setopt evil-want-keybinding nil) ;; needs to be set *before* evil is loaded
(require 'evil)

(setopt evil-undo-system 'undo-fu) ;; undo-fu integrates with evil-mode
(evil-mode t)

;; evil-collection: extra bindings for evil-mode
(require 'evil-collection)
(evil-collection-init)

;; evil-surround: vim-surround for evil-mode
(require 'evil-surround)
(global-evil-surround-mode t)

;; evil-cleverparens: better paren handling for lisp-style languages
;; note: see hooks-setup.el for related hooks
(require 'evil-cleverparens)

;; orderless: completion style
(require 'orderless)
(setopt completion-styles '(orderless basic))
(setopt completion-category-defaults nil)
(setopt completion-category-overrides '((file (styles partial-completion))))

;; corfu: COmpletion in Range FUnction
(require 'corfu)
(setopt tab-always-indent 'complete)
(setopt read-extended-command-predicate #'command-completion-default-include-p)
(setopt corfu-auto t)
(setopt corfu-quit-no-match t)
(global-corfu-mode t)

;; cape: completions at-point
(require 'cape)
(keymap-global-set "M-p" 'cape-prefix-map)
(add-hook 'completion-at-point-functions #'cape-dabbrev)
(add-hook 'completion-at-point-functions #'cape-file)
(add-hook 'completion-at-point-functions #'cape-elisp-block)

(require 'eros)
(add-hook 'emacs-lisp-mode-hook #'eros-mode)

(require 'ipretty)
(ipretty-mode t)

(provide 'editor-setup)