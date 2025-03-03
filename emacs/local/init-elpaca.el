;; -*- lexical-binding: t; -*-

(setq-local elpa "GNU ELPA")
(setq-local nongnu "NonGNU ELPA")
(setq-local melpa "MELPA")

;;
;; NOTE: nerd icons
;;
(elpaca (nerd-icons
  :source melpa
  :autoloads t
  :package "nerd-icons"
  :main "nerd-icons.el"))

(elpaca (nerd-icons-dired
  :source melpa
  :autoloads t
  :package "nerd-icons-dired"
  :main "nerd-icons-dired.el"))

(elpaca (nerd-icons-ibuffer
  :source melpa
  :autoloads t
  :package "nerd-icons-ibuffer"
  :main "nerd-icons-ibuffer.el"))

(elpaca (nerd-icons-corfu
  :source melpa
  :autoloads t
  :package "nerd-icons-corfu"
  :main "nerd-icons-corfu.el"))

;;
;; NOTE: themes
;;
(elpaca (doom-themes
  :source melpa
  :autoloads t
  :package "doom-themes"
  :main "doom-themes.el"))

(elpaca (one-themes
  :source melpa
  :autoloads t
  :package "one-themes"
  :main "one-themes.el"))

(elpaca (catppuccin-theme
  :source melpa
  :autoloads t
  :package "catppuccin-theme"
  :main "catppuccin-theme.el"))

(elpaca (kaolin-themes
  :source melpa
  :autoloads t
  :package "kaolin-themes"
  :main "kaolin-themes.el"))

;;
;; NOTE: ui enhancements
;;
(elpaca (posframe
  :source elpa
  :autoloads t
  :package "posframe"
  :main "posframe.el"))

(elpaca (vertico
  :source elpa
  :autoloads t
  :package "vertico"
  :main "vertico.el"))

(elpaca (vertico-posframe
  :source elpa
  :autoloads t
  :package "vertico-posframe"
  :main "vertico-posframe.el"))

(elpaca (eat
  :source nongnu
  :autoloads t
  :package "eat"
  :main "eat.el"))

(elpaca (doom-modeline
  :source melpa
  :autoloads t
  :package "doom-modeline"
  :main "doom-modeline.el"))

(elpaca (page-break-lines
  :source melpa
  :autoloads t
  :package "page-break-lines"
  :main "page-break-lines.el"))

(elpaca (dashboard
  :source melpa
  :autoloads t
  :package "dashboard"
  :main "dashboard.el"))

(elpaca (dired-sidebar
  :source melpa
  :autoloads t
  :package "dired-sidebar"
  :main "dired-sidebar.el"))

(elpaca (ligature
  :source melpa
  :autoloads t
  :package "ligature"
  :main "ligature.el"))

(elpaca (transient
  :source elpa	 
  :autoloads t
  :package "transient"))

(elpaca (magit
  :source nongnu
  :autoloads t
  :package "magit"))

(elpaca (general
  :source melpa
  :autoloads t
  :package "general"
  :main "general.el"))

(elpaca (hydra
  :source elpa
  :autoloads t
  :package "hydra"
  :main "hydra.el"))

(elpaca (lv
  :source elpa
  :autoloads t
  :package "lv"
  :main "lv.el"))

(elpaca (consult
  :source elpa
  :autoloads t
  :package "consult"
  :main "consult.el"))

;;
;; NOTE: editor enhancements
;;
(elpaca (corfu
  :source elpa
  :autoloads t
  :package "corfu"
  :main "corfu.el"))

(elpaca (cape
  :source elpa
  :autoloads t
  :package "cape"
  :main "cape.el"))

(elpaca (colorful-mode
  :source elpa
  :autoloads t
  :package "colorful-mode"
  :main "colorful-mode.el"))

(elpaca (centered-cursor-mode
  :source melpa
  :autoloads t
  :package "centered-cursor-mode"
  :main "centered-cursor-mode.el"))

(elpaca (hl-todo
  :source melpa
  :autoloads t
  :package "hl-todo"
  :main "hl-todo.el"))

(elpaca (paredit
  :source nongnu
  :autoloads t
  :package "paredit"
  :main "paredit.el"))

(elpaca (smartparens
  :source nongnu
  :autoloads t
  :package "smartparens"
  :main "smartparens.el"))

(elpaca (evil
  :source nongnu
  :autoloads t
  :package "evil"
  :main "evil.el"))

