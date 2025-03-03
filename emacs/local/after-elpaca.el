;; -*- lexical-binding: t; -*-

;; orderless
(setq-default completion-styles '(orderless basic)
              completion-category-defaults nil
              completion-category-overrides '((file (styles partial-completion))))

;; vertico+posframe
(vertico-mode t)

(setq-default vertico-posframe-parameters
              '((left-fringe . 10)
                (right-fringe . 10)))

(vertico-posframe-mode t)

(when (display-graphic-p)
  (set-face-background 'vertico-posframe-border
    (face-attribute 'region :background)))

;; corfu
(setq-default tab-always-indent 'complete
              read-extended-command-predicate #'command-completion-default-include-p
              corfu-auto t
              corfu-quit-no-match t)

(global-corfu-mode t)

;; cape
(add-hook 'completion-at-point-functions #'cape-dabbrev)
(add-hook 'completion-at-point-functions #'cape-file)
(add-hook 'completion-at-point-functions #'cape-elisp-block)

;; marginalia
(marginalia-mode t)

;; undo-fu
(keymap-global-unset "C-z")
(keymap-global-set   "C-z"   'undo-fu-only-undo)
(keymap-global-set   "C-S-z" 'undo-fu-only-redo)

;; evil
(setq evil-want-keybinding nil)
(setq-default evil-undo-system 'undo-fu)
(evil-mode t)
(global-evil-surround-mode t)
(evil-collection-init)

;; nerd-icons
(add-hook 'dired-mode-hook #'nerd-icons-dired-mode)
(add-hook 'ibuffer-mode-hook #'nerd-icons-ibuffer-mode)
(add-to-list 'corfu-margin-formatters #'nerd-icons-corfu-formatter)

;; page-break-lines
(global-page-break-lines-mode t)

;; hl-todo
(global-hl-todo-mode t)

;; org
(setq org-directory (concat user/documents-dir "org/"))
(when (not (file-exists-p org-directory))
  (mkdir org-directory t))

(setq-default org-default-notes-file (concat org-directory "notes.org")
              org-agenda-files (list org-directory)
              org-auto-align-tags t
              org-return-follows-link t
              org-confirm-babel-evaluate nil
              org-edit-src-content-indentation 0
              org-src-fontify-natively t
              org-src-preserve-indentation t)

(load-library "org")
(load-library "org-tempo")
(add-hook 'org-mode-hook #'org-modern-mode)


;; doom modeline
(setq-default doom-modeline-minor-modes nil
              doom-modeline-buffer-file-name-style 'file-name
              doom-modeline-icon t
              doom-modeline-time-icon nil
              doom-modeline-modal-modern-icon t
              doom-modeline-battery nil
              doom-modeline-env-version nil)

(doom-modeline-mode t)

(setq-default doom-themes-enable-bold t
              doom-themes-enable-italic t
              doom-gruvbox-dark-variant "hard")

;; dashboard
(setq-default initial-buffer-choice (get-buffer "*dashboard*")
              dashboard-icon-type 'nerd-icons
              dashboard-set-file-icons t
              dashboard-banner-logo-title "gnu emacs"
              dashboard-path-style 'truncate-beginning
              dashboard-path-max-length 45
              dashboard-center-content t
              dashboard-set-footer nil)

(setq-default dashboard-startup-banner
	      (list (concat emacs/assets "ascii/3d.txt")
		    (concat emacs/assets "ascii/bloody.txt")
		    (concat emacs/assets "ascii/slant.txt")))

(setq-default dashboard-items
 '((recents . 5)
   (projects . 5)))

(setq-default dashboard-item-names
 '(("Recent Files:" . "recent:")
   ("Projects:" . "projects:")))

(dashboard-setup-startup-hook)

(provide 'after-elpaca)
