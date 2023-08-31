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

(setq vterm-shell "/usr/bin/env fish")

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
              (height . 60)))))))


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
  doom-modeline-icon t
  doom-modeline-time-icon nil
  evil-want-fine-undo t)
  ;evil-respect-visual-line-mode t)

(display-time-mode 1)
;(display-battery-mode 1)

(when (string= (system-name) "scorpia")
  (add-hook 'after-init-hook #'fancy-battery-mode)
  (setq fancy-battery-show-percentage t))

(setq haskell-stylish-on-save t)

(use-package pdf-view
  :hook (pdf-tools-enabled . pdf-view-midnight-minor-mode)
  :hook (pdf-tools-enabled . hide-mode-line-mode))

(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-shortmenu)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-loaded)
(remove-hook '+doom-dashboard-functions #'doom-dashboard-widget-footer)
(add-hook! '+doom-dashboard-functions :append)
(setq-hook! '+doom-dashboard-mode-hook evil-normal-state-cursor (list nil))
(setq fancy-splash-image "~/.config/doom/splash.png")

(global-visual-line-mode t)

(defun evil-normal-visual-motion (key command)
  (define-key evil-normal-state-map key command)
  (define-key evil-visual-state-map key command)
  (define-key evil-motion-state-map key command))

(evil-normal-visual-motion (kbd "j") 'evil-next-visual-line)
(evil-normal-visual-motion (kbd "k") 'evil-previous-visual-line)

;(require 'exwm)
;(require 'exwm-config)
;(exwm-config-default)
;(require 'exwm-systemtray)
;(exwm-systemtray-enable)
;
;(setq exwm-input-global-keys `(,(kbd "s-d") .
                               ;(lambda (command)
                                 ;(interactive (list (read-shell-command "$ ")))
                                 ;(start-process-shell-command command nil command))))
;(defun firefox ()
  ;(interactive)
  ;(let ((buff (--filter (string= "Firefox" (buffer-name it))
                        ;(buffer-list))))
    ;(if buff
        ;(apply 'switch-to-buffer buff)
      ;(call-process "firefox" nil 0 nil))))

(require 'agda-input)
(add-hook 'evil-insert-state-entry-hook (lambda ()
                      (if (not (or (eq major-mode 'latex-mode)
                                   (eq major-mode 'org-mode)
                                   (eq major-mode 'vterm-mode)))
                          (set-input-method "Agda"))))
(add-hook 'evil-insert-state-exit-hook  (lambda () (set-input-method nil)))
