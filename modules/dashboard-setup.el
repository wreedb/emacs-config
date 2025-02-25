;; -*- lexical-binding: t; -*-

(require 'dashboard)

;; (defun make-bullshit-phrase ()
;;   "Return a string of tech-bro nonsense"
;;   (substring (shell-command-to-string "bullshit") 0 -1))

;; (setq-local bullshit (make-bullshit-phrase))

(setopt initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name)))

(setopt dashboard-display-icons-p t)
(setopt dashboard-icon-type 'nerd-icons)
(setopt dashboard-set-file-icons t)

(setopt dashboard-startup-banner
  (concat emacs-assets "emacs.txt"))

(setopt dashboard-center-content t
        dashboard-vertically-center-content t)

(setopt dashboard-path-style 'truncate-beginning
        dashboard-path-max-length 45)

(setopt dashboard-items '((recents . 5)))

(dashboard-modify-heading-icons
 '((recents . "nf-fa-file_text")))

(dashboard-setup-startup-hook)

(provide 'dashboard-setup)
