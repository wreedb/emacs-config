;; -*- lexical-binding: t; -*-

(defconst emacs/tmp
  (expand-file-name (format "emacs-%d" (user-uid)) temporary-file-directory)
  "temporary directory for emacs files")

;; use /tmp for backup and autosave
(setq backup-directory-alist
  `((".*" . ,emacs/tmp)))
(setq auto-save-file-name-transforms              ;; use /tmp for auto-save files
  `((".*" ,emacs/tmp t)))
(setq auto-save-list-file-prefix emacs/tmp)

;; list of needed directories
(setq-local needed-dirs
  (list "local" "assets" "cache" "cache/transient" "cache/projectile"))

;; create the needed-dirs if they aren't there
(dolist (dir needed-dirs)
  (when (not (file-exists-p (concat user-emacs-directory dir)))
    (mkdir (concat user-emacs-directory dir) t)))

(setq native-compile-target-directory (concat user-emacs-directory "cache/eln/"))
(startup-redirect-eln-cache native-compile-target-directory)

(setq load-prefer-newer t)
(setq package-enable-at-startup nil)

(defconst native-comp-opts
  '("-mtune=native" "-march=skylake" "-O3"))

(setq package-native-compile t
      native-comp-speed 3
      native-comp-jit-compilation t
      native-comp-async-warnings-errors-kind nil
      native-comp-compiler-options native-comp-opts
      native-comp-verbose 0
      native-comp-enable-subr-trampolines t
      native-comp-async-jobs-number 9)

(push '(background-color . "#1f1f1f") default-frame-alist)
(push '(foreground-color . "#fffaaa") default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars . nil) default-frame-alist)
(push '(horizontal-scroll-bars . nil) default-frame-alist)
(push '(font . "JetBrains Mono-14") default-frame-alist)
(tooltip-mode nil)

(setq frame-title-format '("gnu emacs: %b"))


(advice-add 'startup-echo-area-message
  :override #'(lambda () (message "loaded")))

(setq native-comp-async-report-warnings-errors 'silent)
(setq warning-minimum-level 'error)
(setq warning-minimum-log-level 'error)
(setq byte-compile-warnings '(not obsolete))
(setq warning-suppress-log-types '((comp) (bytecomp)))

(add-to-list 'load-path
  (concat user-emacs-directory "local"))

;; i hate customize with a passion
(setq custom-file
  (concat user-emacs-directory "cache/custom.el"))

(setq safe-local-variable-directories '("~/.config/emacs"))

(load-library "definitions")