;; -*- lexical-binding: t -*-

;;#################### ############## ####################
;;#################### Externs Region ####################
;;#################### ############## ####################

;; share clipboard
(use-package xclip
  :demand
  :config
  (xclip-mode t))


;; ;; normalize emacs' regexp
;; (use-package pcre2el
;;   :demand
;;   :config
;;   (rxt-global-mode t))


;;#################### ############## ####################
;;#################### Welcome Region ####################
;;#################### ############## ####################

(progn
  (setq inhibit-startup-screen t)
  (setq initial-scratch-message
        "落后就要挨打\n早死早超生\n")
  (setq initial-major-mode 'fundamental-mode))


;;#################### ########### ####################
;;#################### Misc Region ####################
;;#################### ########### ####################

;; yes/no -> y/n
(defalias 'yes-or-no-p 'y-or-n-p)


;;#################### END ####################
(provide 'init-misc)
