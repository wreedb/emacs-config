;; -*- lexical-binding: t; -*-

(defconst home-dir
  (getenv "HOME")
  "HOME ~/")

(defconst emacs-dir
  (format "%s" user-emacs-directory)
  "The emacs configuration directory")

(defconst emacs-cache
  (expand-file-name "cache" emacs-dir)
  "Cache directory inside emacs dir")

(defun req (name)
  "Require file/library NAME and print a message about it"
  (require name)
  (message "[emacs] *>>> loaded: %s" name))

(defun loadf (file)
  "Load file FILE and print a message about it"
  (when (file-exists-p file)
    (load file)
    (message "[emacs] *>>> file loaded: %s" (file-name-base file))))

(defun mkdir-ifnot (dir)
  "Create directory DIR if not already created"
  (unless (file-exists-p dir)
    (mkdir dir)
    (message "[emacs] *>>> created dir: %s" dir)))

(setq custom-file (expand-file-name "custom.el" emacs-cache))

(set-face-attribute 'default nil
		    :family "JetBrains Mono"
		    :height 140)

(setq load-path (cons (expand-file-name "modules" emacs-dir) load-path))
(req 'variables-setup)   ; common variables to use
(req 'pkgs-setup)        ; package installs
(req 'theme-setup)       ; theme configuration
(req 'font-setup)        ; font settings
(req 'basic-setup)       ; basic emacs settings
(req 'icons-setup)       ; nerd icons configuration
(req 'editor-setup)      ; editor packages and settings
(req 'ui-setup)          ; inteface packages and settings
(req 'org-setup)         ; org-mode settings
(req 'languages-setup)   ; programming lang modes
(req 'treesitter-setup)  ; treesit parsers
(req 'lsp-setup)         ; eglot lsp settings
(req 'hooks-setup)       ; various mode hooks
(req 'dashboard-setup)   ; startup dashboard configuration
(req 'keybinds-setup)    ; keybindings
(req 'font-lock-setup)   ; font-lock modifications