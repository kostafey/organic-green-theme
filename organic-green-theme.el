;;; organic-green-theme.el --- Light green color theme.

;;; Copyright © 2009-2026 - Kostafey <kostafey@gmail.com>

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

(deftheme organic-green "Light green color theme.")

(let (;; base color palette
      (organic-fg               "#326B6B")
      (organic-bg               "#F0FFF0")
      (organic-cursor-fg        "#225522")
      (organic-cursor-bg        "#D5F0D5")
      (organic-highlight-yellow "#F0F0A1")
      (organic-highlight-green  "#C1F3CA")
      (organic-highlight-gray   "#E3F2E1")
      (organic-highlight-blue   "#ACD7E5")

      (organic-dark-black       "#24292E")
      (organic-black            "#2E3436")
      (organic-green-black      "#444D56")
      (organic-dark-gray        "#5F5F5F")
      (organic-medium-gray      "#666666")
      (organic-gray             "#7F7F7F")
      (organic-light-gray       "#B2BDB1")
      (organic-dark-white       "#CCCCCC")
      (organic-shadow           "#D3E0D3")
      (organic-light-white      "#EEEEEC")

      (organic-red             "#EF2929")
      (organic-orange          "#CE5C00")
      (organic-yellow          "#B8860B")
      (organic-sun             "#999900")
      (organic-green           "#119911")
      (organic-teal            "#008888")
      (organic-blue            "#0065CC")
      (organic-violet          "#5544EE")
      (organic-purple          "#912CEE")
      (organic-magenta         "#D33682")

      (organic-sign-add        "#27A745")
      (organic-sign-change     "#2188FF")
      (organic-sign-delete     "#D73A49")

      (organic-marker-yellow   "#FFF68F")
      (organic-marker-green    "#B7EB8F")
      (organic-marker-teal     "#76DDBA")
      (organic-marker-blue     "#91D5FF")
      (organic-marker-violet   "#ADC6FF")
      (organic-marker-purple   "#D3ADF7")
      (organic-marker-pink     "#FFADD2")
      (organic-marker-red      "#FFA39E")
      (organic-marker-orange   "#FFD591"))

  (custom-theme-set-faces
   'organic-green
   ;; essential styles
   `(default ((t (:foreground ,organic-fg :background ,organic-bg))))

   ;; base
   `(bold ((t (:weight bold))))
   `(extra-bold ((t (:weight extra-bold))))
   `(semi-bold ((t (:weight semi-bold))))
   `(italic ((t (:slant italic))))
   `(error ((t (:foreground ,organic-red))))
   `(escape-glyph ((t (:foreground ,organic-sun))))
   `(warning ((t (:foreground ,organic-orange))))
   `(success ((t (:foreground ,organic-sun))))
   `(compilation-info ((t (:foreground ,organic-green))))
   `(shadow ((t (:foreground ,organic-gray))))
   `(match ((t (:foreground ,organic-yellow))))
   `(menu ((t (:foreground ,organic-violet))))
   `(completions-annotations ((t (:foreground ,organic-green))))
   `(completions-common-part ((t (:foreground ,organic-blue :bold t :underline t))))
   `(completions-first-difference ((t (:foreground ,organic-blue))))
   `(font-lock-builtin-face ((t (:foreground ,organic-teal))))
   `(font-lock-comment-face ((t (:foreground ,organic-gray))))
   `(font-lock-constant-face ((t (:foreground ,organic-blue))))
   `(font-lock-function-name-face ((t (:foreground ,organic-blue))))
   `(font-lock-keyword-face ((t (:foreground ,organic-purple))))
   `(font-lock-string-face ((t (:foreground ,organic-green))) t)
   `(font-lock-doc-face ((t (:foreground ,organic-green))) t)
   `(font-lock-type-face ((t (:foreground ,organic-teal))))
   `(font-lock-variable-name-face ((t (:foreground ,organic-yellow))))
   `(font-lock-warning-face ((t (:foreground ,organic-orange))))

   ;; ui
   `(cursor ((t (:background ,organic-cursor-fg))))
   `(fringe ((t (:background ,organic-highlight-gray :foreground ,organic-gray))))
   ;; TODO:
   `(vertical-border ((t (:foreground ,organic-medium-gray))))
   `(minibuffer-prompt ((t (:foreground ,organic-blue :weight bold))))
   `(mode-line ((t :background ,organic-dark-white :foreground ,organic-dark-black)))
   `(mode-line-inactive ((t :background ,organic-shadow :foreground ,organic-dark-black)))
   `(link ((t (:underline t :foreground ,organic-blue))))
   `(link-visited ((t (:underline t :foreground ,organic-blue))))
   `(highlight ((t (:background ,organic-highlight-green))))
   `(hl-line ((t (:background ,organic-cursor-bg :inverse-video nil))))
   `(region ((t (:background ,organic-highlight-yellow))))
   `(lazy-highlight ((t (:background ,organic-highlight-green :inverse-video nil))))
   `(isearch ((t (:foreground ,organic-fg :background ,organic-marker-yellow :inverse-video nil))))
   `(cua-rectangle ((t (:background ,organic-marker-green))))
   `(secondary-selection ((t (:background ,organic-highlight-blue))))
   `(trailing-whitespace ((t (:background ,organic-red))))

   ;; external packages
   ;; tab-line
   `(tab-line
     ((t (:inherit nil
          :foreground ,organic-green-black
          :background ,organic-highlight-gray
          :height 0.9
          :box nil))))
   `(tab-line-tab
     ((t (:inherit nil
          :foreground ,organic-green-black
          :background ,organic-highlight-gray
          :weight normal
          :box nil))))
   `(tab-line-tab-inactive
     ((t (:inherit nil
          :foreground ,organic-green-black
          :background ,organic-shadow
          :weight normal
          :box nil))))
   `(tab-line-highlight
     ((t (:inherit nil
          :foreground ,organic-green-black
          :background ,organic-bg
          :weight normal
          :box nil))))
   `(tab-line-tab-current
     ((t (:inherit nil
          :foreground ,organic-green-black
          :background ,organic-bg
          :weight semi-bold
          :box nil))))

   ;; Tabbar
   `(tabbar-default ((t (:inherit variable-pitch
                         :height 0.8
                         :foreground ,organic-green-black
                         :background ,organic-highlight-gray))))
   `(tabbar-button ((t (:inherit tabbar-default
                        :background ,organic-shadow))))
   `(tabbar-modified ((t (:inherit tabbar-button
                          :foreground ,organic-green
                          :bold t))))
   `(tabbar-unselected ((t (:inherit tabbar-button))))
   `(tabbar-selected ((t (:inherit tabbar-button
                          :foreground ,organic-green-black
                          :background ,organic-bg
                          :bold t))))
   '(tabbar-selected-modified ((t :inherit tabbar-selected)))

   ;; Jabber
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
   '(jabber-chat-prompt-foreign ((t (:inherit font-lock-function-name-face))))
   '(jabber-chat-prompt-system ((t (:inherit font-lock-comment-face :bold t))))
   '(jabber-rare-time-face ((t (:inherit font-lock-function-name-face))))
   '(jabber-activity-face ((t (:inherit jabber-chat-prompt-foreign))))
   '(jabber-activity-personal-face ((t (:inherit jabber-chat-prompt-local :bold t))))

   ;; LaTeX
   `(font-latex-bold-face ((t (:bold t :foreground ,organic-purple))))
   `(font-latex-italic-face ((t (:italic t :foreground ,organic-blue))))
   `(font-latex-math-face ((t (:foreground ,organic-sun))))
   `(font-latex-sedate-face ((t (:foreground ,organic-dark-gray))))
   '(font-latex-string-face ((t (:inherit font-lock-string-face))))
   `(font-latex-warning-face ((t (:foreground ,organic-orange))))

   ;; Quack
   `(quack-pltish-paren-face ((t (:foreground ,organic-yellow))))
   '(quack-pltish-keyword-face ((t (:inheit font-lock-keyword-face))))

   ;; js2-mode
   `(js2-external-variable ((t (:inherit warning))))
   `(js2-function-param ((t (:foreground ,organic-teal))))
   `(js2-jsdoc-type ((t (:foreground ,organic-blue))))
   `(js2-jsdoc-tag ((t (:foreground ,organic-blue))))
   `(js2-jsdoc-value ((t (:foreground ,organic-teal))))

   ;; clojure/CIDER
   `(cider-result-overlay-face ((t (:background ,organic-bg :box (:line-width -1 :color ,organic-yellow)))))

   ;; Java
   '(jdee-java-properties-font-lock-comment-face ((t (:inherit font-lock-comment-face))))
   `(jdee-java-properties-font-lock-equal-face ((t (:foreground ,organic-blue))))
   '(jdee-java-properties-font-lock-substitution-face ((t (:inherit font-lock-function-name-face))))
   '(jdee-java-properties-font-lock-class-name-face ((t (:inherit font-lock-constant-face))))
   '(jdee-java-properties-font-lock-value-face ((t (:inherit font-lock-string-face))))
   `(jdee-java-properties-font-lock-backslash-face ((t (:foreground ,organic-sun))))

   ;; Scala
   `(scala-font-lock:var-face ((t (:foreground ,organic-orange))))
   `(scala-font-lock-var-face ((t (:foreground ,organic-orange))))

   ;; Emacs Lisp
   `(elisp-shorthand-font-lock-face ((t (:foreground ,organic-violet))))

   ;; Lsp
   `(lsp-ui-doc-border ((t (:background ,organic-gray))))
   `(lsp-ui-doc-background ((t (:background ,organic-highlight-green))))
   `(lsp-ui-sideline-code-action ((t (:background ,organic-highlight-green :foreground ,organic-gray))))
   `(lsp-metals-face-overlay ((t (:foreground ,organic-magenta))))

   ;; Tcl
   `(tcl-substitution-char-face ((t (:foreground ,organic-teal))))

   ;; Erc
   `(erc-action-face ((t (:foreground ,organic-gray :weight bold))))
   `(erc-command-indicator-face ((t (:foreground ,organic-dark-gray :weight bold))))
   `(erc-nick-default-face ((t (:foreground ,organic-purple :weight bold))))
   `(erc-input-face ((t (:foreground ,organic-blue))))
   `(erc-notice-face ((t (:foreground ,organic-green :weight bold))))
   `(erc-timestamp-face ((t (:foreground ,organic-green :weight bold))))

   ;; Circe
   `(circe-server-face ((t (:foreground ,organic-green))))
   `(circe-prompt-face ((t (:foreground ,organic-dark-gray :weight bold))))
   `(circe-highlight-nick-face ((t (:foreground ,organic-orange))))
   `(lui-time-stamp-face ((t (:foreground ,organic-green))))

   ;; Markdown
   `(markdown-pre-face ((t (:foreground ,organic-green-black :family ,(face-attribute 'default :family)))))
   `(markdown-markup-face ((t (:foreground ,organic-green-black :family ,(face-attribute 'default :family)))))
   `(markdown-language-keyword-face ((t (:foreground ,organic-green :family ,(face-attribute 'default :family)))))
   `(markdown-code-face ((t (:foreground ,organic-green :family ,(face-attribute 'default :family)))))

   ;; Rst
   '(rst-definition ((t (:inherit font-lock-constant-face))) t)
   `(rst-level-1 ((t (:foreground ,organic-purple))) t)
   `(rst-level-2 ((t (:foreground ,organic-blue))))
   `(rst-level-3 ((t (:foreground ,organic-yellow))))
   `(rst-level-4 ((t (:foreground ,organic-green))))
   `(rst-level-5 ((t (:foreground ,organic-sun))))
   `(rst-level-6 ((t (:foreground ,organic-orange))))
   '(rst-block ((t (:inherit font-lock-function-name-face :bold t))) t)
   '(rst-external ((t (:inherit font-lock-constant-face))) t)
   '(rst-directive ((t (:inheit font-lock-builtin-face))) t)
   '(rst-literal ((t (:inheit font-lock-string-face))))
   '(rst-emphasis1 ((t (:inherit italic))) t)
   `(rst-adornment ((t (:bold t :foreground ,organic-blue))))

   ;; Whitespace-Mode
   `(whitespace-empty ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-indentation ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-newline ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-space-after-tab ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-tab ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-hspace ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-line ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-space ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-space-before-tab ((t (:background ,organic-bg :foreground ,organic-light-gray))) t)
   `(whitespace-trailing ((t (:background ,organic-bg :foreground ,organic-red))) t)

   ;; Log4j
   '(log4j-font-lock-warn-face ((t (:inherit warning))))

   ;; sh-mode
   '(sh-heredoc ((t (:inherit font-lock-string-face))))
   '(sh-quoted-exec ((t (:inherit font-lock-constant-face))))

   ;; Ace-Jump
   `(ace-jump-face-foreground ((t (:background ,organic-marker-yellow :underline nil))) t)
   `(ace-jump-face-background ((t (:foreground ,organic-dark-gray :underline nil))) t)

   ;; Diff
   `(diff-indicator-added ((t (:foreground ,organic-green)) t))
   `(diff-added ((t (:foreground ,organic-green)) t))
   `(diff-indicator-removed ((t (:foreground ,organic-red))) t)
   `(diff-removed ((t (:foreground ,organic-red))) T)

   ;; Magit
   `(magit-diff-add ((t (:foreground ,organic-green)) t))
   `(magit-diff-del ((t (:foreground ,organic-red))) t)
   `(magit-diff-added ((t (:foreground ,organic-green :background ,organic-bg))) t)
   `(magit-diff-removed ((t (:foreground ,organic-sign-delete :background ,organic-bg))) t)
   `(magit-diff-added-highlight ((t (:foreground ,organic-green :background ,organic-cursor-bg))) t)
   `(magit-diff-removed-highlight ((t (:foreground ,organic-sign-delete :background ,organic-cursor-bg))) t)
   `(magit-diff-context-highlight ((t (:foreground ,organic-green-black :background ,organic-cursor-bg))) t)
   `(magit-diff-file-heading-highlight ((t (:background ,organic-cursor-bg))) t)
   `(magit-item-highlight ((t (:background ,organic-highlight-gray))) t)
   `(magit-log-author ((t (:foreground ,organic-sun))) t)
   `(magit-log-date ((t (:foreground ,organic-dark-gray))) t)
   `(magit-popup-argument ((t (:foreground ,organic-blue))) t)
   `(magit-process-ok ((t (:foreground ,organic-green))) t)
   `(magit-section-highlight ((t (:background ,organic-cursor-bg))) t)
   `(magit-branch-remote ((t (:foreground ,organic-yellow))) t)
   `(magit-section-heading ((t (:foreground ,organic-purple))) t)
   `(magit-branch-local ((t (:foreground ,organic-yellow))) t)
   `(magit-tag ((t (:foreground ,organic-sun))) t)
   `(magit-filename ((t (:inherit default))) t)
   `(git-commit-summary ((t (:foreground ,organic-teal))) t)

   ;; Git-Gutter
   `(git-gutter:added ((t (:foreground ,organic-green)) t))
   `(git-gutter:deleted ((t (:foreground ,organic-red))) t)
   `(git-gutter:modified ((t (:foreground ,organic-blue))) t)
   `(git-gutter-fr:added ((t (:foreground ,organic-sign-add :background ,organic-highlight-gray)) t))
   `(git-gutter-fr:deleted ((t (:foreground ,organic-sign-delete :background ,organic-highlight-gray))) t)
   `(git-gutter-fr:modified ((t (:foreground ,organic-sign-change :background ,organic-highlight-gray))) t)
   ;; diff-hl
   `(diff-hl-insert ((t (:foreground ,organic-sign-add :background ,organic-highlight-gray)) t))
   `(diff-hl-delete ((t (:foreground ,organic-sign-delete :background ,organic-highlight-gray))) t)
   `(diff-hl-change ((t (:foreground ,organic-sign-change :background ,organic-highlight-gray))) t)

   ;; Org-Mode
   `(org-table ((t (:foreground ,organic-teal))) t)
   `(org-level-1 ((t (:foreground ,organic-purple))) t)
   `(org-level-2 ((t (:foreground ,organic-blue))) t)
   `(org-level-3 ((t (:foreground ,organic-yellow))) t)
   `(org-level-4 ((t (:foreground ,organic-green))) t)
   `(org-level-5 ((t (:foreground ,organic-sun))) t)
   `(org-level-6 ((t (:foreground ,organic-orange))) t)
   `(org-block ((t (:foreground ,organic-black))))
   `(org-block-begin-line ((t (:foreground ,organic-gray))) t)
   `(org-block-end-line ((t (:foreground ,organic-gray))) t)
   `(org-done ((t (:inherit success))) t)
   `(org-todo ((t (:inherit warning))) t)

   ;; Misc
   `(nxml-element-local-name ((t (:foreground ,organic-blue))) t)
   `(yas-field-highlight-face ((t (:background ,organic-yellow))))
   `(idle-highlight ((t (:background ,organic-highlight-green))) t)
   `(comint-highlight-prompt ((t (:foreground ,organic-blue))) t)
   `(flx-highlight-face  ((t (:foreground ,organic-blue :bold t :underline t))) t)

   ;; Powerline
   `(powerline-active1 ((t (:background ,organic-light-gray :inherit mode-line))) t)
   `(powerline-active2 ((t (:background ,organic-dark-white :inherit mode-line))) t)
   `(powerline-inactive1  ((t (:background ,organic-light-white :inherit mode-line-inactive))) t)
   `(powerline-inactive2  ((t (:background ,organic-light-white :inherit mode-line-inactive))) t)

   ;; Company
   `(company-tooltip ((t :foreground ,organic-dark-gray :background ,organic-light-white)))
   `(company-tooltip-annotation ((t :foreground ,organic-fg)))
   `(company-tooltip-common ((t :foreground ,organic-blue)))
   `(company-tooltip-search ((t :background ,organic-yellow)))
   `(company-tooltip-search-selection ((t :background ,organic-yellow)))
   `(company-echo-common ((t :foreground ,organic-violet)))
   `(company-tooltip-scrollbar-thumb ((t :background ,organic-dark-gray)))
   `(company-tooltip-scrollbar-track ((t :background ,organic-dark-white)))
   `(company-quickhelp-color-background ((t :background ,organic-light-white)))

   `(corfu-default ((t :foreground ,organic-dark-gray :background ,organic-light-white)))

   ;; Web-Mode
   `(web-mode-current-element-highlight-face ((t (:background ,organic-highlight-green))))
   `(web-mode-html-tag-face ((t (:foreground ,organic-black))) t)
   `(web-mode-html-attr-name-face ((t (:foreground ,organic-blue))) t)
   `(web-mode-doctype-face ((t (:foreground ,organic-blue))) t)
   `(web-mode-comment-face ((t (:foreground ,organic-gray)) t))
   `(web-mode-css-selector-face ((t (:foreground ,organic-teal))) t)
   `(web-mode-function-call-face ((t (:foreground ,organic-fg))) t)
   `(web-mode-function-name-face ((t :inherit font-lock-function-name-face)))

   `(eldoc-highlight-function-argument
     ((t (:foreground ,organic-green :weight bold))) t)

   `(table-cell ((t (:foreground ,organic-fg :background ,organic-highlight-green))) t)

   ;; Dired
   `(diredp-dir-heading ((t (:background ,organic-green))))
   `(diredp-dir-name ((t (:foreground ,organic-black))))
   `(diredp-file-name ((t (:foreground ,organic-fg))))
   `(diredp-file-suffix ((t (:foreground ,organic-teal))))

   ;; Dired+
   `(diredp-compressed-file-suffix ((t (:foreground ,organic-orange))))

   ;;Highlight pair parentheses
   `(show-paren-match ((t (:background ,organic-highlight-yellow))))
   `(show-paren-mismatch ((t (:background ,organic-marker-red))))

   ;; Rainbow-Delimiters
   ;; (1 (2 (3 (4 (5 (6 (7 (8 (9 (10 (11 (12))))))))))))
   `(rainbow-delimiters-depth-1-face ((t (:foreground ,organic-medium-gray :background ,organic-bg))))
   `(rainbow-delimiters-depth-2-face ((t (:foreground ,organic-violet :background ,organic-bg))))
   `(rainbow-delimiters-depth-3-face ((t (:foreground ,organic-blue :background ,organic-bg))))
   `(rainbow-delimiters-depth-4-face ((t (:foreground ,organic-teal :background ,organic-bg))))
   `(rainbow-delimiters-depth-5-face ((t (:foreground ,organic-green :background ,organic-bg))))
   `(rainbow-delimiters-depth-6-face ((t (:foreground ,organic-sun :background ,organic-bg))))
   `(rainbow-delimiters-depth-7-face ((t (:foreground ,organic-yellow :background ,organic-bg))))
   `(rainbow-delimiters-depth-8-face ((t (:foreground ,organic-orange :background ,organic-bg))))
   `(rainbow-delimiters-depth-9-face ((t (:foreground ,organic-magenta :background ,organic-bg))))
   `(rainbow-delimiters-base-error-face ((t (:foreground ,organic-red)))))

  (custom-set-faces
   ;; Multi-Magit
   `(multi-magit-repo-heading ((t (:inherit magit-section-heading :box nil))))

   ;; Speedbar
   `(speedbar-selected-face ((t (:foreground ,organic-green :underline t))))

   ;; fill-column-indicator for `emacs-major-version' >= 27
   `(fill-column-indicator ((t (:foreground ,organic-dark-white :weight normal)))))

  (custom-theme-set-variables
   'organic-green

   ;; marker
   `(highlight-symbol-colors
     '(,organic-marker-yellow
       ,organic-marker-green
       ,organic-marker-teal
       ,organic-marker-blue
       ,organic-marker-violet
       ,organic-marker-purple
       ,organic-marker-pink
       ,organic-marker-red
       ,organic-marker-orange))

   ;; org-mode code blocks
   `(org-src-block-faces '(("emacs-lisp" (:background ,organic-bg))
                           ("dot" (:foreground ,organic-dark-gray))))))

;;;###autoload
(when (and (boundp 'custom-theme-load-path) load-file-name)
  (add-to-list 'custom-theme-load-path
               (file-name-as-directory (file-name-directory load-file-name))))

(provide-theme 'organic-green)
;;; organic-green-theme.el ends here
