;; -*- lexical-binding: t; -*-

(defconst xdg/config-home
  (expand-file-name ".config" home-dir)
  "~/.config XDG directory")

(defconst xdg/cache-home
  (expand-file-name ".cache" home-dir)
  "~/.cache XDG directory")

(defconst xdg/data-home
  (expand-file-name ".local/share" home-dir)
  "~/.local/share XDG directory")

(defconst xdg/state-home
  (expand-file-name ".local/state" home-dir)
  "~/.local/state XDG directory")

(defconst xdg/bin-home
  (expand-file-name ".local/bin" home-dir)
  "~/.local/bin XDG directory")

(defconst user/projects-dir
  (expand-file-name "Projects" home-dir)
  "~/Projects directory")

(provide 'variables-setup)