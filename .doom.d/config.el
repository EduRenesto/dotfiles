;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

;; Setting my font
(setq doom-font (font-spec :family "Iosevka Term" :size 14))

;; Gruvbox
(setq doom-theme 'doom-gruvbox)

;; Relative background
(setq display-line-numbers-type 'relative)

;; Transparency
(set-frame-parameter (selected-frame) 'alpha '(85 80))

;; Use rust-analyzer
(setq rustic-lsp-server 'rust-analyzer)

;; Remap ; to :
(map! :n ";" #'evil-ex)

;; Window navigation
;; because f*** emacs bindings!
(map! :n "C-h" #'evil-window-left
      :n "C-j" #'evil-window-down
      :n "C-k" #'evil-window-up
      :n "C-l" #'evil-window-right

      :n "C-<" #'evil-window-decrease-width
      :n "C->" #'evil-window-increase-width)
