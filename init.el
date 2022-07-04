;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided info
;; anumber of other files.

;;; Code:

;; 版本提示
(let ((minver "25.1"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config require v%s or higher" minver)))
(when (version< emacs-version "26.1")
  (message "Your Emacs is old, and  some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory)) ; 设定源码加载路径
;; (require 'init-benchmarking) ;; Measure startup time

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer
(defconst *is-a-mac* (eq system-type 'darwin))

;; Adjust garbage collection thresholds during startup, and thereafter

(let ((normal-gc-cons-threshold (* 20 1024 1024))
      (init-gc-cons-threshold (* 128 1024 1024)))
  (setq gc-cons-threshold init-gc-cons-threshold)
  (add-hook 'emacs-startup-hook
            (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(setq custom-file "~/.emacs.d/lisp/custom.el")

;; 主题
(require 'init_theme)
(require 'init_sml)
(require 'theme_rainbow_delimiters)

(load custom-file)

;; 基础配置
(require 'init_base)

;; 插件配置
(require 'plugin_dashboard)
(require 'plugin_hydra)
(require 'plugin_slime)
(require 'plugin_ivy)
(require 'plugin_easy)
(require 'plugin_undotree)
(require 'plugin_company)
(require 'plugin_yasnippet)
(require 'plugin_flymake)
(require 'plugin_projectile)

(provide 'init)

;;; init.el ends here
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   '(rainbow-delimiters highlight-symbol dashboard use-package-hydra hydra good-scroll undo-tree ace-window smart-mode-line amx counsel ivy slime doom-themes use-package)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
