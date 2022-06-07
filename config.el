;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here! Remember, you do not need to run 'doom
;; sync' after modifying this file!


;; Some functionality uses this to identify you, e.g. GPG configuration, email
;; clients, file templates and snippets.
(setq user-full-name "Nor Führ"
      user-mail-address "nor@acorneroftheweb.com")

;; Doom exposes five (optional) variables for controlling fonts in Doom. Here
;; are the three important ones:
;;
;; + `doom-font'
;; + `doom-variable-pitch-font'
;; + `doom-big-font' -- used for `doom-big-font-mode'; use this for
;;   presentations or streaming.
;;
;; They all accept either a font-spec, font string ("Input Mono-12"), or xlfd
;; font string. You generally only need these two:
;; (setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
;;       doom-variable-pitch-font (font-spec :family "sans" :size 13))
(setq doom-font (font-spec :family "Fira Code" :size 16)
            doom-big-font (font-spec :family "Fira Code" :size 36)
            ;doom-variable-pitch-font (font-spec :family "ETBembo" :size 24)
            ;doom-serif-font (font-spec :family "ETBembo" :size 24)
            )

;; There are two ways to load a theme. Both assume the theme is installed and
;; available. You can either set `doom-theme' or manually load a theme with the
;; `load-theme' function. This is the default:
(setq doom-theme 'doom-dracula)

;; If you use `org' and don't want your org files in the default location below,
;; change `org-directory'. It must be set before org loads!
(setq org-directory "~/org/")

;; This determines the style of line numbers in effect. If set to `nil', line
;; numbers are disabled. For relative line numbers, set this to `relative'.
(setq display-line-numbers-type t)

;; Here are some additional functions/macros that could help you configure Doom:
;;
;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.
;;
;; You can also try 'gd' (or 'C-c c d') to jump to their definition and see how
;; they are implemented.

(map! ("M-i" 'vterm))

(setq vterm-shell 'fish)

(evil-snipe-mode +1)
(evil-snipe-override-mode +1)

(if (display-graphic-p)
    (progn
      (setq initial-frame-alist
            '(
              (width . 106) ; chars
              (height . 60) ; lines
      (setq default-frame-alist
            '(
              (width . 106)
              (height . 60)
              )
             )
            )
        )
    )
)


(after! PACKAGE
  (set-ligatures! 'MAJOR-MODE
    :symbol "keyword"))

(use-package! tree-sitter
  :config
  (require 'tree-sitter-langs)
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(setq scroll-margin 7
  scroll-step 1
  scroll-conservatively 10000
  scroll-preserve-screen-position 1
  doom-modeline-icon t)

(display-time-mode 1)
(display-battery-mode 1)

(setq haskell-stylish-on-save t)

(use-package pdf-view
  :hook (pdf-tools-enabled . pdf-view-midnight-minor-mode)
  :hook (pdf-tools-enabled . hide-mode-line-mode))

(setq fancy-splash-image "~/.doom.d/splash.png")

(global-visual-line-mode t)
(require 'smtpmail)
(require 'mu4e)
(setq mu4e-compose-format-flowed t)
(setq mu4e-get-mail-command "mbsync -c ~/.config/mu4e/mbsyncrc -a"
mu4e-update-interval  300
message-send-mail-function 'smtpmail-send-it
starttls-use-gnutls t
mu4e-sent-folder "/Sent"
mu4e-drafts-folder "/Drafts"
mu4e-trash-folder "/Trash"
mu4e-refile-folder "/All Mail"
)

(setq mu4e-contexts
(list

        ))
;; use 'fancy' non-ascii characters in various places in mu4e
(setq mu4e-use-fancy-chars t)

;; attempt to show images when viewing messages
(setq mu4e-view-show-images t)

(setq mu4e-html2text-command 'mu4e-shr2text)
