;; -*- lexical-binding: t; -*-

(advice-add 'v-after-save-hook :override #'(lambda () (message "[emacs] *>>> saved file")))

(setq auto-mode-alist
 (append
  '(("\\.toml\\'"         . toml-ts-mode)
    ("\\.c\\'"            . c-ts-mode)
    ("\\.C\\'"            . c-ts-mode)
    ("\\.h\\'"            . c-ts-mode)
    ("\\.H\\'"            . c-ts-mode)
    ("\\.cpp\\'"          . c++-ts-mode)
    ("\\.cxx\\'"          . c++-ts-mode)
    ("\\.hpp\\'"          . c++-ts-mode)
    ("\\.hxx\\'"          . c++-ts-mode)
    ("\\.ts\\'"           . typescript-ts-mode)
    ("\\.tsx\\'"          . typescript-ts-mode)
    ("\\.go\\'"           . go-ts-mode)
    ("\\go.mod\\'"        . go-mod-ts-mode)
    ("\\.js\\'"           . js-ts-mode)
    ("\\.jsx\\'"          . js-ts-mode)
    ("\\.css\\'"          . css-ts-mode)
    ("\\.sh\\'"           . bash-ts-mode)
    ("\\.bash\\'"         . bash-ts-mode)
    ("\\.java\\'"         . java-ts-mode)
    ("\\.class\\'"        . java-ts-mode)
    ("\\.json\\'"         . json-ts-mode)
    ("\\.jsonc\\'"        . json-ts-mode)
    ("\\.rb\\'"           . ruby-ts-mode)
    ("\\.rs\\'"           . rust-ts-mode)
    ("\\.yaml\\'"         . yaml-ts-mode)
    ("\\.yml\\'"          . yaml-ts-mode)
    ("\\CMakeList.txt\\'" . cmake-ts-mode)
    ("\\.cmake\\'"        . cmake-ts-mode)
    ("\\.py\\'"           . python-ts-mode)
    ("\\.pyc\\'"          . python-ts-mode)
    ("\\.pyi\\'"          . python-ts-mode)
    ("\\.pyd\\'"          . python-ts-mode)
    ("\\.pyo\\'"          . python-ts-mode)
    ("\\.pyw\\'"          . python-ts-mode)
    ("\\.pyz\\'"          . python-ts-mode)
    ("\\.lua\\'"          . lua-ts-mode)
    ("\\.v\\'"            . v-mode)
    ("\\v.mod\\'"         . v-mode)
    ("\\gitignore\\'"     . conf-mode)
    ("\\gitattributes\\'" . conf-mode)
    ("\\.conf\\'"         . conf-mode)
    ("\\.desktop\\'"      . conf-desktop-mode)
    ("\\.service\\'"      . conf-desktop-mode)
    ("\\.fish\\'"         . fish-mode)
    ("\\.nix\\'"          . nix-ts-mode)
    ("\\.zig\\'"          . zig-ts-mode)
    ("\\.zig.zon\\'"      . zig-ts-mode)
    ("\\justfile\\'"      . just-ts-mode)
    ("\\Justfile\\'"      . just-ts-mode)
    ("\\.md\\'"           . markdown-mode)
    ("\\.MD\\'"           . markdown-mode))
  auto-mode-alist))

(setopt hyprlang-ts-mode-indent-offset 2
        go-ts-mode-indent-offset 4
        nix-ts-mode-indent-offset 4)

(provide 'languages-setup)
