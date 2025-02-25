;; -*- lexical-binding: t; -*-

(unless (file-exists-p (concat user-emacs-directory "native"))
  (mkdir (concat user-emacs-directory "native") t))

(setopt native-compile-target-directory (concat user-emacs-directory "native/"))
(setopt native-comp-eln-load-path
  (cons native-compile-target-directory native-comp-eln-load-path))

(setopt load-prefer-newer t)
(setopt native-comp-jit-compilation t)

(setopt native-comp-verbose 2)
(setopt native-comp-speed 3)
(setopt native-comp-compiler-options '("-mtune=native" "-flto"))

(setopt default-frame-alist
 (append
  '((vertical-scroll-bars . nil)
    (horizontal-scroll-bars . nil)
    (font . "JetBrains Mono-14"))
  default-frame-alist))

(unless (file-exists-p (concat user-emacs-directory "cache"))
  (mkdir (concat user-emacs-directory "cache") t))

(unless (file-exists-p (concat user-emacs-directory "local"))
  (mkdir (concat user-emacs-directory "local") t))

(unless (file-exists-p (concat user-emacs-directory "modules"))
  (mkdir (concat user-emacs-directory "modules") t))

(advice-add 'startup-echo-area-message
  :override #'(lambda () (message "[emacs] *>>> finished startup")))

(setopt tool-bar-mode nil)
(setopt menu-bar-mode nil)
(setopt tooltip-mode nil)

(setq native-comp-async-report-warnings-errors 'silent)
(setq warning-minimum-level 'error)
(setq warning-minimum-log-level 'error)
(setq byte-compile-warnings '(not obsolete))
(setq warning-suppress-log-types '((comp) (bytecomp)))

(setopt load-path
  (cons (concat user-emacs-directory "local/") load-path))

(setopt load-path
  (cons (concat user-emacs-directory "modules/") load-path))

(setopt custom-file
  (concat user-emacs-directory "cache/custom.el"))