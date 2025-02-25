;; -*- lexical-binding: t; -*-

(defconst backups-dir
  (expand-file-name "backups" emacs-cache))

(mkdir-ifnot backups-dir)

(setopt backup-directory-alist `(("." . ,backups-dir)))
(setopt kept-old-versions 5
        kept-new-versions 5
        delete-old-versions t)

(defconst auto-save-dir
  (expand-file-name "auto-save" emacs-cache))

(mkdir-ifnot auto-save-dir)
(setopt auto-save-list-file-prefix
  (expand-file-name "save-" auto-save-dir))

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

(setopt load-prefer-newer t)            ;; prefer a newer .el file over an older .elc/.eln

(req 'autorevert)                       ;; auto-revert setup
(setopt auto-revert-verbose nil)
(global-auto-revert-mode t)

(req 'savehist)
(setopt savehist-file
  (expand-file-name "savehist" emacs-cache))
(savehist-mode t)

(req 'recentf)
(setopt recentf-save-file
  (expand-file-name "recentf" emacs-cache))
(recentf-mode t)

(req 'time)
(setopt display-time-default-load-average nil)
(setopt display-time-format "%I:%M %p")
(display-time-mode t)

(with-eval-after-load 'tramp
  (setopt tramp-persistency-file-name
    (expand-file-name "tramp" emacs-cache)))

(mkdir-ifnot (expand-file-name "transient" emacs-cache))
(setopt transient-levels-file (expand-file-name "transient/levels" emacs-cache))
(setopt transient-values-file (expand-file-name "transient/values" emacs-cache))
(setopt transient-history-file (expand-file-name "transient/history" emacs-cache))

(provide 'basic-setup)
