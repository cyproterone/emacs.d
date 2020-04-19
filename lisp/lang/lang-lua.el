;; -*- lexical-binding: t -*-

;;#################### ########## ####################
;;#################### Lua Region ####################
;;#################### ########## ####################

(use-package lua-mode
  :defer)


(use-package lsp-lua-emmy
  :quelpa
  (lsp-lua-emmy
   :fetcher github
   :repo "phenix3443/lsp-lua-emmy")
  :load-path "packages/phenix3443/lsp-lua-emmy"
  :defer
  :custom
  (lsp-lua-emmy-jar-path
   (expand-file-name "EmmyLua-LS-all.jar" user-packages-path))
  :hook
  (lua-mode
   . (lambda () (require 'lsp-lua-emmy))))


;;#################### END ####################
(provide 'lang-lua)
