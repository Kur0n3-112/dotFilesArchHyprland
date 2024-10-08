(setq doom-font (font-spec :family "Hack Nerd Font Mono" :size 15)
      doom-variable-pitch-font (font-spec :family "Ubuntu Nerd Font" :size 10)
      doom-symbol-font (font-spec :family "Symbols Nerd Font" :size 10))

(setq doom-theme 'doom-dracula)

(setq display-line-numbers-type t)

(after! org
  (setq org-directory "~/Documentos/org/kurOrgFiles")
  (org-agenda-files '("/home/kur/Documentos/org/kurOrgFiles/school.org" "/home/kur/Documentos/org/kurOrgFiles/ToDo.org")))

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
