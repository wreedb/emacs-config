;; -*- lexical-binding: t; -*-

(require 'vertico)
(vertico-mode t)

(require 'smex)
(setopt smex-save-file (concat emacs-cache "smex"))

(require 'counsel)
(require 'ivy)
(require 'ivy-rich)

(counsel-mode t)

(setopt ivy-use-virtual-buffers t)
(setopt ivy-initial-inputs-alist nil)
(ivy-mode t)

(require 'page-break-lines)
(global-page-break-lines-mode t)

(require 'projectile)
(mkdir-ifnot (concat emacs-cache "projectile/"))
(setopt projectile-cache-file (concat emacs-cache "projectile/cache"))
(setopt projectile-known-projects-file (concat emacs-cache "projectile/known-projects.eld"))

(projectile-mode t)

(require 'telephone-line)
(setopt telephone-line-primary-left-separator    'telephone-line-identity-left)
(setopt telephone-line-secondary-left-separator  'telephone-line-identity-hollow-left)
(setopt telephone-line-primary-right-separator   'telephone-line-identity-right)
(setopt telephone-line-secondary-right-separator 'telephone-line-identity-hollow-right)
(telephone-line-mode t)

(provide 'ui-setup)