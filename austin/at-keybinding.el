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



(global-set-key (kbd "M-x") 'smex)

;; 绑定一个快捷键F2 快速调用初始化的配置文件
(global-set-key (kbd "<f2>") 'open-my-init-file)			

(define-key global-map (kbd "C-x <tab>") 'indent-region-or-buffer)

;; 定义按键切换窗口
(define-key global-map "\C-x\ o" 'switch-window)			


(provide 'at-keybinding)
