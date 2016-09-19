(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

(when (>= emacs-major-version 24)
  (require 'package)
  (add-to-list
   'package-archives
   '("melpa" . "http://melpa.org/packages/")
   t)
  (package-initialize))

(require 'package)
(add-to-list 'package-archives
	     '("melpa-stable" . "http://stable.melpa.org/packages/") t)

(defvar my-keys-minor-mode-map (make-keymap) "my-keys-minor-mode keymap.")

(define-key my-keys-minor-mode-map (kbd "C-h") 'windmove-left)
(define-key my-keys-minor-mode-map (kbd "C-j") 'windmove-down)
(define-key my-keys-minor-mode-map (kbd "C-k") 'windmove-up)
(define-key my-keys-minor-mode-map (kbd "C-l") 'windmove-right)

(define-key my-keys-minor-mode-map (kbd "C-S-h") 'buf-move-left)
(define-key my-keys-minor-mode-map (kbd "C-S-j") 'buf-move-down)
(define-key my-keys-minor-mode-map (kbd "C-S-k") 'buf-move-up)
(define-key my-keys-minor-mode-map (kbd "C-S-l") 'buf-move-right)

(define-key my-keys-minor-mode-map (kbd "M-1") 'eyebrowse-switch-to-window-config-1)
(define-key my-keys-minor-mode-map (kbd "M-2") 'eyebrowse-switch-to-window-config-2)
(define-key my-keys-minor-mode-map (kbd "M-3") 'eyebrowse-switch-to-window-config-3)
(define-key my-keys-minor-mode-map (kbd "M-4") 'eyebrowse-switch-to-window-config-4)
(define-key my-keys-minor-mode-map (kbd "M-5") 'eyebrowse-switch-to-window-config-5)
(define-key my-keys-minor-mode-map (kbd "M-6") 'eyebrowse-switch-to-window-config-6)
(define-key my-keys-minor-mode-map (kbd "M-7") 'eyebrowse-switch-to-window-config-7)
(define-key my-keys-minor-mode-map (kbd "M-8") 'eyebrowse-switch-to-window-config-8)
(define-key my-keys-minor-mode-map (kbd "M-9") 'eyebrowse-switch-to-window-config-9)

(define-key my-keys-minor-mode-map (kbd "C-x \\") 'split-window-right)
(define-key my-keys-minor-mode-map (kbd "C-x -") 'split-window-below)
(define-key my-keys-minor-mode-map (kbd "C-x =") 'delete-window)

(define-minor-mode my-keys-minor-mode
	t " mkb" 'my-keys-minor-mode-map)
(my-keys-minor-mode 1)
