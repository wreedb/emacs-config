;; -*- lexical-binding: t; -*-

(unless (file-exists-p (expand-file-name "native" user-emacs-directory))
  (mkdir (expand-file-name "native" user-emacs-directory) t))

(setopt native-compile-target-directory (expand-file-name "native" user-emacs-directory))
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

(unless (file-exists-p (expand-file-name "cache" user-emacs-directory))
  (mkdir (expand-file-name "cache" user-emacs-directory) t))

;; (startup-redirect-eln-cache
;;   (expand-file-name "cache/eln" user-emacs-directory))

(unless (file-exists-p (expand-file-name "local" user-emacs-directory))
  (mkdir (expand-file-name "local" user-emacs-directory) t))

(unless (file-exists-p (expand-file-name "modules" user-emacs-directory))
  (mkdir (expand-file-name "modules" user-emacs-directory) t))

(advice-add 'startup-echo-area-message :override #'(lambda () (message "Finished loading, welcome in.")))

(setopt tool-bar-mode nil)
(setopt menu-bar-mode nil)
(setopt tooltip-mode nil)

;; (setq native-comp-async-report-warnings-errors 'silent)
(setq warning-minimum-level 'emergency)
(setq warning-minimum-log-level 'error)
(setq byte-compile-warnings '(not obsolete))
;; (setq warning-suppress-log-types '((comp) (bytecomp)))