;; -*- lexical-binding: t; -*-

(defconst home-dir
  (concat (getenv "HOME") "/")
  "home (~) directory")

(defconst emacs-dir
  (format "%s" user-emacs-directory)
  "Emacs config directory")

(defconst emacs-cache
  (concat emacs-dir "cache/")
  "Emacs config subdirectory for cached files")

(defconst emacs-modules
  (concat emacs-dir "modules/")
  "Directory for modular Emacs configurations")

(defconst emacs-local
  (concat emacs-dir "local/")
  "Directory for locally installed elisp files")

(defconst emacs-assets
  (concat emacs-dir "assets/")
  "Directory to store images and other files for use in configuration")

(defconst xdg/config-home
  (concat home-dir ".config/")
  "~/.config XDG directory")

(defconst xdg/cache-home
  (concat home-dir ".cache/")
  "~/.cache XDG directory")

(defconst xdg/data-home
  (concat home-dir ".local/share/")
  "~/.local/share XDG directory")

(defconst xdg/state-home
  (concat home-dir ".local/state/")
  "~/.local/state XDG directory")

(defconst xdg/bin-home
  (concat home-dir ".local/bin/")
  "~/.local/bin XDG directory")

(defconst user/projects-dir
  (concat home-dir "Projects/")
  "~/Projects")

(defconst user/pictures-dir
  (concat home-dir "Pictures/")
  "~/Pictures")

(defconst user/desktop-dir
  (concat home-dir "Desktop/")
  "~/Desktop")

(defconst user/downloads-dir
  (concat home-dir "Downloads/")
  "~/Downloads")

(defconst user/documents-dir
  (concat home-dir "Documents/")
  "~/Documents")

(defconst user/videos-dir
  (concat home-dir "Videos/")
  "~/Videos")

(defconst user/music-dir
  (concat home-dir "Music/")
  "~/Music")

(defun reload/font-lock ()
  (interactive)
  (require 'font-lock-setup)
  (message "[emacs] *>>> reload: font-lock settings"))

(defun mkdir-ifnot (dir)
  "Create directory if not already created"
  (unless (file-exists-p dir)
    (mkdir dir)
    (message "[emacs] *>>> mkdir: %s" dir)))

(defun init-packages ()
  "Manually start package.el and install all packages"
  (interactive)
  (package-refresh-contents)
  (package-install-selected-packages t))

(defun add-hook-list (target modes)
  "Add HOOK to all members of list MODES"
  (let ((new-hooks modes))
    (mapc (lambda (hook) (add-hook hook target)) new-hooks)))


(defun batch-install-treesit-parsers ()
  "Install all treesitter parsers back-to-back"
  (interactive)
  (mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist)))

(provide 'definitions)