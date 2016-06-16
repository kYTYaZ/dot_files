(global-unset-key (kbd "s-q"))
(global-set-key (kbd "s-l") 'evil-avy-goto-line)
(global-set-key (kbd "<s-S-return>") 'spacemacs/toggle-maximize-buffer)
(global-set-key (kbd "s-t") 'split-window-right-and-focus)
(global-set-key (kbd "s-T") 'split-window-below-and-focus)
(global-set-key (kbd "s-o") 'helm-projectile-find-file)
(global-set-key (kbd "s-f") 'spacemacs/helm-find-files)
(global-set-key (kbd "C-x C-f") 'spacemacs/helm-find-files)
(global-set-key (kbd "s-F") 'helm-locate)
(global-set-key (kbd "s-B") '(lambda () (interactive) (condition-case nil (progn (setq saved-ido-make-buffer-list-hook ido-make-buffer-list-hook) (setq ido-make-buffer-list-hook nil) (helm-mini) (setq ido-make-buffer-list-hook saved-ido-make-buffer-list-hook)) (error (progn (setq ido-make-buffer-list-hook saved-ido-make-buffer-list-hook) (helm-keyboard-quit))))))
(global-set-key (kbd "s-b") 'helm-projectile-switch-to-buffer)
(global-set-key (kbd "s-p") 'helm-projectile-switch-project)
(global-set-key (kbd "s-P") 'spacemacs/helm-persp-switch-project)
(global-set-key (kbd "s-L") 'spacemacs/helm-perspectives)
(global-set-key (kbd "s-;") '(lambda() (interactive) (if (and (boundp 'inf-ruby-buffer) (equal inf-ruby-buffer (buffer-name))) (delete-window) (if (or (not (boundp 'inf-ruby-buffer)) (not (comint-check-proc inf-ruby-buffer)))  (rvm-use-default)) (call-interactively 'inf-ruby))))
(global-set-key (kbd "s-[") 'spacemacs/previous-useful-buffer)
(global-set-key (kbd "s-]") 'spacemacs/next-useful-buffer)
(global-set-key (kbd "s-/") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "s-\\") '(lambda () (interactive) (switch-to-buffer (current-buffer))))
(global-set-key (kbd "s-M-'") #'(lambda () (interactive) (call-interactively 'split-window-right-and-focus) (ansi-term "/bin/zsh")))
(global-set-key (kbd "s-'") #'(lambda (prefix) (interactive "P") (if (string= "term-mode" major-mode) (shell-pop-out) (let ((shell-pop-autocd-to-working-dir (if prefix nil t))) (spacemacs/shell-pop-ansi-term 0)))))
(global-set-key (kbd "s-\"") #'projectile-shell-pop)
(global-set-key (kbd "s-n") '(lambda () (interactive) (switch-to-buffer-other-window (generate-new-buffer "*Untitled*"))))
(global-set-key (kbd "s-N") '(lambda () (interactive) (switch-to-buffer (generate-new-buffer "*Untitled*"))))
(global-set-key (kbd "s-w") 'delete-window)
(global-set-key (kbd "s-W") '(lambda () (interactive) (kill-this-buffer) (delete-window)))
(global-set-key (kbd "M-s-n") 'make-frame-command)
(global-set-key (kbd "M-s-w") 'delete-frame)
(global-set-key (kbd "s-C") 'bzg-big-fringe-mode)
(global-set-key (kbd "s-g") 'magit-status)
(global-set-key (kbd "s-r c") 'projectile-rails-console)
(global-set-key (kbd "s-r s") 'projectile-rails-server)
(global-set-key (kbd "s-r s-r") 'rvm-activate-corresponding-ruby)
(global-set-key (kbd "s-u") 'universal-argument)
(global-set-key [M-s-tab] #'spacemacs/alternate-buffer-in-persp)
(global-set-key [M-S-tab] #'projectile-project-switch-to-alternate-buffer)

(global-set-key (kbd "C-g") '(lambda () (interactive) (evil-search-highlight-persist-remove-all) (keyboard-quit)))
(global-set-key [M-tab] 'spacemacs/alternate-buffer)
(global-set-key (kbd "<f5>") #'(lambda () (interactive) (unless (boundp 'ggtags-mode) (ggtags-mode)) (projectile-regenerate-tags)))
(global-set-key (kbd "M-@") 'set-mark-command)
(global-set-key (kbd "s-m") 'set-mark-command)
(global-set-key (kbd "C-x s-m") 'pop-global-mark)
(global-set-key (kbd "<f1>") #'(lambda () (interactive) (condition-case nil (neotree-find-project-root) (error (neotree-toggle))) (window-numbering-update)))
(global-set-key (kbd "<S-f1>") #'(lambda () (interactive) (neotree-toggle) (window-numbering-update)))
(global-set-key [mouse-4] '(lambda () (interactive) (scroll-down 1)))
(global-set-key [mouse-5] '(lambda () (interactive) (scroll-up 1)))

(global-set-key (kbd "M-h") #'evil-window-left)
(global-set-key (kbd "M-j") #'evil-window-down)
(global-set-key (kbd "M-k") #'evil-window-up)
(global-set-key (kbd "M-l") #'evil-window-right)

(global-set-key (kbd "M-H") #'evil-window-move-far-left)
(global-set-key (kbd "M-J") #'evil-window-move-very-bottom)
(global-set-key (kbd "M-K") #'evil-window-move-very-top)
(global-set-key (kbd "M-L") #'evil-window-move-far-right)

(global-set-key (kbd "s-M") #'helm-mu)

(global-set-key (kbd "s-0") 'spacemacs/persp-switch-to-0)
(global-set-key (kbd "s-1") 'spacemacs/persp-switch-to-1)
(global-set-key (kbd "s-2") 'spacemacs/persp-switch-to-2)
(global-set-key (kbd "s-3") 'spacemacs/persp-switch-to-3)
(global-set-key (kbd "s-4") 'spacemacs/persp-switch-to-4)
(global-set-key (kbd "s-5") 'spacemacs/persp-switch-to-5)
(global-set-key (kbd "s-6") 'spacemacs/persp-switch-to-6)
(global-set-key (kbd "s-7") 'spacemacs/persp-switch-to-7)
(global-set-key (kbd "s-8") 'spacemacs/persp-switch-to-8)
(global-set-key (kbd "s-9") 'spacemacs/persp-switch-to-9)
(global-set-key (kbd "<f12>") #'lx/open-mail-custom-layout-or-mu4e-main)
