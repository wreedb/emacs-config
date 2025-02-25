;; -*- lexical-binding: t; -*-

(setopt org-directory
  (expand-file-name "Documents/org" home-dir))
(mkdir-ifnot org-directory)

(setopt org-default-notes-file (expand-file-name "notes.org" org-directory))
(setopt org-agenda-files (list org-directory))
(setopt org-auto-align-tags t)
(setopt org-edit-src-content-indentation 0)

(with-eval-after-load 'org
  (reqwire "org-tempo")
  (reqwire "org-modern")
  (reqwire "toc-org")
  (global-org-modern-mode t))

(provide 'org-setup)