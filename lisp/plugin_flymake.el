;; flymake
;; 语法检查插件
(use-package flymake
  :ensure nil
  :diminish (flymake "Flym")
  :hook (prog-mode . flymake-mode)
  :bind (("M-n" . flymake-goto-next-error)
	 ("M-p" . flymake-goto-prev-error)))

(provide 'plugin_flymake)
