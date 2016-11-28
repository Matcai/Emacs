;;				       	  _    	       	_   _
;;				       	 / \  _	  _ ___| |_(_)_	__
;;				       	/ _ \| | | / __| __| | '_ \
;;				       / ___ \ |_| \__ \ |_| | | | |
;;				      /_/   \_\__,_|___/\__|_|_| |_|


(smex-initialize)

(global-hungry-delete-mode t)								;; 全局开启删除模式
(delete-selection-mode t)
(global-company-mode t)
(global-hl-line-mode t)
(global-linum-mode t)
(menu-bar-mode -1)
(scroll-bar-mode -1)
;; 关闭工具栏
(tool-bar-mode -1)
(yas-global-mode t)

(add-hook 'org-mode-hook '(lambda()
							(org-babel-do-load-languages
							 'org-babel-load-languages
							 '((sh . t)
							   (ditaa . t)
							   ))))
(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
;; 添加模式在编辑lisp 的时候成对高亮括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)

(setq company-idle-delay 0.1)
(setq company-minimum-prefix-length 2)
(setq cursor-type (quote bar))
(setq default-buffer-file-coding-system (quote utf-8))
(setq inhibit-startup-screen t)
(setq make-backup-files nil)
(setq tab-width 4)
(setq auto-save-interval 100)

(provide 'at-setting)
