;; -*- lexical-binding: t; -*-

(defconst backups-dir
  (concat emacs-cache "backups")
  "directory for emacs to store backup files")

(mkdir-ifnot backups-dir)

(setopt backup-directory-alist `(("." . ,backups-dir)))
(setopt kept-old-versions 5
        kept-new-versions 5
        delete-old-versions t)

(mkdir-ifnot (concat emacs-cache "auto-save"))
(setopt auto-save-list-file-prefix
  (concat emacs-cache "auto-save/save-"))

(setopt auto-save-default nil)

(when (display-graphic-p)               ;; make right-click more sensible
  (context-menu-mode t))

(setopt indent-tabs-mode nil)           ;; use spaces instead of tabs
(setopt tab-width 4)                    ;; use 4 space indentation

(setopt blink-cursor-mode nil)          ;; dont blink cursor
(setopt pixel-scroll-precision-mode t)  ;; smoother scrolling

(setopt display-line-numbers-width 3)   ;; ensure showing at least 3 digits to reduce motion when scrolling past 100 lines

(setopt enable-recursive-minibuffers t) ;; minibuffer-ception
(setopt minibuffer-prompt-properties
  '(read-only t cursor-intangible t face minibuffer-prompt))

(setopt column-number-mode t)           ;; show current column

(setopt show-trailing-whitespace nil)   ;; don't show trailing whitespace by default

(setopt truncate-lines t)               ;; truncate lines by default

(setopt find-file-visit-truename nil)   ;; treat symlinks as if they were normal files
(setopt vc-follow-symlinks nil)

(require 'autorevert)                   ;; auto-revert setup
(setopt auto-revert-verbose nil)
(global-auto-revert-mode t)

(require 'savehist)
(setopt savehist-file (concat emacs-cache "savehist"))
(savehist-mode t)

(require 'recentf)
(setopt recentf-save-file (concat emacs-cache "recentf"))
(recentf-mode t)

(require 'time)
(setopt display-time-default-load-average nil)
(setopt display-time-format "%I:%M %p")
(display-time-mode t)

(setopt tramp-persistency-file-name (concat emacs-cache "tramp"))

(mkdir-ifnot (concat emacs-cache "transient"))
(setopt transient-levels-file (concat emacs-cache "transient/levels")
        transient-values-file (concat emacs-cache "transient/values")
        transient-history-file (concat emacs-cache "transient/history"))

(provide 'basic-setup)