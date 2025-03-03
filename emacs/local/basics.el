;; -*- lexical-binding: t; -*-

(when (display-graphic-p)                         ;; make right-click more sensible
  (context-menu-mode t))

(setq indent-tabs-mode nil)                       ;; use spaces instead of tabs
(setq tab-width 4)                                ;; 4 space indentation

(setq blink-cursor-mode nil)                      ;; dont blink cursor

(pixel-scroll-precision-mode t)

(setq display-line-numbers-width 3)               ;; ensure showing at least 3 digits to reduce motion when scrolling past 100 lines
(global-display-line-numbers-mode t)

(setq enable-recursive-minibuffers t)             ;; use a minibuffer IN the minibuffer
(setq minibuffer-prompt-properties                ;; minibuffer settings
 '(read-only t
   cursor-intangible t
   face minibuffer-prompt))

(setq dired-kill-when-opening-new-dired-buffer t) ;; make dired swallow

(column-number-mode t)                            ;; show current column
(setq show-trailing-whitespace nil)               ;; don't show trailing whitespace by default
(setq-default truncate-lines t)                   ;; truncate lines by default

(setq find-file-visit-truename nil)               ;; treat symlinks as if they were normal files
(setq vc-follow-symlinks nil)

(load-library "autorevert")                             ;; auto-revert setup
(setq auto-revert-verbose nil)                    ;; don't show messages
(global-auto-revert-mode t)

(load-library "recentf")                          ;; save minibuffer history between sessions
(setq savehist-file
  (concat emacs/cache "savehist"))                ;; move save file into cache
(savehist-mode t)

(load-library "recentf")                          ;; save recent files list between sessions
(setq recentf-save-file
  (concat emacs/cache "recentf"))                 ;; move save file into cache
(recentf-mode t)

(load-library "time")                                   ;; display time in the modeline
(setq display-time-default-load-average nil)      ;; in the format:
(setq display-time-format "%I:%M %p")             ;; HH:MM (AM/PM)
(display-time-mode t)

(setq tramp-persistency-file-name                 ;; keep tramp and transient out of the config root
  (concat emacs/cache "tramp"))

(setq transient-levels-file                       ;; why can't transient just have a
  (concat emacs/cache "transient/levels"))        ;; transient-dir variable for god sake
(setq transient-values-file
  (concat emacs/cache "transient/values"))
(setq transient-history-file
  (concat emacs/cache "transient/history"))

(defalias 'yes-or-no-p 'y-or-n-p)                 ;; Y/N instead of Yes/No prompts

(setq use-dialog-box nil)                         ;; no dialog boxes on mouse clicks
(setq confirm-kill-processes nil)                 ;; no-confirm when closing with processes like 'eat' running

(provide 'basics)
