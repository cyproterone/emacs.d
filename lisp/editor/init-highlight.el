;; -*- lexical-binding: t -*-

;;#################### ################ ####################
;;#################### Highlight Region ####################
;;#################### ################ ####################

;; show linenum only in certain modes
(use-package display-line-numbers
  :defer
  :custom
  (display-line-numbers-grow-only t)
  (display-line-numbers-width 3 "minimum 3 cols used for line num")
  :hook
  (prog-mode . display-line-numbers-mode)
  (conf-mode . display-line-numbers-mode)
  (text-mode . display-line-numbers-mode))


;; highlight todos
(use-package hl-todo
  :defer
  :hook
  (display-line-numbers-mode . hl-todo-mode))


(use-package highlight-parentheses
  :defer
  :hook
  (display-line-numbers-mode . highlight-parentheses-mode))


(use-package rainbow-delimiters
  :defer
  :hook
  (emacs-lisp-mode . rainbow-delimiters-mode))


;; indent guide -- not enabled by default --
(use-package indent-guide
  :defer
  :custom
  (indent-guide-delay 0.1)
  (indent-guide-char "|"))


;;#################### END ####################
(provide 'init-highlight)
