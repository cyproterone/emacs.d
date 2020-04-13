;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Tree Region ####################
;;#################### ########### ####################

(use-package treemacs
  :defer
  :after (projectile)
  :custom
  (treemacs-follow-after-init t)
  (treemacs-project-follow-cleanup t)
  (treemacs-missing-project-action 'remove)
  (treemacs-file-event-delay 1000)
  (treemacs-persist-file
   (make-temp-file "emacs-treemacs")
   "do not persist state for treemacs")
  :bind (("C-b" . treemacs)
         :map treemacs-mode-map
         ("SPC" . treemacs-peek))
  :hook
  (after-init
   . (lambda () (when (projectile-project-p)
                  (treemacs-add-and-display-current-project)
                  (treemacs-toggle-node)
                  (call-interactively 'other-window))))
  :config
  (treemacs-git-mode 'deferred)
  (treemacs-filewatch-mode t)
  (treemacs-fringe-indicator-mode t))


(use-package treemacs-magit
  :after (treemacs magit))


;;#################### END ####################
(provide 'init-tree)
