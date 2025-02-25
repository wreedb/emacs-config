;; -*- lexical-binding: t; -*-

(reqwire "dashboard")

;; (defun make-bullshit-phrase ()
;;   "Return a string of tech-bro nonsense"
;;   (substring (shell-command-to-string "bullshit") 0 -1))

;; (setq-local bullshit (make-bullshit-phrase))

(setopt initial-buffer-choice (lambda () (get-buffer-create dashboard-buffer-name)))

(setopt dashboard-display-icons-p t)
(setopt dashboard-icon-type 'nerd-icons)
;; (setopt dashboard-set-heading-icons t)
(setopt dashboard-set-file-icons t)
;; (setopt dashboard-banner-logo-title bullshit)

(setopt dashboard-startup-banner
  (expand-file-name "assets/emacs.txt" emacs-dir))
;;        (expand-file-name "assets/gnu_color.png" emacs-dir))

(setopt dashboard-center-content t
        dashboard-vertically-center-content t)

(setopt dashboard-path-style 'truncate-beginning
        dashboard-path-max-length 45)

(setopt dashboard-items '((recents . 5)))

(dashboard-modify-heading-icons
 '((recents . "nf-fa-file_text")))

(dashboard-setup-startup-hook)

(provide 'dashboard-setup)
