(spacemacs|use-package-add-hook helm
  :post-config
  (define-key helm-map (kbd "s-m") 'helm-toggle-visible-mark)
  (define-key helm-map (kbd "s-l") 'ace-jump-helm-line))
