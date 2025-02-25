;; -*- lexical-binding: t; -*-

(setopt package-user-dir (expand-file-name "packages" emacs-dir))
(setopt package-gnupghome-dir (expand-file-name "packages/gnupghome" emacs-dir))
(setopt package-native-compile t)

(setq package-archives
 '(("gnu"    . "https://elpa.gnu.org/packages/")
   ("nongnu" . "https://elpa.nongnu.org/nongnu/")
   ("melpa"  . "https://melpa.org/packages/")))

(req 'package)
(package-initialize)
(package-refresh-contents t)

(setopt package-selected-packages
        '(async
          autothemer
          eat
          ligature
          cape
          catppuccin-theme
          consult
          magit 
          dired-sidebar
          general
          centered-cursor-mode
          colorful-mode
          corfu
          org-modern
          toc-org
          dash
          dashboard
          diminish
          doom-themes
          eros
          evil
          evil-collection
          evil-surround
          evil-cleverparens
          highlight-defined
          highlight-numbers
          highlight-quoted
          hydra
          ipretty
          kaolin-themes
          nerd-icons
          nerd-icons-corfu
          nerd-icons-dired
          nerd-icons-ibuffer
          one-themes
          orderless
          page-break-lines
          parent-mode
          projectile
          rainbow-delimiters
          suggest
          smex 
          telephone-line
          undo-fu
          vertico
          counsel
          ivy
          ivy-rich
          nerd-icons-ivy-rich
          v-mode
          fish-mode
          nix-ts-mode
          zig-ts-mode
          just-ts-mode
          markdown-mode
          hyprlang-ts-mode))

(package-install-selected-packages t)

(provide 'pkgs-setup)