(elpaca (evil-surround
  :source nongnu
  :autoloads t
  :package "evil-surround"
  :main "evil-surround.el"))

(elpaca (evil-collection
  :source melpa
  :autoloads t
  :package "evil-collection"
  :main "evil-collection.el"))

(elpaca (rainbow-delimiters
  :source nongnu
  :autoloads t
  :package "rainbow-delimiters"
  :main "rainbow-delimiters.el"))

(elpaca (highlight-defined
  :source melpa
  :autoloads t
  :package "highlight-defined"
  :main "highlight-defined.el"))

(elpaca (highlight-quoted
  :source melpa
  :autoloads t
  :package "highlight-quoted"
  :main "highlight-quoted.el"))

(elpaca (highlight-numbers
  :source melpa
  :autoloads t
  :package "highlight-numbers"
  :main "highlight-numbers.el"))

(elpaca (undo-fu
  :source nongnu
  :autoloads t
  :package "undo-fu"
  :main "undo-fu.el"))

(elpaca (goto-chg
  :source nongnu
  :autoloads t
  :package "goto-chg"
  :main "goto-chg.el"))

(elpaca (orderless
  :source elpa
  :autoloads t
  :package "orderless"
  :main "orderless.el"))

(elpaca (marginalia
  :source elpa
  :autoloads t
  :package "marginalia"
  :main "marginalia.el"))

;;
;; NOTE: utils
;;
(elpaca (projectile
  :source nongnu
  :autoloads t
  :package "projectile"
  :main "projectile.el"))

(elpaca (sudo-edit
  :source melpa
  :autoloads t
  :package "sudo-edit"
  :main "sudo-edit.el"))

(elpaca (parent-mode
  :source melpa
  :autoloads t
  :package "parent-mode"
  :main "parent-mode.el"))

(elpaca (tramp
  :source elpa
  :autoloads t
  :package "tramp"
  :main "tramp.el"))

;; NOTE: generic dep libs
(elpaca (async
  :source elpa
  :autoloads t
  :package "async"
  :main "async.el"))

(elpaca (dash
  :source elpa
  :autoloads t
  :package "dash"
  :main "dash.el"))

(elpaca (llama
  :source nongnu
  :autoloads t
  :package "llama"
  :main "llama.el"))

(elpaca (annalist
  :source melpa
  :autoloads t
  :package "annalist"
  :main "annalist.el"))

(elpaca (f
  :source melpa
  :autoloads t
  :package "f"
  :main "f.el"))

(elpaca (s
  :source melpa
  :autoloads t
  :package "s"
  :main "s.el"))

(elpaca (dired-hacks-utils
  :source melpa
  :autoloads t
  :package "dired-hacks-utils"
  :main "dired-hacks-utils.el"))

(elpaca (autothemer
  :source nongnu
  :autoloads t
  :package "autothemer"
  :main "autothemer.el"))

;;
;; NOTE: language modes
;;
(elpaca (markdown-mode
  :source nongnu
  :autoloads t
  :package "markdown-mode"
  :main "markdown-mode.el"))

(elpaca (ini-mode
  :source melpa
  :autoloads t
  :package "ini-mode"
  :main "ini-mode.el"))

(elpaca (hyprlang-ts-mode
  :source melpa
  :autoloads t
  :package "hyprlang-ts-mode"
  :main "hyprlang-ts-mode.el"))

(elpaca (just-ts-mode
  :source melpa
  :autoloads t
  :package "just-ts-mode"
  :main "just-ts-mode.el"))

(elpaca (nix-ts-mode
  :source melpa
  :autoloads t
  :package "nix-ts-mode"
  :main "nix-ts-mode.el"))

(elpaca (fish-mode
  :source melpa
  :autoloads t
  :package "fish-mode"
  :main "fish-mode.el"))

(elpaca (zig-ts-mode
  :source melpa
  :autoloads t
  :package "zig-ts-mode"
  :main "zig-ts-mode.el"))

(elpaca (v-mode
  :source melpa
  :autoloads t
  :package "v-mode"
  :main "v-mode.el"))

;;
;; NOTE: org mode
;;
  
(elpaca (toc-org
  :source nongnu
  :autoloads t
  :package "toc-org"
  :main "toc-org.el"))

(elpaca (org-modern
  :source elpa
  :autoloads t
  :package "org-modern"
  :main "org-modern.el"))

;; 
;; NOTE: END
;;
(provide 'init-elpaca)
