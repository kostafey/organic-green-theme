;;; organic-green-theme.el --- Low-contrast green color theme.
;; Package-Version: 20200418.0942

;;; Copyright © 2009-2020 - Kostafey <kostafey@gmail.com>

;; This file is not [yet] part of GNU Emacs, but is distributed under
;; the same terms.

;; GNU Emacs is free software: you can redistribute it and/or modify
;; it under the terms of the GNU General Public License as published by
;; the Free Software Foundation, either version 2 of the License, or
;; (at your option) any later version.

;; GNU Emacs is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.

;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs.  If not, see <http://www.gnu.org/licenses/>.

;;; Commentary:
;;
;; (load-theme 'organic-green t)

;;; Code:

(make-face 'tcl-substitution-char-face)

(defcustom organic-green-boldless nil
  "When t set all fonts from bold to normal."
  :type 'boolean
  :group 'organic-green-theme)

(deftheme organic-green
  "Low-contrast green color theme.
Basic, Font Lock, Isearch, Jabber, rst, magit, Web faces are included.")
(labels ((set-bold (bold-factor) (if organic-green-boldless
                                     'normal
                                   (or bold-factor 'bold))))
  (let* ((class '((class color) (min-colors 89)))
         ;; basic colors
         (organic-fg                    "#326B6B")
         (organic-bg                    "#F0FFF0")
         (organic-cursor-fg             "#225522")

         ;; palette colors
         (organic-grass-green          "#119911")
         (organic-spring-green         "#008B45")
         (organic-sea-eye-green        "#00A86B")
         (organic-success-green        "#4e9a06")
         (organic-teal                 "#009292")
         (organic-olive                "#6E8B3D")

         (organic-blue                 "#3063EA")
         (organic-flx-blue             "#0066CC")
         (organic-dodger-blue          "#1874CD")
         (organic-light-blue           "#8cc4ff")
         (organic-medium-blue          "#3465BD")
         (organic-dark-blue            "#204a87")
         (organic-cornflower-blue      "#4045F0")

         (organic-purple (if organic-green-boldless "#912CEE" "#A020F0"))
         (organic-yellow               "#B8860B")
         (organic-dark-yellow          "#8B6508")
         (organic-orange               "#CE5C00")
         (organic-error-red            "#A40000")

         (organic-gray                 "gray50")
         (organic-dark-gray            "grey28")

         (alum-1         "#eeeeec")
         (alum-2         "#d3d7cf")
         (alum-3         "#babdb6")
         (alum-6         "#2e3436")

         (red-1          "#ef2929")
         (red-2          "#cc0000")

         (organic-pair-yellow            "#F0F0A1")
         (organic-highlight-yellow       "#EEEEA0")
         (organic-highlight-lazy-yellow  "#DDEE00")
         (organic-highlight-green        "#A0F0A0")
         (organic-highlight-yellow-green "#BFFF00")

         (organic-minor-highlight-green  "#D5F0D5")
         (organic-tiny-highlight-green   "#E3FFE1")
         (organic-minor-highlight-grey   "#DAEADA")
         (organic-tiny-highlight-grey    "#E3F2E1")
         (organic-minor-highlight-yellow "#F2FFC0")
         (organic-minor-highlight-red    "#FFF0F0"))

    (custom-theme-set-faces
     'organic-green
     `(default ((,class (:foreground ,organic-fg :background ,organic-bg))))
     `(cursor ((,class (:background ,organic-cursor-fg))))
     `(hl-line ((,class (:background ,organic-highlight-green :inverse-video nil))))

     ;; Highlighting faces
     `(fringe ((,class (:background "#E5E5E5" :foreground "gray40"))))
     `(highlight ((,class (:background ,organic-minor-highlight-green))))
     `(region ((,class (:background ,organic-highlight-yellow))))
     `(cua-rectangle ((,class (:background ,organic-highlight-yellow-green))))
     `(secondary-selection ((,class (:background ,organic-light-blue))))
     `(isearch ((,class (:foreground ,organic-fg :background "yellow" :inverse-video nil))))
     `(lazy-highlight ((,class (:background ,organic-highlight-lazy-yellow :inverse-video nil))))
     `(trailing-whitespace ((,class (:background ,red-1))))

     ;; Mode line faces
     `(mode-line ((,class (:box (:line-width -1 :style released-button)
                                :background ,alum-2 :foreground ,alum-6))))
     `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button)
                                         :background ,alum-1 :foreground ,alum-6))))

     ;; Escape and prompt faces
     `(minibuffer-prompt ((,class (:weight bold :foreground ,organic-dark-blue))))
     `(escape-glyph ((,class (:foreground ,organic-sea-eye-green))))
     `(error ((,class (:foreground ,organic-error-red :weight ,(set-bold 'bold)))))
     `(warning ((,class (:foreground ,organic-orange))))
     `(success ((,class (:foreground ,organic-success-green))))

     ;; Font lock faces
     `(font-lock-builtin-face ((,class (:foreground ,organic-teal))))
     `(font-lock-comment-face ((,class (:foreground ,organic-gray))))
     `(font-lock-constant-face ((,class (:foreground ,organic-medium-blue))))
     `(font-lock-function-name-face ((,class (:weight ,(set-bold 'extra-bold) :foreground ,organic-blue))))
     `(font-lock-keyword-face ((,class (:weight ,(set-bold 'semi-bold) :foreground ,organic-purple))))
     `(font-lock-string-face ((t (:foreground ,organic-grass-green))) t)
     `(font-lock-type-face ((t (:foreground ,organic-teal :weight ,(set-bold 'bold)))))
     `(font-lock-variable-name-face ((,class (:width condensed :foreground ,organic-yellow))))
     `(font-lock-warning-face ((,class (:foreground ,organic-error-red :weight ,(set-bold 'bold)))))

     ;; Button and link faces
     `(link ((,class (:underline t :foreground ,organic-dark-blue))))
     `(link-visited ((,class (:underline t :foreground ,organic-medium-blue))))

     ;; Jabber
     '(jabber-roster-user-chatty ((t (:inherit font-lock-type-face :bold tx))))
     '(jabber-roster-user-online ((t (:inherit font-lock-keyword-face :bold t))))
     `(jabber-roster-user-offline ((t (:foreground ,organic-fg :background ,organic-bg))))
     '(jabber-roster-user-away ((t (:inherit font-lock-doc-face))))
     '(jabber-roster-user-xa ((t (:inherit font-lock-doc-face))))
     '(jabber-roster-user-dnd ((t (:inherit font-lock-comment-face))))
     '(jabber-roster-user-error ((t (:inherit font-lock-warning-face))))

     '(jabber-title-small ((t (:height 1.2 :weight bold))))
     '(jabber-title-medium ((t (:inherit jabber-title-small :height 1.2))))
     '(jabber-title-large ((t (:inherit jabber-title-medium :height 1.2))))

     '(jabber-chat-prompt-local ((t (:inherit font-lock-string-face :bold t))))
     '(jabber-chat-prompt-foreign ((t (:inherit font-lock-function-name-face :bold nil))))
     '(jabber-chat-prompt-system ((t (:inherit font-lock-comment-face :bold t))))
     '(jabber-rare-time-face ((t (:inherit font-lock-function-name-face :bold nil))))

     '(jabber-activity-face ((t (:inherit jabber-chat-prompt-foreign))))
     '(jabber-activity-personal-face ((t (:inherit jabber-chat-prompt-local :bold t))))

     ;; LaTeX
     '(font-latex-bold-face ((t (:bold t :foreground "DarkOliveGreen"))))
     '(font-latex-italic-face ((t (:italic t :foreground "DarkOliveGreen"))))
     `(font-latex-math-face ((t (:foreground ,organic-yellow))))
     '(font-latex-sedate-face ((t (:foreground "DimGray"))))
     '(font-latex-string-face ((t (nil))))
     `(font-latex-warning-face ((t (:bold t :weight semi-bold :foreground ,organic-orange))))

     ;; quack
     `(quack-pltish-paren-face ((((class color) (background light)) (:foreground ,organic-sea-eye-green))))
     `(quack-pltish-keyword-face ((t (:foreground ,organic-purple :weight bold))))

     ;; js2-mode
     `(js2-external-variable ((t (:foreground ,organic-dodger-blue))))
     `(js2-function-param ((t (:foreground ,organic-teal))))

     ;; clojure/CIDER
     `(cider-result-overlay-face ((t (:background ,organic-bg :box (:line-width -1 :color ,organic-pair-yellow)))))

     ;; java
     `(jdee-java-properties-font-lock-comment-face ((t (:foreground ,organic-gray))))
     `(jdee-java-properties-font-lock-equal-face ((t (:foreground ,organic-dodger-blue))))
     '(jdee-java-properties-font-lock-substitution-face ((t (:inherit font-lock-function-name-face :bold nil))))
     '(jdee-java-properties-font-lock-class-name-face ((t (:inherit font-lock-constant-face :bold nil))))
     '(jdee-java-properties-font-lock-value-face ((t (:inherit font-lock-string-face :bold nil))))
     `(jdee-java-properties-font-lock-backslash-face ((t (:foreground ,organic-sea-eye-green))))

     ;; scala
     `(scala-font-lock:var-face ((t (:foreground ,organic-orange))))

     ;; lsp
     '(lsp-ui-doc-border ((t (:background "#E5E5E5"))))
     `(lsp-ui-doc-background ((t (:background ,organic-tiny-highlight-green))))
     `(lsp-ui-sideline-code-action ((t (:background ,organic-tiny-highlight-green :foreground ,organic-gray))))

     ;; Tcl
     `(tcl-substitution-char-face ((t (:foreground ,organic-olive))))

     ;; erc
     '(erc-action-face ((t (:foreground "gray" :weight bold))))
     `(erc-command-indicator-face ((t (:foreground ,organic-dark-gray :weight bold))))
     `(erc-nick-default-face ((t (:foreground ,organic-purple :weight bold))))
     `(erc-input-face ((t (:foreground ,organic-dark-blue))))
     '(erc-notice-face ((t (:foreground "dark sea green" :weight bold))))
     `(erc-timestamp-face ((t (:foreground ,organic-grass-green :weight bold))))

     ;; circe
     '(circe-server-face ((t (:foreground "dark sea green"))))
     `(circe-prompt-face ((t (:foreground ,organic-dark-gray :background ,organic-minor-highlight-green :weight bold))))
     `(circe-highlight-nick-face ((t (:foreground ,organic-orange))))
     `(lui-time-stamp-face ((t (:foreground ,organic-grass-green))))

     ;; rst
     '(rst-definition ((t (:inherit font-lock-constant-face))) t)
     `(rst-level-1 ((t (:background ,organic-minor-highlight-green))) t)
     `(rst-level-2 ((t (:background ,organic-minor-highlight-grey))))
     `(rst-level-3 ((t (:background ,organic-minor-highlight-grey))))
     `(rst-level-4 ((t (:background ,organic-minor-highlight-grey))))
     `(rst-level-5 ((t (:background ,organic-minor-highlight-grey))))
     `(rst-level-6 ((t (:background ,organic-minor-highlight-grey))))
     '(rst-block ((t (:inherit font-lock-function-name-face :bold t))) t)
     '(rst-external ((t (:inherit font-lock-constant-face))) t)
     '(rst-directive ((t (:inheit font-lock-builtin-face))) t)
     '(rst-literal ((t (:inheit font-lock-string-face))))
     '(rst-emphasis1 ((t (:inherit italic))) t)
     `(rst-adornment ((t (:bold t :foreground ,organic-medium-blue))))

     ;; whitespace-mode
     `(whitespace-empty ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-indentation ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-newline ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-space-after-tab ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-tab ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-hspace ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-line ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-space ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-space-before-tab ((t (:background ,organic-bg :foreground ,alum-3))) t)
     `(whitespace-trailing ((t (:background ,organic-bg :foreground ,organic-error-red))) t)

     ;; log4j
     '(log4j-font-lock-warn-face ((t (:inherit warning))))

     ;; ace-jump
     '(ace-jump-face-foreground ((t (:foreground "red" :underline nil))) t)

     ;; diff
     '(diff-indicator-added ((t (:foreground "#339933"))) t)
     '(diff-added ((t (:foreground "#339933"))) t)
     `(diff-indicator-removed ((t (:foreground ,red-2))) t)
     `(diff-removed ((t (:foreground ,red-2))) t)

     ;; magit
     '(magit-diff-add ((t (:foreground "#339933"))) t)
     `(magit-diff-del ((t (:foreground ,red-2))) t)
     '(magit-diff-added ((t (:foreground "#22aa22" :background "#ddffdd"))) t)
     '(magit-diff-removed ((t (:foreground "#aa2222" :background "#ffdddd"))) t)
     '(magit-diff-added-highlight ((t (:foreground "#22aa22" :background "#cceecc"))) t)
     '(magit-diff-removed-highlight ((t (:foreground "#aa2222" :background "#eecccc"))) t)
     `(magit-diff-context-highlight ((t (:background ,organic-bg :foreground "grey50"))) t)
     `(magit-diff-file-heading-highlight ((t (:background ,organic-minor-highlight-green))) t)
     `(magit-item-highlight ((t (:background ,organic-tiny-highlight-grey))) t)
     `(magit-log-author ((t (:foreground ,organic-spring-green))) t)
     `(magit-popup-argument ((t (:foreground ,organic-blue))) t)
     `(magit-process-ok ((t (:foreground ,organic-grass-green))) t)
     `(magit-section-highlight ((t (:background ,organic-minor-highlight-green))) t)
     `(magit-branch-remote ((t (:foreground ,organic-olive))) t)
     `(magit-section-heading ((t (:bold t :foreground ,organic-dark-yellow))) t)

     ;; git-gutter
     '(git-gutter:added ((t (:foreground "#339933"))) t)
     `(git-gutter:deleted ((t (:foreground ,red-2))) t)
     `(git-gutter:modified ((t (:foreground ,organic-dodger-blue))) t)

     '(git-gutter-fr:added ((t (:foreground "PaleGreen3" :background "PaleGreen3"))) t)
     '(git-gutter-fr:deleted ((t (:foreground "tomato1" :background "tomato1"))) t)
     '(git-gutter-fr:modified ((t (:foreground "LightSkyBlue3" :background "LightSkyBlue3"))) t)

     ;; org-mode
     `(org-table ((t (:foreground ,organic-teal))) t)
     '(org-level-1 ((t (:inherit font-lock-function-name-face :bold t))) t)
     '(org-level-2 ((t (:inherit font-lock-variable-name-face :bold t))) t)
     '(org-level-3 ((t (:inherit font-lock-keyword-face :bold t))) t)
     `(org-level-4 ((t (:foreground ,organic-sea-eye-green :bold t))) t)
     `(org-level-5 ((t (:foreground  ,organic-medium-blue :bold t))) t)
     `(org-level-6 ((t (:foreground ,organic-teal :bold t))) t)
     `(org-block ((,class (:foreground ,organic-fg))))
     `(org-block-begin-line ((t (:foreground ,organic-medium-blue))) t)
     `(org-block-end-line ((t (:foreground ,organic-medium-blue))) t)

     ;; misc
     `(nxml-element-local-name ((t (:foreground ,organic-flx-blue :weight normal))) t)
     `(yas-field-highlight-face ((t (:background ,organic-highlight-lazy-yellow))))
     `(idle-highlight ((t (:background ,organic-minor-highlight-yellow))) t)
     `(comint-highlight-prompt ((t (:foreground ,organic-medium-blue :weight bold))) t)

     `(flx-highlight-face  ((t (:foreground ,organic-flx-blue :bold t :underline t))) t)

     ;; powerline
     `(powerline-active1 ((t (:background ,alum-3 :inherit mode-line))) t)
     `(powerline-active2 ((t (:background ,alum-2 :inherit mode-line))) t)
     '(powerline-inactive1  ((t (:background "grey70" :inherit mode-line-inactive))) t)
     '(powerline-inactive2  ((t (:background "grey80" :inherit mode-line-inactive))) t)

     ;; tabbar
     '(tabbar-button ((t :inherit tabbar-default :box (:line-width 1 :color "gray72"))))
     '(tabbar-modified ((t (:inherit tabbar-default :foreground "#118811"
                                     :bold t
                                     :box (:line-width 1 :color "white"
                                                       :style released-button)))))
     `(tabbar-selected ((t :inherit tabbar-default
                           :box (:line-width 1 :color "white" :style pressed-button)
                           :foreground ,alum-6 :bold t)))
     '(tabbar-selected-modified ((t :inherit tabbar-selected)))

     ;; web-mode
     `(web-mode-current-element-highlight-face
       ((,class (:background ,organic-minor-highlight-green))))
     `(web-mode-html-tag-face ((t (:foreground ,organic-dark-gray))) t)
     `(web-mode-html-attr-name-face ((t (:foreground ,organic-cornflower-blue))) t)
     `(web-mode-doctype-face ((t (:foreground ,organic-medium-blue))) t)
     `(web-mode-comment-face ((t (:foreground ,organic-gray)) t))
     `(web-mode-css-selector-face ((t (:foreground ,organic-teal))) t)
     `(web-mode-function-call-face ((t :inherit ,organic-fg)))
     `(web-mode-function-name-face ((t :inherit font-lock-function-name-face)))

     `(eldoc-highlight-function-argument
       ((t (:foreground ,organic-grass-green :weight bold))) t)

     `(table-cell ((t (:foreground ,organic-fg :background ,organic-tiny-highlight-green))) t)

     ;; dired
     `(diredp-dir-heading ((t (:background ,organic-tiny-highlight-green))))
     `(diredp-dir-name ((t (:foreground ,alum-6))))
     `(diredp-file-name ((t (:foreground ,organic-fg))))
     `(diredp-file-suffix ((t (:foreground ,organic-teal))))
     ;; dired+
     `(diredp-compressed-file-suffix ((t (:foreground ,organic-orange))))

     ;;Highlight pair parentheses
     `(show-paren-match ((t (:background ,organic-pair-yellow))))
     `(show-paren-mismatch ((t (:background ,organic-minor-highlight-red))))

     ;; rainbow-delimiters
     ;; (1 (2 (3 (4 (5 (6 (7 (8 (9 (10 (11 (12))))))))))))
     `(rainbow-delimiters-depth-1-face ((t (:foreground "#666666" :background ,organic-bg))))
     `(rainbow-delimiters-depth-2-face ((t (:foreground "#5544EE" :background ,organic-bg))))
     `(rainbow-delimiters-depth-3-face ((t (:foreground "#2265DC" :background ,organic-bg))))
     `(rainbow-delimiters-depth-4-face ((t (:foreground "#00A89B" :background ,organic-bg))))
     `(rainbow-delimiters-depth-5-face ((t (:foreground "#229900" :background ,organic-bg))))
     `(rainbow-delimiters-depth-6-face ((t (:foreground "#999900" :background ,organic-bg))))
     `(rainbow-delimiters-depth-7-face ((t (:foreground "#F57900" :background ,organic-bg))))
     `(rainbow-delimiters-depth-8-face ((t (:foreground "#EE66E8" :background ,organic-bg))))
     `(rainbow-delimiters-depth-9-face ((t (:foreground "purple"  :background ,organic-bg))))
     )))

(custom-theme-set-variables
 'organic-green

 ;; lisp parentheses rainbow
 `(hl-paren-colors '("#326B6B"))
 `(hl-paren-background-colors
   '("#00FF99" "#CCFF99" "#FFCC99" "#FF9999" "#FF99CC"
     "#CC99FF" "#9999FF" "#99CCFF" "#99FFCC" "#7FFF00"))

 ;; fill-column-indicator
 `(fci-rule-color "gray80")

 ;; marker
 `(highlight-symbol-colors
   '("#FFF68F" "#ADFF2F" "#83DDFF" "#AB82FF" "#66CDAA"
     "#FF8C00" "#FF6EB4" "#809FFF" "#9AFF9A"))

 ;; org-mode code blocks
 `(org-src-block-faces '(("emacs-lisp" (:background "#F0FFF0"))
                         ("dot" (:foreground "gray50")))))

;;;###autoload
(when load-file-name
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'organic-green)

;;; organic-green-theme.el ends here
