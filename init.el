(add-to-list 'exec-path "C:Program Files/Git/usr/bin")
;(add-to-list 'exec-path "C:Program Files/Git/bin")
 
(which-key-mode 1)


(setq default-directory "~/")
(setq command-line-default-directory default-directory)
;(setq magit-git-executable "C:Program Files/Git/bin/git.exe")

(setq ring-bell-function 'ignore)

(set-face-attribute 'default nil :height 140)

(add-hook 'eshell-load-hook #'eat-eshell-mode)

(add-hook 'eshell-mode-hook
          (lambda ()
            (local-set-key (kbd "C-l") (lambda () (interactive)
					 (delete-region (line-beginning-position) (line-end-position))
					 (insert "clear 1")
					 ))))

(add-hook 'shell-mode-hook
          (lambda ()
            (local-set-key (kbd "C-l") 'comint-clear-buffer)
	    ))


(define-key global-map (kbd "C-z") 'shell)
(define-key global-map (kbd "C-1") 'delete-other-windows)
(define-key global-map (kbd "C-x C-o") 'other-window)
(define-key global-map (kbd "C-x g") 'magit-status)


(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages '(eat magit)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


