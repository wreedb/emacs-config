;; -*- lexical-binding: t; -*-

(defconst home-dir
  (getenv "HOME")
  "home (~) directory")

(defconst emacs-dir
  (format "%s" user-emacs-directory)
  "Emacs config directory")

(defconst emacs-cache
  (expand-file-name "cache" user-emacs-directory)
  "Emacs config subdirectory for cached files")

(defconst emacs-modules
  (expand-file-name "modules" user-emacs-directory)
  "Directory for modular Emacs configurations")

(defconst emacs-local
  (expand-file-name "local" user-emacs-directory)
  "Directory for locally installed elisp files")

(defconst xdg/config-home
  (expand-file-name ".config" home-dir)
  "~/.config XDG directory")

(defconst xdg/cache-home
  (expand-file-name ".cache" home-dir)
  "~/.cache XDG directory")

(defconst xdg/data-home
  (expand-file-name ".local/share" home-dir)
  "~/.local/share XDG directory")

(defconst xdg/state-home
  (expand-file-name ".local/state" home-dir)
  "~/.local/state XDG directory")

(defconst xdg/bin-home
  (expand-file-name ".local/bin" home-dir)
  "~/.local/bin XDG directory")

(defconst user/projects-dir
  (expand-file-name "Projects" home-dir)
  "~/Projects directory")

(defconst user/pictures-dir
  (expand-file-name "Pictures" home-dir))

(setopt custom-file
  (expand-file-name "custom.el" emacs-cache))

(setopt load-path
  (cons emacs-local load-path))

(setopt load-path
  (cons emacs-modules load-path))

(defun reload/font-lock ()
  (interactive)
  (load-library "font-lock-setup.el")
  (message "[emacs] *>>> reload: font-lock settings"))

(defun reqwire (name)
  "load-library and print a message about it"
  (load-library name)
  (message "[emacs] *>>> reqwire: %s" name))

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