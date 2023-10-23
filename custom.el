(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(LaTeX-item-indent 1)
 '(TeX-command-list
   '(("tectonic" "tectonic -X watch" TeX-run-TeX nil
      (plain-tex-mode latex-mode doctex-mode context-mode texinfo-mode ams-tex-mode))))
 '(abbrev-file-name "~/.emacs.d/abbrev_defs")
 '(all-the-icons-scale-factor 1.0)
 '(auto-image-file-mode t)
 '(custom-safe-themes
   '("5784d048e5a985627520beb8a101561b502a191b52fa401139f4dd20acb07607" "4f1d2476c290eaa5d9ab9d13b60f2c0f1c8fa7703596fa91b235db7f99a9441b" "e2c926ced58e48afc87f4415af9b7f7b58e62ec792659fcb626e8cba674d2065" "353ffc8e6b53a91ac87b7e86bebc6796877a0b76ddfc15793e4d7880976132ae" "1d5e33500bc9548f800f9e248b57d1b2a9ecde79cb40c0b1398dec51ee820daf" "1436985fac77baf06193993d88fa7d6b358ad7d600c1e52d12e64a2f07f07176" "e990fd36b40108405468d7d338feff98420ab967d824115a9a92668bad949af9" "234dbb732ef054b109a9e5ee5b499632c63cc24f7c2383a849815dacc1727cb6" "20bee849714632f54b373922e93eff0b6e5e093f30a8102045aca963c9823ebc" default))
 '(custom-set-variables '(haskell-process-type 'cabal-repl))
 '(dired-vc-rename-file t)
 '(display-time-24hr-format t)
 '(display-time-default-load-average nil)
 '(display-time-format nil)
 '(display-time-mode t)
 '(doc-view-continuous nil)
 '(doom-modeline-buffer-file-name-style 'relative-from-project)
 '(fancy-splash-image "~/.config/doom/splash.png")
 '(find-file-visit-truename t)
 '(haskell-interactive-popup-errors nil)
 '(haskell-interactive-prompt "λ ")
 '(haskell-stylish-on-save nil)
 '(image-animate-loop t t)
 '(image-converter 'imagemagick)
 '(image-file-name-extensions
   '("png" "jpeg" "jpg" "gif" "ora" "tiff" "tif" "xbm" "xpm" "pbm" "pgm" "ppm" "pnm" "svg"))
 '(image-types '(svg png gif tiff jpeg xpm xbm pbm ora) t)
 '(image-use-external-converter t)
 '(imagemagick-enabled-types
   '(3FR ARW AVS BMP BMP2 BMP3 CAL CALS CMYK CMYKA CR2 CRW CUR CUT DCM DCR DCX DDS DJVU DNG DPX EXR FAX FITS GBR GIF GIF87 GRB HRZ ICB ICO ICON J2C JNG JP2 JPC JPEG JPG JPX K25 KDC MIFF MNG MRW MSL MSVG MTV NEF ORA ORF OTB PBM PCD PCDS PCL PCT PCX PDB PEF PGM PICT PIX PJPEG PNG PNG24 PNG32 PNG8 PNM PPM PSD PTIF PWP RAF RAS RBG RGB RGBA RGBO RLA RLE SCR SCT SFW SGI SR2 SRF SUN SVG SVGZ TGA TIFF TIFF64 TILE TIM TTF UYVY VDA VICAR VID VIFF VST WBMP WPG X3F XBM XC XCF XPM XV XWD YCbCr YCbCrA YUV))
 '(isearch-hide-immediately nil)
 '(lsp-enable-on-type-formatting t)
 '(lsp-haskell-formatting-provider "stylish-haskell")
 '(midnight-mode nil)
 '(org-agenda-files '("~/testing.org"))
 '(org-display-remote-inline-images 'download)
 '(org-export-backends '(html latex md odt))
 '(org-highlight-latex-and-related '(native script entities))
 '(org-image-actual-width nil)
 '(org-latex-compiler "xelatex")
 '(org-latex-default-packages-alist
   '(("AUTO" "inputenc" t
      ("pdflatex"))
     ("T1" "fontenc" t
      ("pdflatex"))
     ("" "graphicx" t nil)
     ("" "longtable" nil nil)
     ("" "wrapfig" nil nil)
     ("" "rotating" nil nil)
     ("normalem" "ulem" t nil)
     ("" "amsmath" t nil)
     ("" "amssymb" t nil)
     ("" "capt-of" nil nil)
     ("" "hyperref" nil nil)
     ("" "esint" t nil)))
 '(org-latex-prefer-user-labels t t)
 '(package-selected-packages
   '(nix-mode hcl-mode matlab-mode emms minesweeper lsp-pyright bluetooth telega docker-compose-mode dockerfile-mode svelte-mode srefactor elisp-format clang-format mpv dracula-theme mu4e-overview mu4e-views wordel dante vhdl-tools flycheck-haskell lsp-haskell pdf-tools sublimity lsp-java tree-sitter-langs tree-sitter fira-code-mode ##))
 '(pdf-view-midnight-invert nil)
 '(pdf-view-midnight-colors '("#4c4f69" . "#eff1f5"))
 '(recentf-filename-handlers '(substring-no-properties doom--recentf-file-truename-fn))
 '(remote-file-name-inhibit-cache 60)
 '(safe-local-variable-values
   '((eval setq haskell-process-path-ghci "cabal run -- clashi")
     (dante-methods new-build)))
 '(warning-suppress-types
   '((after-save-hook)
     (after-save-hook)
     (after-save-hook)
     (after-save-hook)
     (after-save-hook)
     (after-save-hook)
     (doom-first-file-hook)
     (doom-init-ui-hook))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(put 'customize-group 'disabled nil)
