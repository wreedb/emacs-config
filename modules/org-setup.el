;; -*- lexical-binding: t; -*-

(setopt org-directory
  (concat user/documents-dir "org/"))
(mkdir-ifnot org-directory)

(setopt org-default-notes-file (concat org-directory "notes.org"))
(setopt org-agenda-files (list org-directory))
(setopt org-auto-align-tags t)
(setopt org-edit-src-content-indentation 0)

(with-eval-after-load 'org
  (require 'org-tempo)
  (require 'org-modern)
  (require 'toc-org)
  (global-org-modern-mode t))

(provide 'org-setup)