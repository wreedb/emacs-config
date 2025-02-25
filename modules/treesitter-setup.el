;; -*- lexical-binding: t; -*-

(reqwire "treesit")

(setopt treesit-language-source-alist
 (append
  '((hyprlang    "https://github.com/tree-sitter-grammars/tree-sitter-hyprlang")
    (c           "https://github.com/tree-sitter/tree-sitter-c")
    (cpp         "https://github.com/tree-sitter/tree-sitter-cpp")
    (bash        "https://github.com/tree-sitter/tree-sitter-bash")
    (cmake       "https://github.com/uyha/tree-sitter-cmake")
    (css         "https://github.com/tree-sitter/tree-sitter-css")
    (go          "https://github.com/tree-sitter/tree-sitter-go")
    (nix         "https://github.com/nix-community/tree-sitter-nix")
    (javascript  "https://github.com/tree-sitter/tree-sitter-javascript")
    (json        "https://github.com/tree-sitter/tree-sitter-json")
    (make        "https://github.com/alemuller/tree-sitter-make")
    (python      "https://github.com/tree-sitter/tree-sitter-python")
    (toml        "https://github.com/tree-sitter/tree-sitter-toml")
    (yaml        "https://github.com/ikatyang/tree-sitter-yaml")
    (just        "https://github.com/indianboy42/tree-sitter-just")
    (lua         "https://github.com/tjdevries/tree-sitter-lua")
    (zig         "https://github.com/maxxnino/tree-sitter-zig"))
 treesit-language-source-alist))

(provide 'treesitter-setup)
