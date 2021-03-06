;; -*- lexical-binding: t -*-

;;#################### ############### ####################
;;#################### Markdown Region ####################
;;#################### ############### ####################

(use-package markdown-mode
  :defer
  :mode (("README\\.md\\'" . gfm-mode)
         ("\\.md\\'" . markdown-mode)
         ("\\.markdown\\'" . markdown-mode))
  :custom
  (markdown-command "pandoc"))


;;#################### END ####################
(provide 'lang-markdown)
