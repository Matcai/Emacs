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

;; 批量添加smarparens-mode到对应的hook，原理：(add-hook 'hook 'smartparens-mode)
(austin/add-smartparens-mode-hook '(
				    python-mode-hook
				    web-mode-hook
				    emacs-lisp-mode-hook
				    js2-mode-hook
				    sh-mode-hook
				    go-mode-hook
				    c++-mode-hook
				    c-mode-hook
				    ))

;; 添加模式在编辑lisp 的时候成对高亮括号
(add-hook 'emacs-lisp-mode-hook 'show-paren-mode)
;; (add-to-list 'python-shell-completion-native-disabled-interpreters "python3")
;; (add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))

;; html-mode 开启emmet-mode
(add-hook 'web-mode-hook 'emmet-mode)


(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js?\\'" . js2-mode))


;; 配置company 弹出补全延迟时间
(setq company-idle-delay 0.1)

;; 配置company最小的补全字符
(setq company-minimum-prefix-length 2)

;; 配置光标的类型
(setq cursor-type (quote bar))

;; 配置buffer文件系统编码
(setq default-buffer-file-coding-system (quote utf-8))

;; 关闭默认的开始GNU 欢迎屏幕
(setq inhibit-startup-screen t)

(setq make-backup-files nil)
(setq tab-width 4)

;; 配置自动保存的时间戳
(setq auto-save-interval 100)

;; 配置Python3环境
;; (setq python-shell-interpreter "python3")
;; (setq python-shell-completion-native-disabled-interpreters '("python3"))

;; 配置Python2环境
(setq python-shell-interpreter "python")
(setq python-shell-completion-native-disabled-interpreters '("python"))
;; org-mode 执行源代码不需要提示确认
(setq org-confirm-babel-evaluate nil)

;; 针对python编程环境添加company-jedi, flycheck语法检查以及pep8规范支持
(add-hook 'python-mode-hook 'austin/python-mode-hook)
(add-hook 'python-mode-hook 'flycheck-mode)
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

;; 配置代理
;; (setq url-proxy-services
;;       '(("http" . "127.0.0.1:1087")
;;  	("https" . "127.0.0.1:1087")))

;; (setq jedi:install-server--command
;;       `("pip" "--proxy=127.0.0.1:1087" "install" "--upgrade" ,(convert-standard-filename jedi:source-dir)))


;; 添加golang对应company自动补全支持
;; 1. export GOPATH=$HOME/goprojects   声明go个人工作路径的全局变量，company-go是通过gocode自动补全守护程序实现的。
;; 2. export PATH=$PATH:$GOPATH/bin  该变量在后续下载gocode补全程序对应的位置，用于自动补全功能
;; 3. go get -u https://github.com/nsf/gocode 下载gocode
;; 默认情况下company-mode 会自动加载每个backend， 如果发现没有补全生效则添加下面代码支持
 (add-hook 'go-mode-hook (lambda ()
  			  (set (make-local-variable 'company-backends) '(company-go))
  			  (company-mode)
  			  ))

(provide 'at-setting)
