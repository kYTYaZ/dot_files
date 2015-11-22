;; -*- mode: emacs-lisp -*-
;; This file is loaded by Spacemacs at startup.
;; It must be stored in your home directory.

(defun dotspacemacs/layers ()
  "Configuration Layers declaration."
  (setq-default
   ;; List of additional paths where to look for configuration layers.
   ;; Paths must have a trailing slash (ie. `~/.mycontribs/')
   dotspacemacs-configuration-layer-path '("~/.config/spacemacs-config-layers/")
   ;; List of configuration layers to load. If it is the symbol `all' instead
   ;; of a list then all discovered layers will be installed.
   dotspacemacs-configuration-layers
   '(
     ;; ----------------------------------------------------------------
     ;; Example of useful layers you may want to use right away.
     ;; Uncomment some layer names and press <SPC f e R> (Vim style) or
     ;; <M-m f e R> (Emacs style) to install them.
     ;; ----------------------------------------------------------------
     osx
     (auto-completion :variables auto-completion-show-snippets-in-popup t)
     better-defaults
     emacs-lisp
     git
     github
     gtags
     markdown
     (org :variables
          org-enable-github-support t)
     (shell :variables
            shell-default-height 38
            shell-default-position 'bottom
            shell-default-shell 'ansi-term
            shell-default-term-shell "/bin/zsh")
     syntax-checking
     version-control
     (ruby :variables ruby-enable-enh-ruby-mode t)
     yaml
     ruby-on-rails
     shell-scripts
     clojure
     dash
     emacs-lisp
     ;; evernote
     evil-commenary
     extra-langs
     html
     javascript
     python
     restclient
     rust
     scala
     chrome
     emoji
     (ibuffer :variables ibuffer-group-buffers-by 'projects)
     search-engine
     eyebrowse
     gnus
     chinese
     ; evil-easymotion
     )
   ;; List of additional packages that will be installed wihout being
   ;; wrapped in a layer. If you need some configuration for these
   ;; packages then consider to create a layer, you can also put the
   ;; configuration in `dotspacemacs/config'.
   dotspacemacs-additional-packages '(ox-reveal)
   ;; A list of packages and/or extensions that will not be install and loaded.
   dotspacemacs-excluded-packages '()
   ;; If non-nil spacemacs will delete any orphan packages, i.e. packages that
   ;; are declared in a layer which is not a member of
   ;; the list `dotspacemacs-configuration-layers'
   dotspacemacs-delete-orphan-packages t))

(defun dotspacemacs/init ()
  "Initialization function.
This function is called at the very startup of Spacemacs initialization
before layers configuration."
  ;; This setq-default sexp is an exhaustive list of all the supported
  ;; spacemacs settings.
  (setq-default
   ;; Either `vim' or `emacs'. Evil is always enabled but if the variable
   ;; is `emacs' then the `holy-mode' is enabled at startup.
   dotspacemacs-editing-style 'vim
   ;; If non nil output loading progress in `*Messages*' buffer.
   dotspacemacs-verbose-loading nil
   ;; Specify the startup banner. Default value is `official', it displays
   ;; the official spacemacs logo. An integer value is the index of text
   ;; banner, `random' chooses a random text banner in `core/banners'
   ;; directory. A string value must be a path to an image format supported
   ;; by your Emacs build.
   ;; If the value is nil then no banner is displayed.
   dotspacemacs-startup-banner 'official
   ;; List of items to show in the startup buffer. If nil it is disabled.
   ;; Possible values are: `recents' `bookmarks' `projects'."
   dotspacemacs-startup-lists '(recents projects)
   ;; List of themes, the first of the list is loaded when spacemacs starts.
   ;; Press <SPC> T n to cycle to the next theme in the list (works great
   ;; with 2 themes variants, one dark and one light)
   ; dotspacemacs-themes '(solarized-light
   ;                       solarized-dark
   ;                       spacemacs-light
   ;                       spacemacs-dark
   ;                       leuven
   ;                       monokai
   ;                       zenburn)
   dotspacemacs-themes (if (display-graphic-p) '(spacemacs-dark solarized-light) '(spacemacs-dark))
   ;; If non nil the cursor color matches the state color.
   dotspacemacs-colorize-cursor-according-to-state t
   ;; Default font. `powerline-scale' allows to quickly tweak the mode-line
   ;; size to make separators look not too crappy.
   dotspacemacs-default-font '("Monaco"
                               :size 12
                               :weight normal
                               :width normal
                               :powerline-scale 1.1)
   ;; The leader key
   dotspacemacs-leader-key "SPC"
   ;; The leader key accessible in `emacs state' and `insert state'
   dotspacemacs-emacs-leader-key "S-SPC"
   ;; Major mode leader key is a shortcut key which is the equivalent of
   ;; pressing `<leader> m`. Set it to `nil` to disable it.
   dotspacemacs-major-mode-leader-key ","
   ;; Major mode leader key accessible in `emacs state' and `insert state'
   dotspacemacs-major-mode-emacs-leader-key "s-,"
   ;; The command key used for Evil commands (ex-commands) and
   ;; Emacs commands (M-x).
   ;; By default the command key is `:' so ex-commands are executed like in Vim
   ;; with `:' and Emacs commands are executed with `<leader> :'.
   dotspacemacs-command-key ":"
   ;; If non nil then `ido' replaces `helm' for some commands. For now only
   ;; `find-files' (SPC f f) is replaced.
   dotspacemacs-use-ido nil
   ;; If non nil the paste micro-state is enabled. When enabled pressing `p`
   ;; several times cycle between the kill ring content.
   dotspacemacs-enable-paste-micro-state nil
   ;; Guide-key delay in seconds. The Guide-key is the popup buffer listing
   ;; the commands bound to the current keystrokes.
   dotspacemacs-guide-key-delay 0.4
   ;; If non nil a progress bar is displayed when spacemacs is loading. This
   ;; may increase the boot time on some systems and emacs builds, set it to
   ;; nil ;; to boost the loading time.
   dotspacemacs-loading-progress-bar t
   ;; If non nil the frame is fullscreen when Emacs starts up.
   ;; (Emacs 24.4+ only)
   dotspacemacs-fullscreen-at-startup nil
   ;; If non nil `spacemacs/toggle-fullscreen' will not use native fullscreen.
   ;; Use to disable fullscreen animations in OSX."
   dotspacemacs-fullscreen-use-non-native nil
   ;; If non nil the frame is maximized when Emacs starts up.
   ;; Takes effect only if `dotspacemacs-fullscreen-at-startup' is nil.
   ;; (Emacs 24.4+ only)
   dotspacemacs-maximized-at-startup t
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's active or selected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-active-transparency 90
   ;; A value from the range (0..100), in increasing opacity, which describes
   ;; the transparency level of a frame when it's inactive or deselected.
   ;; Transparency can be toggled through `toggle-transparency'.
   dotspacemacs-inactive-transparency 90
   ;; If non nil unicode symbols are displayed in the mode line.
   dotspacemacs-mode-line-unicode-symbols t
   ;; If non nil smooth scrolling (native-scrolling) is enabled. Smooth
   ;; scrolling overrides the default behavior of Emacs which recenters the
   ;; point when it reaches the top or bottom of the screen.
   dotspacemacs-smooth-scrolling t
   ;; If non-nil smartparens-strict-mode will be enabled in programming modes.
   dotspacemacs-smartparens-strict-mode nil
   ;; Select a scope to highlight delimiters. Possible value is `all',
   ;; `current' or `nil'. Default is `all'
   dotspacemacs-highlight-delimiters 'all
   ;; If non nil advises quit functions to keep server open when quitting.
   dotspacemacs-persistent-server nil
   ;; List of search tool executable names. Spacemacs uses the first installed
   ;; tool of the list. Supported tools are `ag', `pt', `ack' and `grep'.
   dotspacemacs-search-tools '("ack" "ag" "pt" "grep")
   ;; The default package repository used if no explicit repository has been
   ;; specified with an installed package.
   ;; Not used for now.
   dotspacemacs-default-package-repository nil
   )
  ;; User initialization goes here

  (setq-default ruby-version-manager 'rvm)
  (setq-default ruby-enable-ruby-on-rails-support t)

  (defun spacemacs/set-state-faces()
    (when (string= "spacemacs-dark" spacemacs--cur-theme)
      (custom-set-faces
       ;; custom-set-faces was added by Custom.
       ;; If you edit it by hand, you could mess it up, so be careful.
       ;; Your init file should contain only one such instance.
       ;; If there is more than one, they won't work right.
       '(enh-ruby-op-face ((t (:foreground "#b2b2b2"))))
       '(enh-ruby-string-delimiter-face ((t (:foreground "#3c95d2"))))
       '(linum ((t (:background "#292b2e" :foreground "#44505c"))))
       '(mode-line ((t (:background "#222226" :foreground "#b2b2b2" :box (:line-width 1 :color "#5d4d7a") :overline nil :underline nil))))
       '(mode-line-inactive ((t (:background "#292b2e" :foreground "#b2b2b2" :box (:line-width 1 :color "#5d4d7a") :overline nil :underline nil))))
       '(diff-hl-change ((t (:background "#69B7F0" :foreground "#00629D"))))
       '(diff-hl-delete ((t (:background "#FF6E64" :foreground "#990A1B"))))
       '(diff-hl-insert ((t (:background "#B4C342" :foreground "#546E00"))))
       )
       (set-mouse-color "white"))
    (when (string= "solarized-light" spacemacs--cur-theme)
      (custom-set-faces
       ;; custom-set-faces was added by Custom.
       ;; If you edit it by hand, you could mess it up, so be careful.
       ;; Your init file should contain only one such instance.
       ;; If there is more than one, they won't work right.
       '(enh-ruby-op-face ((t (:foreground "#748488"))))
       '(enh-ruby-string-delimiter-face ((t (:foreground "#b58901"))))
       '(linum ((t (:background "#fdf6e4" :foreground "#93a1a1"))))
       '(mode-line ((t (:background "#eee8d5" :foreground "#657b83" :box (:line-width 1 :color "#657b83") :overline nil :underline nil))))
       '(mode-line-inactive ((t (:background "#fdf6e3" :foreground "#93a1a1" :box (:line-width 1 :color "#93a1a1") :overline nil :underline nil))))
       '(diff-hl-change ((t (:background "#69B7F0" :foreground "#00629D"))))
       '(diff-hl-delete ((t (:background "#FF6E64" :foreground "#990A1B"))))
       '(diff-hl-insert ((t (:background "#B4C342" :foreground "#546E00"))))
       )
       (set-mouse-color "black")))
  )

(defun update-tags()
  (interactive)
  (projectile-with-default-dir (projectile-project-root) (shell-command "ctags -e -R --languages=-javascript --exclude=.git --exclude=log --exclude=target --fields=+iaS --extra=+q .")))

(defun dotspacemacs/user-config ()
  "Configuration function.
 This function is called at the very end of Spacemacs initialization after
layers configuration."

 ;;;;;;;;;;;; Function definitions ;;;;;;;;;;;;;;;;

(defun byte-compile-current-buffer-file ()
  (interactive)
  (byte-compile-file (buffer-file-name))
  )

(defun sudo-save ()
    (interactive)
    (if (not buffer-file-name)
        (write-file (concat "/sudo:root@localhost:" (ido-read-file-name "File:")))
        (write-file (concat "/sudo:root@localhost:" buffer-file-name))))

(defun jump-to-definition-of-symbol-at-point ()
    (interactive)
    (if (bound-and-true-p robe-mode)
        (if (and (symbol-at-point) (zerop (call-process "bash" nil nil nil "-c" (concat "[ -z $(global --result=grep -i " (thing-at-point 'symbol) ") ]"))))
            (call-interactively 'robe-jump)
            (call-interactively 'helm-gtags-find-tag))
        (call-interactively 'helm-gtags-find-tag)))

(defun projectile-shell-pop ()
  (interactive)
  (if (string= "term-mode" major-mode)
      (shell-pop-out)
    (if (not (projectile-project-p))
        (shell-pop-ansi-term 0)
      (if (not (boundp 'projectile-term-index-hash-table)) (setq projectile-term-index-hash-table (make-hash-table :test 'equal)))
      (let* ((projectile-project-root (projectile-project-root))
             (index (or (gethash projectile-project-root projectile-term-index-hash-table)
                        (1+ (apply 'max 99 (hash-table-values projectile-term-index-hash-table))))))
        (puthash projectile-project-root index projectile-term-index-hash-table)
        (shell-pop-ansi-term index)))))

;; Set the monospaced font size when mixed Chinese and English words
(defun spacemacs//set-monospaced-font (english chinese english-size chinese-size)
  (set-face-attribute 'default nil :font
                      (format   "%s:pixelsize=%d"  english english-size))
  (dolist (charset '(kana han symbol cjk-misc bopomofo))
    (set-fontset-font (frame-parameter nil 'font) charset
                      (font-spec :family chinese :size chinese-size))))

(defun gantt ()
    (interactive)
    (require 'ox-taskjuggler)
    (rvm-use-default)
    (org-taskjuggler-export-process-and-open))

(defun enh-ruby-mode-config ()
  (define-key enh-ruby-mode-map (kbd "s-r b") 'enh-ruby-toggle-block)
  (define-key enh-ruby-mode-map (kbd "M-s-b") #'toggle-pry-breakpoint)
  (define-key enh-ruby-mode-map (kbd "M-s-c") #'cleanup-pry-breakpoints)
  (setq evil-shift-width 2)
  (modify-syntax-entry ?: ".")
  (modify-syntax-entry ?! "_")
  (modify-syntax-entry ?? "_"))


(defun enh-ruby-toggle-block ()
  (interactive)
  (let ((start (point)) beg end)
      (end-of-line)
      (unless
          (if (and (re-search-backward "\\(?:[^#]\\)\\({\\)\\|\\(\\_<do\\_>\\)")
                  (progn
                  (goto-char (or (match-beginning 1) (match-beginning 2)))
                  (setq beg (point))
                  (save-match-data (enh-ruby-forward-sexp))
                  (setq end (point))
                  (> end start)))
              (if (match-beginning 1)
                  (ruby-brace-to-do-end beg end)
              (ruby-do-end-to-brace beg end)))
      (goto-char start))))


(defun current-line-has-pry-breakpoint-p ()
  (string-match-p "binding\\.pry" (buffer-substring-no-properties (line-beginning-position) (line-end-position))))

(defun delete-pry-breakpoints ()
  (save-excursion
    (goto-char (point-min))
    (while (/= (point) (point-max))
      (if (current-line-has-pry-breakpoint-p) (kill-whole-line) (forward-line)))))

(defun toggle-pry-breakpoint ()
  (interactive)
  (let ((buf-changed (buffer-modified-p)) (saved-evil-state evil-state))
    (if (current-line-has-pry-breakpoint-p)
        (kill-whole-line)
      (evil-open-above 0)
      (insert "require 'pry'; binding.pry;"))

    (unless buf-changed (save-buffer))
    (call-interactively (intern (concat "evil-" (symbol-name saved-evil-state) "-state")))))

(defun cleanup-pry-breakpoints ()
  (interactive)
  (let ((buf-changed (buffer-modified-p)) (saved-evil-state evil-state))
    (delete-pry-breakpoints)
    (unless buf-changed (save-buffer))
    (call-interactively (intern (concat "evil-" (symbol-name saved-evil-state) "-state")))))

(defun turn-off-sp-on-large-file ()
  (interactive)
  (when (< 1200 (line-number-at-pos (buffer-size))) (turn-off-smartparens-mode) (turn-off-show-smartparens-mode))
   )

(defun yank-to-end-of-line ()
  (interactive "")
  (evil-yank-line (point) (line-end-position))
  )

(defun rails-buffer-candidates-function (type)
  (let ((result '()))
    (dolist (buf-name helm-projectile-buffers-list-cache result)
    (let* ((buf (get-buffer buf-name))
           (buf-file-name (buffer-file-name buf))
           (rails-root (projectile-rails-root)))
      (if (and buf-file-name rails-root (string-match (format "^%sapp/%s/" rails-root type) buf-file-name))
          (add-to-list 'result buf-name t))
      )
    )))


(setq neo-vc-integration nil)
(spacemacs//set-monospaced-font "Monaco" "STHeiti" 13 16)
(setenv "LANG" "zh_CN.UTF-8")
(add-to-list 'load-path "~/.emacs.d/private/")
(add-hook 'prog-mode-hook 'linum-mode)
(setq magit-push-always-verify nil)
(add-hook 'smartparens-enabled-hook #'turn-off-sp-on-large-file)
(add-hook 'magit-not-reverted-hook #'magit-refresh-vc-mode-line)
(add-hook 'git-commit-mode-hook 'evil-emacs-state)
(setq helm-mode-fuzzy-match t)
(setq helm-gtags-fuzzy-match t)
(setq rvm--gemset-default "default")
(defalias 'evil-insert-state 'evil-emacs-state)
(setq mac-option-modifier 'meta)
(setq frame-title-format '(:eval (if (projectile-project-p) (concat (projectile-project-name) (if (buffer-file-name) (concat " ✈ " (substring (buffer-file-name) (length (projectile-project-root)))) (concat " ✈ "(buffer-name))))
                                   (if (buffer-file-name)
                                       (if (string-match (concat "^" (getenv "HOME")) (buffer-file-name)) (concat "~" (substring (buffer-file-name) (length (getenv "HOME")))) (buffer-file-name)) (buffer-name)))))
(load-file "~/.config/secrets/paradox-github-token.el")
(setq helm-locate-command "/Users/liuxiang/bin/mfd %s %s")
(add-hook 'enh-ruby-mode-hook #'enh-ruby-mode-config)
(remove-hook 'enh-ruby-mode-hook
          (lambda () (rvm-activate-corresponding-ruby)))
(setq edit-server-new-frame nil)
(setq edit-server-url-major-mode-alist
      '(("tbdocs\\.alibaba-inc\\.com" . confluence-edit-mode) (".*" . markdown-mode)))
(setq org-directory "/Users/liuxiang/Library/Mobile Documents/com~apple~CloudDocs/org")
(setq org-agenda-files (append (file-expand-wildcards "~/Library/Mobile Documents/com~apple~CloudDocs/org/**/*.org") (file-expand-wildcards  "~/Library/Mobile Documents/com~apple~CloudDocs/org/*.org")))
(setq org-refile-targets (quote ((nil :maxlevel . 9)
                                 (org-agenda-files :maxlevel . 9))))
(setq org-mobile-inbox-for-pull "/Users/liuxiang/Library/Mobile Documents/com~apple~CloudDocs/org/flagged.org")
(setq org-mobile-directory "/Users/liuxiang/Dropbox/应用/MobileOrg")
(setq org-bullets-bullet-list '("■" "◆" "▲" "▶"))
(setq org-link-search-must-match-exact-headline nil)

(setq comint-input-ring-file-name "~/.pry_history")
(setq comint-input-ring-size 100000)
(add-hook 'inf-ruby-mode-hook #'(lambda ()
                                  (interactive)
                                  (comint-read-input-ring)
                                  (add-hook 'comint-input-filter-functions #'(lambda (text) (interactive) '(comint-write-input-ring)) nil t)
                                  (define-key inf-ruby-mode-map (kbd "C-]") #'(lambda () (interactive)
                                                                                (let((str (ffap-string-at-point)) path line)
                                                                                  (if (string-match "^\\(.+\\):\\([0-9]+\\).*$" str)
                                                                                      (progn (setq path (match-string 1 str))
                                                                                             (setq line (string-to-number (match-string 2 str))))
                                                                                    (setq path str)
                                                                                    (setq line 0))
                                                                                  (org-open-file path t line))))))
(setq inf-ruby-default-implementation "pry")
(setq inf-ruby-eval-binding "Pry.toplevel_binding")
(add-hook 'inf-ruby-mode-hook 'ansi-color-for-comint-mode-on)
(eval-after-load 'company
  '(push 'company-robe company-backends))
(setq company-minimum-prefix-length 1)
(autoload 'projectile-rails-robe-mode "projectile-rails-robe")
(add-hook 'robe-mode-hook 'projectile-rails-robe-mode)
(autoload 'ragtag-mode "ragtag")
(autoload 'confluence-edit-mode "confluence-edit.el")
(add-hook 'web-mode-hook 'ragtag-mode)
(add-hook 'html-erb-mode-hook 'ragtag-mode)
(setq org-default-notes-file "/Users/liuxiang/Library/Mobile Documents/com~apple~CloudDocs/org/notes.org")
(setq org-html-doctype "html5")
(setq org-html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"http://lululau.gitcafe.io/assets/css/readtheorg.css\" />\n<script src=\"http://lululau.gitcafe.io/assets/js/readtheorg.js\"></script>")

(setq search-engine-alist '(
                            (google :name "Google" :url "http://www.google.com/search?ie=utf-8&oe=utf-8&q=%s")
                            (github :name "Github" :url "https://github.com/search?ref=simplesearch&q=%s")
                            (stack-overflow :name "Stack Overflow" :url "https://stackoverflow.com/search?q=%s")
                            (google-maps :name "Google Maps" :url "http://www.google.cn/maps/search/%s")
                            (google-images :name "Google Images" :url "http://www.google.com/images?hl=en&source=hp&biw=1440&bih=795&gbv=2&aq=f&aqi=&aql=&oq=&q=%s")
                            (spacemacs-issues :name "Spacemacs Issues" :url "https://github.com/syl20bnr/spacemacs/issues?utf8=%%E2%%9C%%93&q=is%%3Aissue+is%%3Aopen+%s")
                            (wikipedia :name "Wikipedia" :url "http://www.wikipedia.org/search-redirect.php?language=zh&go=Go&search=%s")
                            (wolfram-alpha :name "Wolfram Alpha" :url "http://www.wolframalpha.com/input/?i=%s")))

(setq auto-mode-alist (cons '("\\.apib\\'" . markdown-mode) auto-mode-alist))

;;;;;;;;;;; Key Bindings ;;;;;;;;;;;;;;;

(define-key window-numbering-keymap "\M-0" nil)
(define-key window-numbering-keymap "\M-1" nil)
(define-key window-numbering-keymap "\M-2" nil)
(define-key window-numbering-keymap "\M-3" nil)
(define-key window-numbering-keymap "\M-4" nil)
(define-key window-numbering-keymap "\M-5" nil)
(define-key window-numbering-keymap "\M-6" nil)
(define-key window-numbering-keymap "\M-7" nil)
(define-key window-numbering-keymap "\M-8" nil)
(define-key window-numbering-keymap "\M-9" nil)

(global-unset-key (kbd "s-q"))
(global-set-key (kbd "s-l") 'evil-avy-goto-line)
(global-set-key (kbd "s-0") 'select-window-0)
(global-set-key (kbd "s-1") 'select-window-1)
(global-set-key (kbd "s-2") 'select-window-2)
(global-set-key (kbd "s-3") 'select-window-3)
(global-set-key (kbd "s-4") 'select-window-4)
(global-set-key (kbd "s-5") 'select-window-5)
(global-set-key (kbd "s-6") 'select-window-6)
(global-set-key (kbd "s-7") 'select-window-7)
(global-set-key (kbd "s-8") 'select-window-8)
(global-set-key (kbd "s-9") 'select-window-9)
(global-set-key (kbd "<s-S-return>") 'spacemacs/toggle-maximize-buffer)
(global-set-key (kbd "s-t") 'split-window-right-and-focus)
(global-set-key (kbd "s-T") 'split-window-below-and-focus)
(global-set-key (kbd "s-o") 'helm-projectile-find-file)
(global-set-key (kbd "s-f") 'spacemacs/helm-find-files)
(global-set-key (kbd "C-x C-f") 'spacemacs/helm-find-files)
(global-set-key (kbd "s-F") 'helm-locate)
(global-set-key (kbd "s-B") '(lambda () (interactive) (condition-case nil (helm-mini) (error (helm-keyboard-quit)))))
(global-set-key (kbd "s-b") 'helm-projectile-switch-to-buffer)
(global-set-key (kbd "s-p") 'helm-projectile-switch-project)
(global-set-key (kbd "s-;") '(lambda() (interactive) (if (and (boundp 'inf-ruby-buffer) (equal inf-ruby-buffer (buffer-name))) (delete-window) (if (or (not (boundp 'inf-ruby-buffer)) (not (comint-check-proc inf-ruby-buffer)))  (rvm-use-default)) (call-interactively 'inf-ruby))))
(global-set-key (kbd "s-[") 'spacemacs/previous-useful-buffer)
(global-set-key (kbd "s-]") 'spacemacs/next-useful-buffer)
(global-set-key (kbd "s-/") 'evilnc-comment-or-uncomment-lines)
(global-set-key (kbd "s-\\") '(lambda () (interactive) (switch-to-buffer (current-buffer))))
(global-set-key (kbd "s-'") #'(lambda () (interactive) (if (string= "term-mode" major-mode) (shell-pop-out) (shell-pop-ansi-term 0))))
(global-set-key (kbd "s-\"") #'projectile-shell-pop)
(global-set-key (kbd "s-n") '(lambda () (interactive) (switch-to-buffer-other-window (generate-new-buffer "*Untitled*"))))
(global-set-key (kbd "s-N") '(lambda () (interactive) (switch-to-buffer (generate-new-buffer "*Untitled*"))))
(global-set-key (kbd "s-w") 'delete-window)
(global-set-key (kbd "s-W") '(lambda () (interactive) (kill-this-buffer) (delete-window)))
(global-set-key (kbd "s-C") 'bzg-big-fringe-mode)
(global-set-key (kbd "s-g") 'magit-status)
(global-set-key (kbd "s-r c") 'projectile-rails-console)
(global-set-key (kbd "s-r s") 'projectile-rails-server)
(global-set-key (kbd "s-r s-r") 'rvm-activate-corresponding-ruby)
(evil-leader/set-key "gc" 'magit-checkout)
(evil-leader/set-key "gp" #'(lambda () (interactive) (call-interactively 'magit-pull-current) (magit-process-buffer)))
(evil-leader/set-key "gu" #'(lambda () (interactive) (magit-checkout-file (magit-get-current-branch) (buffer-file-name))))

(global-set-key (kbd "C-g") '(lambda () (interactive) (evil-search-highlight-persist-remove-all) (keyboard-quit)))
(define-key evil-normal-state-map "s" #'(lambda () (interactive) (call-interactively 'evil-substitute) (call-interactively 'indent-for-tab-command)))
(define-key evil-motion-state-map (kbd "t") #'evil-avy-goto-char)
(define-key evil-motion-state-map (kbd "T") #'evil-avy-goto-char-2)
(define-key evil-motion-state-map (kbd "] c") #'diff-hl-next-hunk)
(define-key evil-motion-state-map (kbd "[ c") #'diff-hl-previous-hunk)
(define-key evil-motion-state-map (kbd "C-]") #'jump-to-definition-of-symbol-at-point)
(define-key evil-motion-state-map (kbd "<s-mouse-1>") #'(lambda (event) (interactive "e") (mouse-set-point event) (jump-to-definition-of-symbol-at-point)))
(define-key evil-motion-state-map (kbd "<s-mouse-3>") #'evil-jumper/backward)
(define-key evil-motion-state-map (kbd "s-q") #'evil-emacs-state)
(define-key evil-lisp-state-map (kbd "s-q") #'evil-emacs-state)
(define-key evil-emacs-state-map (kbd "C-]") #'jump-to-definition-of-symbol-at-point)
(define-key evil-emacs-state-map (kbd "<s-mouse-1>") #'(lambda (event) (interactive "e") (mouse-set-point event) (jump-to-definition-of-symbol-at-point)))
(define-key evil-emacs-state-map (kbd "<s-mouse-3>") #'evil-jumper/backward)
(define-key evil-emacs-state-map (kbd "s-q") #'evil-exit-emacs-state)
(define-key evil-normal-state-map (kbd "Y") #'yank-to-end-of-line)
(define-key evil-motion-state-map (kbd "Y") #'yank-to-end-of-line)
(add-hook 'magit-mode-hook '(lambda () (define-key evil-evilified-state-map (kbd "s-M") #'evil-motion-state) (define-key evil-motion-state-map (kbd "s-M") #'evil-evilified-state) (define-key magit-mode-map [S-tab] 'magit-section-cycle-global)))
(define-key evil-outer-text-objects-map "o" 'evil-a-word)
(define-key evil-inner-text-objects-map "o" 'evil-inner-word)
(define-key evil-outer-text-objects-map "w" 'evil-a-symbol)
(define-key evil-inner-text-objects-map "w" 'evil-inner-symbol)
(with-eval-after-load 'helm
  (define-key helm-map (kbd "C-'") 'ace-jump-helm-line))
(evil-leader/set-key "SPC" 'avy-goto-char-2)
(add-hook 'term-mode-hook #'(lambda () (interactive)
                             (define-key term-raw-map (kbd "<M-backspace>") #'term-send-raw-meta)
                             (define-key term-raw-map (kbd "s-v") #'term-paste)
                             (define-key term-raw-map (kbd "C-y") #'term-paste)
                             ))

(add-hook 'projectile-rails-mode-hook
          #'(lambda ()
              (require 'helm-projectile)
              (defclass helm-source-rails-models-buffer (helm-source-projectile-buffer)
                ((candidates :initform #'(lambda () (rails-buffer-candidates-function "models")))))
              (defclass helm-source-rails-views-buffer (helm-source-projectile-buffer)
                ((candidates :initform #'(lambda () (rails-buffer-candidates-function "views")))))
              (defclass helm-source-rails-controllers-buffer (helm-source-projectile-buffer)
                ((candidates :initform #'(lambda () (rails-buffer-candidates-function "controllers")))))
              (defvar helm-source-rails-models-buffers-list (helm-make-source "Rails models buffers" 'helm-source-rails-models-buffer))
              (defvar helm-source-rails-views-buffers-list (helm-make-source "Rails views buffers" 'helm-source-rails-views-buffer))
              (defvar helm-source-rails-controllers-buffers-list (helm-make-source "Rails controllers buffers" 'helm-source-rails-controllers-buffer))
              (helm-projectile-command "switch-to-rails-models-buffer" 'helm-source-rails-models-buffers-list "Switch to Rails models buffer: ")
              (helm-projectile-command "switch-to-rails-views-buffer" 'helm-source-rails-views-buffers-list "Switch to Rails views buffer: ")
              (helm-projectile-command "switch-to-rails-controllers-buffer" 'helm-source-rails-controllers-buffers-list "Switch to Rails controllers buffer: ")
              (define-key projectile-rails-mode-map (kbd "s-r s-m") 'helm-projectile-switch-to-rails-models-buffer)
              (define-key projectile-rails-mode-map (kbd "s-r s-v") 'helm-projectile-switch-to-rails-views-buffer)
              (define-key projectile-rails-mode-map (kbd "s-r s-c") 'helm-projectile-switch-to-rails-controllers-buffer)
              (dolist (pair '(
                              ("s-r fa" . projectile-rails-find-locale)
                              ("s-r fc" . projectile-rails-find-controller)
                              ("s-r fe" . projectile-rails-find-environment)
                              ("s-r ff" . projectile-rails-find-feature)
                              ("s-r fh" . projectile-rails-find-helper)
                              ("s-r fi" . projectile-rails-find-initializer)
                              ("s-r fj" . projectile-rails-find-javascript)
                              ("s-r fl" . projectile-rails-find-lib)
                              ("s-r fm" . projectile-rails-find-model)
                              ("s-r fn" . projectile-rails-find-migration)
                              ("s-r fo" . projectile-rails-find-log)
                              ("s-r fp" . projectile-rails-find-spec)
                              ("s-r fr" . projectile-rails-find-rake-task)
                              ("s-r fs" . projectile-rails-find-stylesheet)
                              ("s-r ft" . projectile-rails-find-test)
                              ("s-r fu" . projectile-rails-find-fixture)
                              ("s-r fv" . projectile-rails-find-view)
                              ("s-r fy" . projectile-rails-find-layout)
                              ("s-r f@" . projectile-rails-find-mailer)
                              ("s-r gc" . projectile-rails-find-current-controller)
                              ("s-r gd" . projectile-rails-goto-schema)
                              ("s-r ge" . projectile-rails-goto-seeds)
                              ("s-r gh" . projectile-rails-find-current-helper)
                              ("s-r gj" . projectile-rails-find-current-javascript)
                              ("s-r gg" . projectile-rails-goto-gemfile)
                              ("s-r gm" . projectile-rails-find-current-model)
                              ("s-r gn" . projectile-rails-find-current-migration)
                              ("s-r gp" . projectile-rails-find-current-spec)
                              ("s-r gr" . projectile-rails-goto-routes)
                              ("s-r gs" . projectile-rails-find-current-stylesheet)
                              ("s-r gt" . projectile-rails-find-current-test)
                              ("s-r gu" . projectile-rails-find-current-fixture)
                              ("s-r gv" . projectile-rails-find-current-view)
                              ("s-r gz" . projectile-rails-goto-spec-helper)
                              ("s-r g." . projectile-rails-goto-file-at-point)
                              ("s-r G" . projectile-rails-generate)
                              ("s-r r:" . projectile-rails-rake)
                              ("s-r Rx" . projectile-rails-extract-region)))
                (define-key projectile-rails-mode-map (kbd (car pair)) (cdr pair))
                )))

(global-set-key [M-tab] 'spacemacs/alternate-buffer)
(global-set-key (kbd "<f5>") #'(lambda () (interactive) (unless (boundp 'ggtags-mode) (ggtags-mode)) (projectile-regenerate-tags)))
(global-set-key (kbd "M-@") 'set-mark-command)
(global-set-key (kbd "s-m") 'set-mark-command)
(global-set-key (kbd "C-x s-m") 'pop-global-mark)
(global-set-key (kbd "<f1>") #'(lambda () (interactive) (condition-case nil (neotree-find-project-root) (error (neotree-toggle))) (window-numbering-update)))
(global-set-key (kbd "<S-f1>") #'(lambda () (interactive) (neotree-toggle) (window-numbering-update)))
(add-hook 'neotree-mode-hook #'(lambda ()
                                 (interactive)
                                 (define-key neotree-mode-map (kbd "s-t") #'(lambda () (interactive) (select-window-by-number 1) (split-window-right-and-focus)))
                                 (define-key neotree-mode-map (kbd "s-T") #'(lambda () (interactive) (select-window-by-number 1) (split-window-below-and-focus)))
                                 (define-key neotree-mode-map (kbd "s-n") #'(lambda () (interactive) (select-window-by-number 1) (switch-to-buffer-other-window (generate-new-buffer "*Untitled*"))))
                                 (define-key neotree-mode-map (kbd "s-N") #'(lambda () (interactive) (select-window-by-number 1) (switch-to-buffer (generate-new-buffer "*Untitled*"))))))
(add-hook 'helm-mode-hook #'(lambda () (define-key helm-map (kbd "s-m") 'helm-toggle-visible-mark)))
(add-hook 'artist-mode-hook #'(lambda () (define-key artist-mode-map [(down-mouse-3)] 'artist-mouse-choose-operation)))
(global-set-key [mouse-4] '(lambda ()
  (interactive)
  (scroll-down 1)))
(global-set-key [mouse-5] '(lambda ()
  (interactive)
  (scroll-up 1)))

(add-hook 'org-mode-hook #'(lambda () (interactive) (require 'ox-confluence)))

) ;;; End of config.

(desktop-save-mode 1)
(defadvice split-window-right (after split-window-right-and-balance activate) (balance-windows))

;; Do not write anything past this comment. This is where Emacs will
;; auto-generate custom variable definitions.
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ahs-case-fold-search nil)
 '(ahs-default-range (quote ahs-range-whole-buffer))
 '(ahs-idle-interval 0.25)
 '(ahs-idle-timer 0 t)
 '(ahs-inhibit-face-list nil)
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(diff-hl-draw-borders nil)
 '(diff-hl-margin-mode nil)
 '(enh-ruby-add-encoding-comment-on-save nil)
 '(helm-gtags-fuzzy-match t)
 '(helm-gtags-preselect t)
 '(helm-imenu-fuzzy-match t)
 '(inf-ruby-implementations
   (quote
    (("ruby" . "irb --prompt default --noreadline -r irb/completion")
     ("jruby" . "jruby -S irb --prompt default --noreadline -r irb/completion")
     ("rubinius" . "rbx -r irb/completion")
     ("yarv" . "irb1.9 -r irb/completion")
     ("macruby" . "macirb -r irb/completion")
     ("pry" . "/Users/liuxiang/.rvm/rubies/ruby-2.2-head/bin/ruby /Users/liuxiang/.rvm/gems/ruby-2.2-head/bin/pry"))))
 '(magit-blame-heading-format "%-20a %A %s")
 '(magit-diff-use-overlays nil)
 '(magit-not-reverted-hook (quote (magit-refresh-vc-mode-line)))
 '(neo-theme (quote uni))
 '(projectile-completion-system (quote helm))
 '(projectile-git-command "git ls-files -zco")
 '(projectile-tags-file-name "NON_EXISTS_FILE")
 '(ring-bell-function (quote ignore) t)
 '(vc-follow-symlinks t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-tooltip-common ((t (:inherit company-tooltip :weight bold :underline nil))))
 '(company-tooltip-common-selection ((t (:inherit company-tooltip-selection :weight bold :underline nil))))
 '(org-level-1 ((t (:inherit variable-pitch :foreground "#cb4b16" :height 1.3 :family "Optima")))))
