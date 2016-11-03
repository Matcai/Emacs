;;  __        __             __   ___
;; |__)  /\  /  ` |__/  /\  / _` |__
;; |    /~~\ \__, |  \ /~~\ \__> |___
;;                      __   ___        ___      ___
;; |\/|  /\  |\ |  /\  / _` |__   |\/| |__  |\ |  |
;; |  | /~~\ | \| /~~\ \__> |___  |  | |___ | \|  |


(when (>= emacs-major-version 24)
  (require 'package)
  (setq package-archives '(
						   ("gnu" . "http://elpa.zilongshanren.com/gnu/")
						   ("melpa" . "http://elpa.zilongshanren.com/melpa/")))
							;; 采用国内的镜像源
  (package-initialize)
  ;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  ;; add-to-list 添加一个列表内容到package-archives列表中，"t" 表示在后面附加的形式，默认添加在指定列表的前面
  )

(defvar jon/packages '(
					   company
					   monokai-theme
					   hungry-delete
					   markdown-mode
					   markdown-mode+
					   switch-window
					   yasnippet
					   evil
					   smex
					   smartparens
					   emmet-mode
						 ) "Default packages installed")
;; 定义需要安装的软件包
(setq package-selected-packages jon/packages)

;; 同步package-autoremove 需要移除的包
(require 'cl)
;; 加入cl （common lisp） 语法的兼容包

(defun jon/packages-installed-p ()
  (dolist (pkg jon/packages t)
    (if (not (package-installed-p pkg)) (return nil))))
;; 定义函数用于判断软件包是否安装

(unless (jon/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg jon/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))
;; 如果软件包没有安装则自动安装。

(defun open-my-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el")
)															;; 定义函数，打开初始化的配置文件
(load-theme (quote monokai) t)


(require (quote evil))										;; 导入vim模式的包
(require 'smartparens-config)
(require 'hungry-delete)
(global-hungry-delete-mode t)								;; 全局开启删除模式
(require 'smex)
(smex-initialize)
(global-set-key (kbd "M-x") 'smex)
(require 'company)

(setq initial-frame-alist '((top . 50) (left . 480) (width . 120) (height . 50)))
;; 配置窗口大小和位置
(set-face-attribute (quote default) nil :height 135)		;;配置字体的大小


(define-key global-map "\C-x\ o" 'switch-window)			;; 定义按键切换窗口
(global-set-key (kbd "<f2>") 'open-my-init-file)			;; 绑定一个快捷键F2 快速调用初始化的配置文件

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-default nil)
 '(company-idle-delay 0.1)
 '(company-minimum-prefix-length 2)
 '(cursor-type (quote bar))
 '(default-buffer-file-coding-system (quote utf-8) t)
 '(delete-selection-mode t)
 '(global-company-mode t)
 '(global-hl-line-mode t)
 '(global-linum-mode t)
 '(inhibit-startup-screen t)
 '(make-backup-files nil)
 '(scroll-bar-mode nil)
 '(tab-width 4)
 '(tool-bar-mode nil)
 '(yas-global-mode t))
 ;; 关闭工具栏



(add-hook 'emacs-lisp-mode-hook 'smartparens-mode)
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)			;; 添加模式在编辑lisp 的时候成对高亮括号

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
