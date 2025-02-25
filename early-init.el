;; -*- lexical-binding: t; -*-

(unless (file-exists-p (expand-file-name "cache" user-emacs-directory))
  (mkdir (expand-file-name "cache" user-emacs-directory) t))

(advice-add 'startup-echo-area-message :override #'(lambda () (message "Finished loading, welcome in.")))

(setq default-frame-alist
 (append
  '((vertical-scroll-bars . nil)
    (horizontal-scroll-bars . nil)
    (font . "JetBrains Mono-14"))
  default-frame-alist))

(startup-redirect-eln-cache
  (expand-file-name "cache/eln" user-emacs-directory))

(setopt tool-bar-mode nil)
(setopt menu-bar-mode nil)
(setopt tooltip-mode nil)

(setq native-comp-async-report-warnings-errors 'silent)
(setq warning-minimum-level 'emergency)
(setq warning-minimum-log-level 'error)
(setq byte-compile-warnings '(not obsolete))
(setq warning-suppress-log-types '((comp) (bytecomp)))
