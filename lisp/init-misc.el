;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

(use-package better-defaults
  :ensure t)


;; normalize emac's undo - redo
(use-package undo-tree
  :ensure t
  :config
  (global-undo-tree-mode)
  (defalias 'undo 'undo-tree-undo)
  (defalias 'redo 'undo-tree-redo)
  (bind-key "C-z" 'undo)
  (bind-key "C-y" 'redo))


;; normalize emacs' regexp
(use-package pcre2el
  :ensure t
  :config
  (rxt-global-mode))


;;#################### ########### ####################
;;#################### Lang Region ####################
;;#################### ########### ####################

;; utf-8
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)


;;#################### ############## ####################
;;#################### Welcome Region ####################
;;#################### ############## ####################

;; kill welcome screen
(setq inhibit-startup-screen t)
;; empty init buffer
(setq initial-scratch-message nil)


;;#################### ############### ######################
;;#################### Autosave Region ####################
;;#################### ############### ######################

;; autosave to actual file
(auto-save-visited-mode t)

;; 1 second delay after typing
(setq auto-save-timeout 1)

;; save every 100 characters typed
(setq auto-save-interval 100)


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)

;; save minibuffer history
(savehist-mode 1)


;;#################### END ####################
(provide 'init-misc)
