(with-eval-after-load 'evil-mc
  (let ((keys '(("C-m" . evil-mc-make-all-cursors)
                ("C-u" . evil-mc-undo-all-cursors)
                ("C-s" . evil-mc-pause-cursors)
                ("C-r" . evil-mc-resume-cursors)
                ("C-S-r" . undo-tree-redo)
                ("C-h" . evil-mc-make-cursor-here)
                ("C-j" . evil-mc-make-cursor-move-next-line)
                ("C-k" . evil-mc-make-cursor-move-prev-line)
                ("M-j" . evil-mc-skip-and-goto-next-cursor)
                ("M-k" . evil-mc-skip-and-goto-prev-cursor)
                ("M-n" . evil-mc-make-and-goto-next-cursor)
                ("M-p" . evil-mc-make-and-goto-prev-cursor)
                ("C-n" . evil-mc-make-and-goto-next-match)
                ("C-t" . evil-mc-skip-and-goto-next-match)
                ("C-p" . evil-mc-make-and-goto-prev-match))))
    (dolist (key-data keys)
      (evil-define-key 'normal evil-mc-key-map (kbd (car key-data)) (cdr key-data))
      (evil-define-key 'visual evil-mc-key-map (kbd (car key-data)) (cdr key-data))))

  (setq evil-mc-custom-known-commands '((evil-org-delete-char . ((:default . evil-mc-execute-default-evil-delete)))
                                        (evil-org-delete . ((:default . evil-mc-execute-default-evil-delete))))))
