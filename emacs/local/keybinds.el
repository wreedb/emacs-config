;; -*- lexical-binding: t; -*-

(general-evil-setup)

(general-create-definer leader-map
  :states '(normal insert visual emacs)
  :keymaps 'override
  :prefix "SPC"
  :global-prefix "M-SPC")

(leader-map
  "SPC" '(execute-extended-command :wk "exec-command ")
  "."   '(find-file                :wk "find-file ")
  "P"   '(projectile-commander     :wk "projectile ")
  "f"   '(hydra/files/body         :wk "files menu ")
  "b"   '(hydra/buffer/body        :wk "buffers menu ")
  "w"   '(hydra/window/body        :wk "window menu ")
  "d"   '(hydra/dired/body         :wk "dired menu ")
  "r"   '(hydra/reload/body        :wk "reload menu ")
  "h"   '(hydra/help/body          :wk "help menu ")
  "t"   '(hydra/toggle/body        :wk "toggle menu ")
  "e"   '(hydra/eval/body          :wk "eval menu ")
  "o"   '(hydra/org/body           :wk "org menu ")
  "c"   '(hydra/compile/body       :wk "compile menu ")
  "l"   '(hydra/load/body          :wk "load menu ")
  "TAB" '(hydra/comment/body       :wk "comment menu "))

(defhydra hydra/files (:hint none)
  "
  _r_: recent files
  _l_: locate file
  _e_: emacs menu
  _q_: quit"
  ("r" recentf-open :exit t)
  ("l" locate :exit t)
  ("e" hydra-files/emacs/body :exit t)
  ("q" nil))

(defhydra hydra-files/emacs (:hint none)
  "
  _i_: init.el
  _e_: early-init.el
  _b_: browse emacs dir
  _q_: quit"
  ("i" open/init-file :exit t)
  ("e" open/early-init :exit t)
  ("b" (lambda () (interactive) (dired user-emacs-directory)) :exit t)
  ("q" nil))

(defhydra hydra/comment (:hint none)
  "
  _TAB_: (un)comment region
  _l_: comment line
  _q_: quit"
  ("TAB" comment-or-uncomment-region)
  ("l" comment-line)
  ("q" nil ))

(defhydra hydra/buffer (:hint none)
  "
  _n_: next buffer
  _p_: previous buffer
  _i_: ibuffer
  _k_: kill active buffer
  _K_: kill all other buffers
  _q_: quit"
  ("i" ibuffer :exit t)
  ("k" kill/current-buffer :exit t)
  ("K" kill/other-buffers :exit t)
  ("n" next-buffer)
  ("p" previous-buffer)
  ("q" nil))

(defhydra hydra/help (:hint none)
  "
  _v_: variable
  _f_: function
  _s_: symbol
  _F_: face
  _q_: quit"
  ("v" describe-variable :exit t)
  ("f" describe-function :exit t)
  ("s" describe-symbol   :exit t)
  ("F" describe-face     :exit t)
  ("q" nil))

(defhydra hydra/window (:hint none)
  "
  _h_: left   _c_: close
  _j_: down   _v_: vertical split
  _k_: up     _s_: horizontal split
  _l_: right  _q_: quit"
  ("c" evil-window-delete :exit t)
  ("v" evil-window-vsplit :exit t)
  ("s" evil-window-split :exit t)
  ("h" evil-window-left)
  ("j" evil-window-down)
  ("k" evil-window-up)
  ("l" evil-window-right)
  ("q" nil)) 

(defhydra hydra/dired (:hint none)
  "
  _d_: open dired      _c_: open ~/.config
  _t_: toggle sidebar  _p_: open projects dir
  _e_: open emacs dir  _q_: quit"
  ("d" dired :exit t)
  ("t" dired-sidebar-toggle-sidebar)
  ("e" (lambda () (interactive) (dired emacs/dir)) :exit t)
  ("c" (lambda () (interactive) (dired xdg/config-home)) :exit t)
  ("p" (lambda () (interactive) (dired user/projects-dir)) :exit t)
  ("q" nil))

(defhydra hydra/reload (:hint none)
  "
  _r_: reload buffer
  _f_: reload font
  _e_: reload emacs files
  _q_: quit"
  ("r" reload/buffer)
  ("f" reload/font)
  ("e" hydra-reload/emacs-dir/body :exit t)
  ("q" nil))

(defhydra hydra-reload/emacs-dir (:hint none)
  "
  _i_: reload init.el
  _e_: reload early-init.el
  _q_: quit"
  ("i" reload/init-file)
  ("e" reload/early-init)
  ("q" nil))

(defhydra hydra/toggle (:hint none)
  "
  _l_: line wrap [%`truncate-lines]
  _n_: line numbers [%`display-line-numbers-mode]
  _d_: dired sidebar
  _c_: centered cursor
  _t_: terminal
  _q_: quit"
  ("t" eat-other-window :exit t)
  ("d" dired-sidebar-toggle-sidebar)
  ("l" toggle-truncate-lines)
  ("n" display-line-numbers-mode)
  ("c" centered-cursor-mode)
  ("q" nil))

(defhydra hydra/eval (:hint none)
  "
  _e_: eval expr    _l_: eval last S-expr
  _r_: eval region  _f_: eval defun
  _b_: eval buffer  _q_: quit"
  ("e" eval-expression :exit t)
  ("r" eval-region)
  ("b" eval/buffer :exit t)
  ("l" eval-last-sexp)
  ("f" eval-defun)
  ("q" nil))


(defhydra hydra/org (:hint none)
  "
  _i_: toggle item
  _s_: insert SRC block
  _x_: export document
  _q_: quit"
  ("i" org-toggle-item)
  ("s" tempo-template-org-src :exit t)
  ("x" org-export-dispatch :exit t)
  ("q" nil))

(defhydra hydra/compile (:hint none)
  "
  _c_: byte-compile file
  _n_: native-compile file
  _N_: native-compile + load
  _q_: quit"
  ("c" elisp-byte-compile-file :exit t)
  ("n" emacs-lisp-native-compile :exit t)
  ("N" emacs-lisp-native-compile-and-load :exit t)
  ("q" nil))

(defhydra hydra/load (:hint none)
  "
  _t_: load theme
  _l_: load library
  _f_: load file
  _q_: quit"
  ("t" consult-theme :exit t)
  ("l" load-library :exit t)
  ("f" load-file :exit t)
  ("q" nil))


(load-library "which-key")
(setq which-key-side-window-location 'bottom
      which-key-side-window-slot -10
      which-key-side-window-max-height 0.25
      which-key-allow-imprecise-window-fit t
      which-key-popup-type 'side-window
      which-key-separator ": "
      which-key-max-description-length 25
      which-key-sort-order 'which-key-key-order-alpha
      which-key-max-display-columns nil
      which-key-min-display-lines 4
      which-key-idle-delay 0.6)

(set-face-attribute 'which-key-key-face nil :weight 'bold)

(which-key-mode t)

(keymap-global-set "C-x k" 'kill/current-buffer)
(keymap-global-set "C-x C-k" 'kill-buffer-and-window)

(keymap-global-set "C-c p" 'projectile-command-map)

(add-hook 'dashboard-mode-hook
  (lambda () (keymap-local-set "C-c r" 'dashboard-refresh-buffer)))

;; adjusting text scale
(keymap-global-set "C-+" 'text-scale-increase)
(keymap-global-set "C--" 'text-scale-decrease)

;; allow ESC from vertico-posframe
(add-hook 'vertico-posframe-mode-hook
  (keymap-local-set "ESC" 'vertico-exit))

(with-eval-after-load 'v-mode
  (leader-map "v" '(v-menu :wk "v menu")))

(provide 'keybinds)
