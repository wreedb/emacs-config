;; -*- lexical-binding: t; -*-

(req 'which-key)
(req 'general)

;; which-key configuration
(setopt which-key-side-window-location 'bottom)
(setopt which-key-side-window-slot -10)
(setopt which-key-side-window-max-height 0.25)
(setopt which-key-allow-imprecise-window-fit t)
(setopt which-key-max-description-length 25)
(setopt which-key-max-display-columns nil)
(setopt which-key-min-display-lines 4)
(setopt which-key-idle-delay 0.6)
(which-key-mode t)

(with-eval-after-load 'undo-fu
  (keymap-global-unset "C-z")
  (keymap-global-set "C-z"   'undo-fu-only-undo)
  (keymap-global-set "C-S-z" 'undo-fu-only-redo))

(with-eval-after-load 'ivy
  (keymap-global-unset "M-x")
  (keymap-global-unset "C-x C-f")
  (keymap-global-set "C-x C-f" 'counsel-find-file)
  (keymap-global-set "C-x M-x" 'execute-extended-command)
  (keymap-global-set "M-x" 'counsel-M-x))

(with-eval-after-load 'projectile
  (keymap-global-set "C-c p" 'projectile-command-map))

(add-hook 'dashboard-mode-hook
  (lambda () (keymap-local-set "C-c r" 'dashboard-refresh-buffer)))

;; adjusting text scale
(keymap-global-set "C-+" 'text-scale-increase)
(keymap-global-set "C--" 'text-scale-decrease)

;; make it work nicely with evil mode
(general-evil-setup)

(general-create-definer general-keys
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "SPC"
  :global-prefix "M-SPC")

;; generic/top level commands
(general-keys
  "SPC" '(counsel-M-x :wk "extended command")
  "."   '(counsel-find-file :wk "find-file")
  "p"   '(projectile-command-map :wk "projectile")

;; file commands
(general-keys
  "f"     '(:ignore t       :wk "files")
  "f r"   '(counsel-recentf :wk "recent files")
  "f l"   '(counsel-locate  :wk "locate file")
  "f e"   '(:ignore t       :wk "edit emacs config")
  "f e c" '((lambda () (interactive) (counsel-find-file nil user-emacs-directory)) :wk "browse emacs dir")
  "f e i" '((lambda () (interactive) (find-file user-init-file)) :wk "edit init.el")
  "f e e" '((lambda () (interactive) (find-file (expand-file-name "early-init.el" emacs-dir))) :wk "edit early-init.el"))

;; commenting commands
(general-keys
  "TAB"     '(:ignore t                   :wk "comment")
  "TAB TAB" '(comment-line                :wk "comment line")
  "TAB r"   '(comment-or-uncomment-region :wk "comment region"))

;; buffer commands
(general-keys
  "b"   '(:ignore t        :wk "buffer")
  "b i" '(ibuffer          :wk "ibuffer")
  "b k" '(kill-this-buffer :wk "kill buffer")
  "b n" '(next-buffer      :wk "next buffer")
  "b p" '(previous-buffer  :wk "previous buffer"))

;; Help/describe commands
(general-keys
  "h"   '(:ignore t                 :wk "help")
  "h v" '(counsel-describe-variable :wk "describe variable")
  "h f" '(counsel-describe-function :wk "describe function")
  "h F" '(counsel-describe-face     :wk "describe face")
  "h s" '(counsel-describe-symbol   :wk "describe symbol"))

;; dired commands
(general-keys
  "d"   '(:ignore t :wk "dired")
  "d d" '(dired     :wk "open dired")
  "d e" '((lambda () (interactive) (dired emacs-dir))         :wk "dired: emacs dir")
  "d c" '((lambda () (interactive) (dired xdg/config-home))   :wk "dired: ~/.config")
  "d p" '((lambda () (interactive) (dired user/projects-dir)) :wk "dired: projects dir"))

;; reloading commands
(general-keys
  "r"     '(:ignore t           :wk "reload")
  "r r"   '(revert-buffer-quick :wk "reload buffer")
  "r e"   '(:ignore t           :wk "emacs dir")
  "r e i" '((lambda () (interactive) (load user-init-file)) :wk "load init.el")
  "r e e" '((lambda () (interactive) (load (expand-file-name "early-init.el" emacs-dir))) :wk "load early-init.el"))

;; window management commands
(general-keys
  "w"   '(:ignore t          :wk "window")
  "w c" '(evil-window-delete :wk "close")
  "w v" '(evil-window-vsplit :wk "vsplit")
  "w s" '(evil-window-split  :wk "split")
  "w h" '(evil-window-left   :wk "left")
  "w j" '(evil-window-down   :wk "down")
  "w k" '(evil-window-up     :wk "up")
  "w l" '(evil-window-right  :wk "right"))

;; toggle commands
(general-keys
  "t"   '(:ignore t                 :wk "toggle")
  "t l" '(toggle-truncate-lines     :wk "toggle truncated lines")
  "t n" '(display-line-numbers-mode :wk "toggle line numbers")
  "t c" '(centered-cursor-mode      :wk "toggle centered cursor"))

;; eval commands
(general-keys
  "e"   '(:ignore t       :wk "eval")
  "e e" '(eval-expression :wk "eval expression")
  "e r" '(eval-region     :wk "eval region")
  "e b" '(eval-buffer     :wk "eval buffer")
  "e l" '(eval-last-sexp  :wk "eval last S-expression")
  "e f" '(eval-defun      :wk "eval defun"))

;; org-mode commands
(general-with-eval-after-load 'org
  (general-keys
    "o"   '(:ignore t              :wk "org")
    "o i" '(org-toggle-item        :wk "toggle org item")
    "o x" '(org-export-dispatch    :wk "org export dispatch")))

;; bytecomp commands
(general-keys
  "c"   '(:ignore t               :wk "byte-compile")
  "c c" '(elisp-byte-compile-file :wk "byte-compile file"))

;; loading commands
(general-keys
  "l"   '(:ignore t            :wk "load")
  "l t" '(counsel-load-theme   :wk "theme")
  "l l" '(counsel-load-library :wk "library")
  "l f" '(load-file            :wk "file"))

(provide 'keybinds-setup)