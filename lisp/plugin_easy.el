;;; 简单配置的部分
;; amx
;; 记录我们每次调用 M-x 时输入的命令历史，然后每次将最常用的显示在前面
(use-package amx
  :ensure t
  :init (amx-mode))

;; mwim
;; 修改行首位光标移动的绑定
(use-package mwim
  :ensure t
  :bind
  ("C-a" . mwim-beginning-of-code-or-line)
  ("C-e" . mwim-end-of-code-or-line))

;; ace-window
;; 重绑定window切换键
(use-package ace-window
  :ensure t
  :bind (("C-x o" . 'ace-window)))

;; good-scroll
;; 平滑滚动
(use-package good-scroll
  :ensure t
  :init (good-scroll-mode))

;; heighlight-symbol
;; 高亮当前符号
(use-package highlight-symbol
  :ensure t
  :init (highlight-symbol-mode)
  :bind ("<f3>" . highlight-symbol)) ;; 按下 F3 键就可高亮当前符号

;; magit
;; git管理工具
(use-package magit
  :ensure t)

;; markdown-mode
;; markdown插件
(use-package markdown-mode
  :ensure t
  ;;:mode ("*\\.md\\'" . gfm-mode)
  :init (setq markdown-command "multimarkdown"))

;; 导出配置
(provide 'plugin_easy)
