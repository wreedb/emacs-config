;; -*- lexical-binding: t; -*-
;(load-file (expand-file-name "early-init.el" user-emacs-directory))
;(load-file (expand-file-name "init.el" user-emacs-directory))
;(load-file (expand-file-name "modules/init-elpaca.el" user-emacs-directory))
(defvar-local native-comp-opts
  '("-mtune=native" "-march=skylake" "-O3")
  "Native lisp compiler flags")

(setq native-comp-speed 3
      native-comp-compiler-options native-comp-opts
      native-comp-verbose 0
      native-comp-enable-subr-trampolines t
      native-comp-async-jobs-number 9)

;; (setq native-system (file-name-directory "/usr/local/lib/emacs/30.1/native-lisp/30.1-28eb9f30"))

;; (setq load-path (cons native-system load-path))
;; (setq load-path (cons (concat native-system "preloaded") load-path))

;(message "%s" load-path)
;(load-library "org")