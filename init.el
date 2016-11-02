
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(require 'cl)												;; 加入cl （common lisp） 语法的兼容包

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

(defvar Cz0rl/packages '(
						 company
						 markdown-mode
						 markdown-mode+
						 switch-window
						 yasnippet
	) "Default packages installed")							;; 定义需要安装的软件包
(defun Cz0rl/packages-installed-p ()
  (dolist (pkg Cz0rl/packages t)
    (if (not (package-installed-p pkg)) (return nil))))		;; 定义函数用于判断软件包是否安装

(unless (Cz0rl/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg Cz0rl/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))								;; 如果软件包没有安装则自动安装。

(define-key global-map "\C-x\ o" 'switch-window)			;; 定义按键切换窗口

(tool-bar-mode -1)											;; 关闭工具栏
(scroll-bar-mode -1)										;; 关闭滚动条
;;(electric-indent-mode -1)									;; 关闭注释自动缩进
(setq inhibit-splash-screen t)								;; 关闭欢迎界面
(global-linum-mode t)										;; 开启全局的行号模式
(delete-selection-mode t)									;; 开启选择即删除模式
(setq-default tab-width 4)									;; 配置tab 的宽度为4个空格

;;(setq default-frame-alist '((width . 150) (height . 50) (center . 20)))
(setq initial-frame-alist '((top . 50) (left . 480) (width . 120) (height . 50)))
;; 配置窗口大小和位置
(set-face-attribute (quote default) nil :height 140)		;;配置字体的大小
(setq make-backup-files nil)								;; 关闭自动创建备份文件
(setq auto-save-default nil)								;; 关闭自动保存文件
(setq-default default-buffer-file-coding-system 'utf-8)		;; 配置buffer 文件的编码格式

(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)			;; 添加模式在编辑lisp 的时候成对高亮括号
(global-hl-line-mode t)										;; 全局光标行高亮模式

(load-theme 'misterioso t)									;; 加载主题， 第一个t 表示不提示安全加载.

(defun open-my-init-file() 
  (interactive)
  (find-file "~/.emacs.d/init.el")
)															;; 定义函数，打开初始化的配置文件
(global-set-key (kbd "<f2>") 'open-my-init-file)			;; 绑定一个快捷键F2 快速调用初始化的配置文件

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (yasnippet switch-window company)))
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; ----------------Global mode enable----------------
(global-company-mode t)										;; 开启全局补全模式
(yas-global-mode t)											;; 全局yasnippet 模式



