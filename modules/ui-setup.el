;; -*- lexical-binding: t; -*-

(reqwire "vertico")
(vertico-mode t)

(reqwire "smex")
(setopt smex-save-file (expand-file-name "smex" emacs-cache))

(reqwire "counsel")
(reqwire "ivy")
(reqwire "ivy-rich")

(counsel-mode t)

(setopt ivy-use-virtual-buffers t)
(setopt ivy-initial-inputs-alist nil)
(ivy-mode t)

(reqwire "page-break-lines")
(global-page-break-lines-mode t)

(reqwire "projectile")
(mkdir-ifnot (expand-file-name "projectile" emacs-cache))
(setopt projectile-cache-file
  (expand-file-name "projectile/cache" emacs-cache))
(setopt projectile-known-projects-file
  (expand-file-name "projectile/known-projects.eld" emacs-cache))

(projectile-mode t)

(reqwire "telephone-line")
(setopt telephone-line-primary-left-separator    'telephone-line-identity-left)
(setopt telephone-line-secondary-left-separator  'telephone-line-identity-hollow-left)
(setopt telephone-line-primary-right-separator   'telephone-line-identity-right)
(setopt telephone-line-secondary-right-separator 'telephone-line-identity-hollow-right)
(telephone-line-mode t)

(provide 'ui-setup)