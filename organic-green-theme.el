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

(deftheme organic-green "Low-contract green color theme.")

(defgroup organic-green nil
  "Organic-green theme customization.
The theme needs to be reloaded after changing anything in this group."
  :group 'faces)

(defcustom organic-green-bold-constructs nil
  "Use bold text in more code constructs."
  :type 'boolean
  :group 'organic-green)

(defcustom organic-green-slanted-constructs nil
  "Use slanted text in more code constructs (italics or oblique)."
  :type 'boolean
  :group 'organic-green)

(let ((class '((class color) (min-colors 89)))
      (organic-fg "#326B6B")
      (organic-bg        "#F0FFF0")
      (organic-cursor-fg "#225522")
      (organic-fringe-bg "#E5E5E5")
      (organic-fringe-fg "gray40")

      ;; base color pallet
      (organic-white     "white")

      (organic-teal      "#009292")
      (organic-olive-0   "#6E8B3D")
      (organic-olive-1   "DarkOliveGreen")

      (organic-green-0   "#E3FFE1")
      (organic-green-1   "#D5F0D5")
      (organic-green-2   "#A0F0A0")
      (organic-green-3   "#4e9a06")
      (organic-green-4   "#119911")
      (organic-green-5   "#339933")
      (organic-green-6   "#008B45")
      (organic-green-7   "#22aa22")
      (organic-green-8   "#00A86B")
      (organic-green-9   "dark sea green")

      ;; #cceecc
      ;; #ddffdd
      ;; #118811
      ;; PaleGreen3

      (organic-blue-0    "#8cc4ff")
      (organic-blue-1    "#1874CD")
      (organic-blue-2    "#3063EA")
      (organic-blue-3    "#0066CC")
      (organic-blue-4    "#3465BD")
      (organic-blue-5    "#4045F0")
      (organic-blue-6    "#204a87")

      ;; LightSkyBlue3

      (organic-yellow-0  "#f2ffc0") ;
      (organic-yellow-1  "#F0F0A1")
      (organic-yellow-2  "#DDEE00")
      (organic-yellow-3  "yellow")
      (organic-yellow-4  "#8B6508")
      (organic-yellow-5  "#B8860B")

      (organic-yellow-green-0 "#BFFF00")

      (organic-purple    (if        organic-green-bold-constructs "#912CEE" "#A020F0"))
      (organic-orange    "#CE5C00")

      (organic-red-0     "#FFF0F0")
      (organic-red-1     "#ffdddd")
      (organic-red-2     "#eecccc")
      (organic-red-3     "#ef2929")
      (organic-red-4     "red")
      (organic-red-5     "#cc0000")
      (organic-red-6     "#A40000")

      ;; tomato1

      (organic-alum-1    "#eeeeec")
      (organic-alum-2    "#d3d7cf")
      (organic-alum-3    "#babdb6")
      (organic-alum-6    "#2e3436")

      (organic-gray-0    "#E3F2E1")
      (organic-gray-1    "#DAEADA")
      (organic-gray-2    "#E5E5E5")
      (organic-gray-3    "gray")
      (organic-gray-4    "gray50")
      (organic-gray-5    "DimGray")
      (organic-gray-6    "gray28")

      ;; gray70
      ;; gray72
      ;; gray80

      ;; conditional styles that evaluate user-facing customization
      ;; options
      (organic-green-slant
       (if organic-green-slanted-constructs
           'italic
         'normal))

      (organic-green-bold
       (if organic-green-bold-constructs
           'bold
         'normal)))

  (custom-theme-set-faces
   'organic-green
   ;; essential styles
   `(default ((,class (:foreground ,organic-fg :background ,organic-bg))))

   ;; base
   `(bold ((,class (:weight bold))))
   `(extra-bold ((,class (:weight extra-bold))))
   `(semi-bold ((,class (:weight semi-bold))))
   `(italic ((,class (:slant italic))))
   `(error ((,class (:foreground ,organic-red-6 :weight bold))))
   `(escape-glyph ((,class (:foreground ,organic-green-8))))
   `(warning ((,class (:foreground ,organic-orange))))
   `(success ((,class (:foreground ,organic-green-3))))
   `(font-lock-builtin-face ((,class (:foreground ,organic-teal))))
   `(font-lock-comment-face ((,class (:foreground ,organic-gray-4))))
   `(font-lock-constant-face ((,class (:foreground ,organic-blue-4))))
   `(font-lock-function-name-face ((,class (:foreground ,organic-blue-2 :weight extra-bold))))
   `(font-lock-keyword-face ((,class (:foreground ,organic-purple :weight semi-bold))))
   `(font-lock-string-face ((t (:foreground ,organic-green-4))) t)
   `(font-lock-type-face ((t (:foreground ,organic-teal :weight bold))))
   `(font-lock-variable-name-face ((,class (:foreground ,organic-yellow-5 :width condensed))))
   `(font-lock-warning-face ((,class (:foreground ,organic-orange :weight bold))))

   ;; ui
   `(cursor ((,class (:background ,organic-cursor-fg))))
   `(fringe ((,class (:background ,organic-fringe-bg :foreground ,organic-fringe-fg))))
   `(vertical-border ((,class (:foreground ,organic-fringe-fg))))
   `(minibuffer-prompt ((,class (:foreground ,organic-blue-6 :weight bold))))
   `(mode-line ((,class (:box (:line-width -1 :style released-button) :background ,organic-alum-2 :foreground ,organic-alum-6))))
   `(mode-line-inactive ((,class (:box (:line-width -1 :style released-button) :background ,organic-alum-1 :foreground ,organic-alum-6))))
   `(link ((,class (:underline t :foreground ,organic-blue-6))))
   `(link-visited ((,class (:underline t :foreground ,organic-blue-4))))
   `(highlight ((,class (:background ,organic-green-1))))
   `(hl-line ((,class (:background ,organic-green-2 :inverse-video nil))))
   `(region ((,class (:background ,organic-yellow-1))))
   `(lazy-highlight ((,class (:background ,organic-yellow-2 :inverse-video nil))))
   `(isearch ((,class (:foreground ,organic-fg :background ,organic-yellow-3 :inverse-video nil))))
   `(cua-rectangle ((,class (:background ,organic-yellow-green-0))))
   `(secundary-selection ((,class (:background ,organic-blue-0))))
   `(trailing-whitespace ((,class (:background ,organic-red-3))))


   ;; external packages
   ;;; Jabber
   '(jabber-roster-user-chatty ((t (:inherit font-lock-type-face :bold t))))
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

   ;;; LaTeX
   `(font-latex-bold-face ((t (:bold t :foreground ,organic-olive-1))))
   `(font-latex-italic-face ((t (:italic t :foreground ,organic-olive-1))))
   `(font-latex-math-face ((t (:foreground ,organic-yellow-5))))
   `(font-latex-sedate-face ((t (:foreground ,organic-gray-5))))
   '(font-latex-string-face ((t (nil))))
   `(font-latex-warning-face ((t (:bold t :weight semi-bold :foreground ,organic-orange))))

   ;;; Quack
   `(quack-pltish-paren-face ((((class color) (background light)) (:foreground ,organic-green-8))))
   `(quack-pltish-keyword-face ((t (:foreground ,organic-purple :weight bold))))

   ;;; js2-mode
   `(js2-external-variable ((t (:foreground ,organic-blue-1))))
   `(js2-function-param ((t (:foreground ,organic-teal))))

   ;; clojure/CIDER
   `(cider-result-overlay-face ((t (:background ,organic-bg :box (:line-width -1 :color ,organic-yellow-1)))))

   ;;; Java
   `(jdee-java-properties-font-lock-comment-face ((t (:foreground ,organic-gray-4))))
   `(jdee-java-properties-font-lock-equal-face ((t (:foreground ,organic-blue-1))))
   '(jdee-java-properties-font-lock-substitution-face ((t (:inherit font-lock-function-name-face :bold nil))))
   '(jdee-java-properties-font-lock-class-name-face ((t (:inherit font-lock-constant-face :bold nil))))
   '(jdee-java-properties-font-lock-value-face ((t (:inherit font-lock-string-face :bold nil))))
   `(jdee-java-properties-font-lock-backslash-face ((t (:foreground ,organic-green-8))))

   ;;; Scala
   `(scala-font-lock:var-face ((t (:foreground ,organic-orange))))

   ;;; Lsp
   `(lsp-ui-doc-border ((t (:background ,organic-gray-2))))
   `(lsp-ui-doc-background ((t (:background ,organic-green-0))))
   `(lsp-ui-sideline-code-action ((t (:background ,organic-green-0 :foreground ,organic-gray-4))))

   ;;; Tcl
   `(tcl-substitution-char-face ((t (:foreground ,organic-olive-0))))

   ;;; Erc
   `(erc-action-face ((t (:foreground ,organic-gray-3 :weight bold))))
   `(erc-command-indicator-face ((t (:foreground ,organic-gray-6 :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,organic-purple :weight bold))))
   `(erc-input-face ((t (:foreground ,organic-blue-6))))
   `(erc-notice-face ((t (:foreground ,organic-green-9 :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,organic-green-4 :weight bold))))

   ;; Circe
   `(circe-server-face ((t (:foreground ,organic-green-9))))
   `(circe-prompt-face ((t (:foreground ,organic-gray-5 :background ,organic-green-1 :weight bold))))
   `(circe-highlight-nick-face ((t (:foreground ,organic-orange))))
   `(lui-time-stamp-face ((t (:foreground ,organic-green-4))))

   ;;; Rst
   '(rst-definition ((t (:inherit font-lock-constant-face))) t)
   `(rst-level-1 ((t (:background ,organic-green-1))) t)
   `(rst-level-2 ((t (:background ,organic-gray-1))))
   `(rst-level-3 ((t (:background ,organic-gray-1))))
   `(rst-level-4 ((t (:background ,organic-gray-1))))
   `(rst-level-5 ((t (:background ,organic-gray-1))))
   `(rst-level-6 ((t (:background ,organic-gray-1))))
   '(rst-block ((t (:inherit font-lock-function-name-face :bold t))) t)
   '(rst-external ((t (:inherit font-lock-constant-face))) t)
   '(rst-directive ((t (:inheit font-lock-builtin-face))) t)
   '(rst-literal ((t (:inheit font-lock-string-face))))
   '(rst-emphasis1 ((t (:inherit italic))) t)
   `(rst-adornment ((t (:bold t :foreground ,organic-blue-4))))

   ;; Whitespace-Mode
   `(whitespace-empty ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-indentation ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-newline ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-space-after-tab ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-tab ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-hspace ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-line ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-space ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-space-before-tab ((t (:background ,organic-bg :foreground ,organic-alum-3))) t)
   `(whitespace-trailing ((t (:background ,organic-bg :foreground ,organic-red-6))) t)

   ;;; Log4j
   '(log4j-font-lock-warn-face ((t (:inherit warning))))

   ;;; sh-mode
   '(sh-heredoc ((t (:inherit font-lock-string-face))))
   '(sh-quoted-exec ((t (:inherit font-lock-constant-face))))

   ;;; Ace-Jump
   `(ace-jump-face-foreground ((t (:foreground ,organic-red-4 :underline nil))) t)

   ;;; Diff
   `(diff-indicator-added ((t (:foreground ,organic-green-5))) t)
   `(diff-added ((t (:foreground ,organic-green-5))) t)
   `(diff-indicator-removed ((t (:foreground ,organic-red-5))) t)
   `(diff-removed ((t (:foreground ,organic-red-5))) T)

   ;;; Magit
   `(magit-diff-add ((t (:foreground ,organic-green-5))) t)
   `(magit-diff-del ((t (:foreground ,organic-red-5))) t)
   `(magit-diff-added ((t (:foreground ,organic-green-7 :background "#ddffdd"))) t)
   `(magit-diff-removed ((t (:foreground ,organic-red-6 :background ,organic-red-1))) t)
   `(magit-diff-added-highlight ((t (:foreground ,organic-green-7 :background "#cceecc"))) t)
   `(magit-diff-removed-highlight ((t (:foreground ,organic-red-6 :background ,organic-red-2))) t)
   `(magit-diff-context-highlight ((t (:background ,organic-bg :foreground ,organic-gray-4))) t)
   `(magit-diff-file-heading-highlight ((t (:background ,organic-green-1))) t)
   `(magit-item-highlight ((t (:background ,organic-gray-0))) t)
   `(magit-log-author ((t (:foreground ,organic-green-6))) t)
   `(magit-popup-argument ((t (:foreground ,organic-blue-2))) t)
   `(magit-process-ok ((t (:foreground ,organic-green-4))) t)
   `(magit-section-highlight ((t (:background ,organic-green-1))) t)
   `(magit-branch-remote ((t (:foreground ,organic-olive-0))) t)
   `(magit-section-heading ((t (:bold t :foreground ,organic-yellow-5))) t)

   ;; git-gutter  <TODO>
   `(git-gutter:added ((t (:foreground ,organic-green-5))) t)
   `(git-gutter:deleted ((t (:foreground ,organic-red-5))) t)
   `(git-gutter:modified ((t (:foreground ,organic-blue-1))) t)
   '(git-gutter-fr:added ((t (:foreground "PaleGreen3" :background "PaleGreen3"))) t)
   '(git-gutter-fr:deleted ((t (:foreground "tomato1" :background "tomato1"))) t)
   '(git-gutter-fr:modified ((t (:foreground "LightSkyBlue3" :background "LightSkyBlue3"))) t)

   ;;; Org-Mode
   `(org-table ((t (:foreground ,organic-teal))) t)
   '(org-level-1 ((t (:inherit font-lock-function-name-face :bold t))) t)
   '(org-level-2 ((t (:inherit font-lock-variable-name-face :bold t))) t)
   '(org-level-3 ((t (:inherit font-lock-keyword-face :bold t))) t)
   `(org-level-4 ((t (:foreground ,organic-green-8 :bold t))) t)
   `(org-level-5 ((t (:foreground  ,organic-blue-4 :bold t))) t)
   `(org-level-6 ((t (:foreground ,organic-teal :bold t))) t)
   `(org-block ((,class (:foreground ,organic-fg))))
   `(org-block-begin-line ((t (:foreground ,organic-blue-4))) t)
   `(org-block-end-line ((t (:foreground ,organic-blue-4))) t)

   ;;; Misc
   `(nxml-element-local-name ((t (:foreground ,organic-blue-3 :weight normal))) t)
   `(yas-field-highlight-face ((t (:background ,organic-yellow-2))))
   `(idle-highlight ((t (:background ,organic-yellow-0))) t)
   `(comint-highlight-prompt ((t (:foreground ,organic-blue-4 :weight bold))) t)
   `(flx-highlight-face  ((t (:foreground ,organic-blue-3 :bold t :underline t))) t)

   ;; powerline <TODO>
   `(powerline-active1 ((t (:background ,organic-alum-3 :inherit mode-line))) t)
   `(powerline-active2 ((t (:background ,organic-alum-2 :inherit mode-line))) t)
   '(powerline-inactive1  ((t (:background "grey70" :inherit mode-line-inactive))) t)
   '(powerline-inactive2  ((t (:background "grey80" :inherit mode-line-inactive))) t)

   ;; tabbar <TODO>
   '(tabbar-button ((t :inherit tabbar-default :box (:line-width 1 :color "gray72"))))
   `(tabbar-modified ((t (:inherit tabbar-default :foreground "#118811"
                                   :bold t
                                   :box (:line-width 1 :color ,organic-white
                                                     :style released-button)))))
   `(tabbar-selected ((t :inherit tabbar-default
                         :box (:line-width 1 :color ,organic-white :style pressed-button)
                         :foreground ,organic-alum-6 :bold t)))
   '(tabbar-selected-modified ((t :inherit tabbar-selected)))

   ;;; Web-Mode
   `(web-mode-current-element-highlight-face ((,class (:background ,organic-green-1))))
   `(web-mode-html-tag-face ((t (:foreground ,organic-gray-6))) t)
   `(web-mode-html-attr-name-face ((t (:foreground ,organic-blue-5))) t)
   `(web-mode-doctype-face ((t (:foreground ,organic-blue-4))) t)
   `(web-mode-comment-face ((t (:foreground ,organic-gray-4)) t))
   `(web-mode-css-selector-face ((t (:foreground ,organic-teal))) t)
   `(web-mode-function-call-face ((t (:foreground ,organic-fg))) t)
   `(web-mode-function-name-face ((t :inherit font-lock-function-name-face)))

   `(eldoc-highlight-function-argument
     ((t (:foreground ,organic-green-4 :weight bold))) t)

   `(table-cell ((t (:foreground ,organic-fg :background ,organic-green-0))) T)

   ;;; Dired
   `(diredp-dir-heading ((t (:background ,organic-green-0))))
   `(diredp-dir-name ((t (:foreground ,organic-alum-6))))
   `(diredp-file-name ((t (:foreground ,organic-fg))))
   `(diredp-file-suffix ((t (:foreground ,organic-teal))))

   ;;; Dired+
   `(diredp-compressed-file-suffix ((t (:foreground ,organic-orange))))

   ;;Highlight pair parentheses
   `(show-paren-match ((t (:background ,organic-yellow-1))))
   `(show-paren-mismatch ((t (:background ,organic-red-1))))

   ;;; Rainbow-Delimiters
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

   ))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'organic-green)
;;; organic-green-theme.el ends here
