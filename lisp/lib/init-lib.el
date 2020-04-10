;; -*- lexical-binding: t -*-

;;#################### ########### ####################
;;#################### Libs Region ####################
;;#################### ########### ####################

;; require 'use-package
((lambda
   (pkg)
   (unless (package-installed-p pkg)
     (package-install pkg))
   (require pkg)
   (setq use-package-always-ensure t))
 'use-package)


;; help to benchmark load times
(use-package benchmark-init
  :demand t
  :hook
  (after-init . benchmark-init/deactivate))


;; prevent keybinding overwrite
(use-package better-defaults)


;;#################### ############## ####################
;;#################### Exports Region ####################
;;#################### ############## ####################

(defun schedule-background-task
    (frequency func)
  "run background task with frequency"
  (add-hook 'emacs-startup-hook
            (lambda ()
              (run-at-time nil frequency
                           (lambda ()
                             (let ((msg (current-message))
                                   (prev inhibit-message))
                               (setq inhibit-message t)
                               (funcall func)
                               (setq inhibit-message prev)
                               (when msg (message msg))))))))


(defun schedule-idle-background-task
    (repeat seconds func)
  "run idle background task with frequency"
  (add-hook 'emacs-startup-hook
            (lambda ()
              (run-with-idle-timer seconds repeat
                                   (lambda ()
                                     (let ((msg (current-message))
                                           (prev inhibit-message))
                                       (setq inhibit-message t)
                                       (funcall func)
                                       (setq inhibit-message prev)
                                       (when msg (message msg))))))))


(defun with-shift-region
    (func)
  "use shift mode for region marking funcs"
  (let ((oldval (or (cdr-safe transient-mark-mode) transient-mark-mode)))
    (call-interactively func)
    (setq transient-mark-mode (cons 'only oldval))))


(defun with-min-cursor
    (func)
  "execute func with cursor at begining of buffer, return"
  (save-excursion
    (goto-char (point-min))
    (call-interactively func)))


;;#################### END ####################
(provide 'init-lib)
