(setq doom-font (font-spec :family "JetBrains Mono" :size 15)
      doom-symbol-font (font-spec :family "Hack Nerd Font" :size 10))

(setq doom-theme 'doom-dracula)

(global-display-line-numbers-mode t)  ; Activa los números de línea globalmente
(setq display-line-numbers-type 'relative)  ; Configura los números de línea relativos

;;(setq-default truncate-lines non-nil)
;;(setq-default toggle-truncate-lines l) ;; esta tambien funciona pero he preferido activar la otra.
;;(add-hook 'c-mode-hook (lambda () (setq truncate-lines nil)))
;;(add-hook 'latex-mode-hook (lambda () (setq truncate-lines t)))
(defun my-c-mode-config ()
  "Called in `c-mode-hook'."
  (setq truncate-lines nil))

(add-hook 'c-mode-hook #'my-c-mode-config)

(setq
   ;; org-fancy-priorities-list '("[A]" "[B]" "[C]")
   ;; org-fancy-priorities-list '("❗" "[B]" "[C]")
   org-fancy-priorities-list '("🟥" "🟧" "🟨")
   org-priority-faces
   '((?A :foreground "#ff6c6b" :weight bold)
     (?B :foreground "#98be65" :weight bold)
     (?C :foreground "#c678dd" :weight bold))
   org-agenda-block-separator 8411)

(setq org-agenda-custom-commands
      '(("v" "A better agenda view"
         ((tags "PRIORITY=\"A\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "High-priority unfinished tasks:")))
          (tags "PRIORITY=\"B\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "Medium-priority unfinished tasks:")))
          (tags "PRIORITY=\"C\""
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "Low-priority unfinished tasks:")))
          (tags "customtag"
                ((org-agenda-skip-function '(org-agenda-skip-entry-if 'todo 'done))
                 (org-agenda-overriding-header "Tasks marked with customtag:")))

          (agenda "")
          (alltodo "")))))

;; This makes that when you set a TODO item DONE it sets the time when you close the item.
(setq org-log-done 'time)
