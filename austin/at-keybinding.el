;;     _       	     _ 	 _
;;    /	\  _   _ ___| |_(_)_ __
;;   / _ \| | |	/ __| __| | '_ \
;;  / ___ \ |_|	\__ \ |_| | | |	|
;; /_/ 	 \_\__,_|___/\__|_|_| |_|
;;
;;  _  	       	   _   	 _     	     _ _
;; | | _____ _ 	 _| |__	(_)_ __	  __| (_)_ __  	__ _
;; | |/	/ _ \ |	| | '_ \| | '_ \ / _`'|	| '_ \ / _`'|
;; |   <  __/ |_| | |_)	| | | |	| (_| |	| | | |	(_| |
;; |_|\_\___|\__, |_.__/|_|_| |_|\__,_|_|_| |_|\__, |
;;     	     |___/     	       	       	       |___/


(setq mac-command-modifier 'super)

;; 绑定一个快捷键F2 快速调用初始化的配置文件
(global-set-key (kbd "<f2>") 'neotree-toggle)

;; 绑定mac全屏快捷键，Mac系统中emacs默认没有设置，只能通过鼠标点击全屏按钮
(global-set-key (kbd "<C-s-268632070>") 'toggle-frame-fullscreen)


(define-key global-map (kbd "C-x <tab>") 'indent-region-or-buffer)

;; 定义按键切换窗口
(define-key global-map "\C-x\ o" 'switch-window)			


;; ------------------------- helm 设置 -------------------------------
;; helm-find-files 绑定tab为自动补全文件名， 默认是Ctrl-j为自动补全文件名
(define-key helm-find-files-map "\t" 'helm-execute-persistent-action)
;; (define-key helm-M-x-map "\t" 'helm-execute-selection-action)

(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;; ------------------------- search keybinding ----------------------
;; 配置按键绑定，C-s 默认是用正则表达式方式进行搜索操作；C-r 使用正则表达式反向搜索
(define-key global-map (kbd "C-s") 'isearch-forward-regexp)
(define-key global-map (kbd "C-r") 'isearch-backward-regexp)
;; (define-key global-map (kbd "C-M-s") 'isearch-forward)
;; (define-key global-map (kbd "C-M-r") 'isearch-backward)
(unbind-key "C-M-s" global-map)
(unbind-key "C-M-r" global-map)
(provide 'at-keybinding)
