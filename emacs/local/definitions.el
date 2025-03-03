;; -*- lexical-binding: t; -*-

(defconst home-dir
  (concat (getenv "HOME") "/")
  "home (~) directory")

(defconst emacs/dir
  (format "%s" user-emacs-directory)
  "~/.config/emacs")

(defconst emacs/local
  (concat emacs/dir "local/")
  "local lisp files")

(defconst emacs/cache
  (concat emacs/dir "cache/")
  "cache for emacs files")

(defconst emacs/assets
  (concat emacs/dir "assets/")
  "images and ascii files")

(defconst emacs/early-init
  (concat emacs/dir "early-init.el")
  "Emacs early init file")

(defconst emacs/init-file
  (format "%s" user-init-file)
  "Emacs init file")

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

;; NOTE: functions
(defun eval/buffer ()
  "Evaluate buffer"
  (interactive)
  (eval-buffer))

(defun open/init-file ()
  "Open 'init.el'"
  (interactive)
  (find-file user-init-file))

(defun open/early-init ()
  "Open 'early-init.el'"
  (interactive)
  (find-file emacs/early-init))

(defun kill/other-buffers ()
  "Kill all other buffers"
  (interactive)
  (mapc 'kill-buffer (delq (current-buffer) (buffer-list)))
  (message "[emacs] *>>> killed: %s" (delq (current-buffer) (buffer-list))))

(defun kill/current-buffer ()
  "kill current buffer"
  (interactive)
  (kill-buffer (current-buffer)))

(defun load/this-file ()
  "load active buffers' file"
  (interactive)
  (load-file (buffer-file-name)))

(defun reload/font ()
  (interactive)
  (load-library "fonts-and-ligatures")
  (message "[emacs] *>>> reload: font"))

(defun reload/init-file ()
  (interactive)
  (load user-init-file))

(defun reload/early-init ()
  (interactive)
  (load emacs/early-init))

(defun reload/buffer ()
  (interactive)
  (revert-buffer-quick))

(defun mkdir-ifnot (dir)
  "Create directory if not already created"
  (unless (file-exists-p dir)
    (mkdir dir)
    (message "[emacs] *>>> mkdir: %s" dir)))

(defun add-hook-list (target modes)
  "Add HOOK to all members of list MODES"
  (let ((new-hooks modes))
    (mapc (lambda (hook) (add-hook hook target)) new-hooks)))

;; tree-sitter
(defun batch-install-treesit-parsers ()
  "Install all treesitter parsers back-to-back"
  (interactive)
  (mapc #'treesit-install-language-grammar (mapcar #'car treesit-language-source-alist)))

(provide 'definitions)
