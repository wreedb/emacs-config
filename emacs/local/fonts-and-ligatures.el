;; -*- lexical-binding: t; -*-

(load-library "font-lock")

;; default font
(set-face-attribute 'default nil
  :family "JetBrains Mono"
  :height 140)

;; fallback font for glyphs
(set-fontset-font t nil (font-spec :size 14 :name "Symbols Nerd Font Mono"))

; ligatures
(defconst ligatures-jetbrainsmono
  '("--" "---" "==" "===" "!=" "!==" "=!=" "=:=" "=/=" "<=" ">=" "&&" "&&&" "&=" "++" "+++"
   "***" ";;" "!!" "??" "?:" "?." "?=" "<:" ":<" ":>" ">:" "<>" "<<<" ">>>" "<<" ">>" "||" "-|"
   "_|_" "|-" "||-" "|=" "||=" "##" "###" "####" "#{" "#[" "]#" "#(" "#?" "#_" "#_(" "#:"
   "#!" "#=" "^=" "<$>" "<$" "$>" "<+>" "<+ +>" "<*>" "<* *>" "</" "</>" "/>" "<!--"
   "<#--" "-->" "->" "->>" "<<-" "<-" "<=<" "=<<" "<<=" "<==" "<=>" "<==>" "==>" "=>"
   "=>>" ">=>" ">>=" ">>-" ">-" ">--" "-<" "-<<" ">->" "<-<" "<-|" "<=|" "|=>" "|->" "<-"
   "<~~" "<~" "<~>" "~~" "~~>" "~>" "~-" "-~" "~@" "[||]" "|]" "[|" "|}" "{|" "[<" ">]"
   "|>" "<|" "||>" "<||" "|||>" "|||>" "<|>" "..." ".." ".=" ".-" "..<" ".?" "::" ":::"
   ":=" "::=" ":?" ":?>" "//" "///" "/*" "*/" "/=" "//=" "/==" "@_" "__")
  "ligatures for the JetBrains Mono font face")

(ligature-set-ligatures 'prog-mode ligatures-jetbrainsmono)
(global-ligature-mode t)

;; font-lock
;; this has to be a bug, right?
(set-face-attribute 'help-key-binding nil
  :background nil
  :foreground nil
  :slant 'italic
  :weight 'bold
  :box nil)

;; italic and heavier faces for certain words in code
(set-face-attribute 'font-lock-comment-face nil :slant 'italic)
(set-face-attribute 'font-lock-comment-delimiter-face nil :slant 'italic)
(set-face-attribute 'font-lock-keyword-face nil :slant 'italic)
(set-face-attribute 'font-lock-builtin-face nil :weight 'medium)

(global-font-lock-mode t)

(provide 'fonts-and-ligatures)
