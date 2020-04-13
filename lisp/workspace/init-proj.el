;; -*- lexical-binding: t -*-

;;#################### ############## ####################
;;#################### Project Region ####################
;;#################### ############## ####################

;; enforce project style
(use-package editorconfig
  :defer
  :hook
  (emacs-startup . editorconfig-mode))


(use-package projectile
  :defer
  :custom
  (projectile-completion-system 'ivy)
  :bind-keymap
  ("C-c C-p" . projectile-command-map)
  :hook
  (emacs-startup . projectile-mode)
  :config
  (setq projectile-mode-map (make-sparse-keymap)))


(use-package treemacs-projectile
  :after (treemacs projectile))


(use-package counsel-projectile
  :defer
  :after (counsel projectile)
  :bind (:map search-command-map
              ("C-p" . counsel-projectile-find-file)
              :map ops-command-map
              ("C-r" . counsel-projectile-switch-project))
  :hook
  (projectile-mode . counsel-projectile-mode))


;;#################### END ####################
(provide 'init-proj)
