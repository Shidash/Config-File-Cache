(menu-bar-mode 0)

(setq display-time-24hr-format 1)
(display-time)

(column-number-mode)

(setq backup-directory-alist (quote ((".*" . "~/.emacs.d/"))))

(fset 'yes-or-no-p 'y-or-n-p)

(setq require-final-newline t)
(setq text-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 78)

(add-to-list 'auto-mode-alist '(".*mutt.*" . message-mode))                                  
(setq mail-header-separator "")                     
(add-hook 'message-mode-hook 'turn-on-auto-fill)
(setq-default fill-column 78)

(add-hook 'go-mode-hook
   (lambda ()
     (setq-default)
     (setq tab-width 2)
     (setq standard-indent 2)
     (setq indent-tabs-mode nil)))

(global-set-key (kbd "<f8>") 'flyspell-mode)
(add-to-list 'auto-mode-alist '("\\.org\\'" . org-mode))

    (global-set-key "\C-cl" 'org-store-link)
     (global-set-key "\C-cc" 'org-capture)
     (global-set-key "\C-ca" 'org-agenda)
     (global-set-key "\C-cb" 'org-iswitchb)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/todo.org"))))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )
