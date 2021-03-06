;; -*- lexical-binding: t -*-

;;#################### ###################### ####################
;;#################### Discoverability Region ####################
;;#################### ###################### ####################

;; popup, shows hotkeys
(use-package which-key
  :demand
  :custom
  (which-key-idle-delay 0.5)
  :bind (("C-h K" . which-key-show-full-keymap))
  :config
  (which-key-mode t))


;; better help panes
(use-package helpful
  :defer
  :bind (([remap describe-key] . helpful-key)
         ([remap describe-function] . helpful-callable)
         ([remap describe-variable] . helpful-variable)
         ("C-h F" . helpful-function)
         ("C-h C" . helpful-command)
         :map emacs-lisp-mode-map
         ("C-c C-d" . helpful-at-point)))


;;#################### END ####################
(provide 'init-help)
