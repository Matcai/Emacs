;; 同步package-autoremove 需要移除的包

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/austin/" t)

;; (add-to-list 'load-path "~/.emacs.d/el-get/el-get")

;; (unless (require 'el-get nil 'noerror)
;;   (with-current-buffer
;;       (url-retrieve-synchronously
;;        "https://raw.githubusercontent.com/dimitri/el-get/master/el-get-install.el")
;;     (goto-char (point-max))
;;     (eval-print-last-sexp)))
;;  
;; (add-to-list 'el-get-recipe-path "~/.emacs.d/el-get-user/recipes")
;; (el-get 'sync)

(require 'at-packages)
(require 'at-latex)
(require 'at-function)										;; 自定义的函数

;; 导入vim模式的包
(require (quote evil))										
(require 'smartparens-config)
(require 'hungry-delete)
(require 'smex)
(require 'company)

(require 'at-setting)
(require 'at-keybinding)


;;(require 'cl)
;; 加入cl （common lisp） 语法的兼容包

;;(load-theme (quote monokai) t)
(load-theme (quote misterioso) t)

;;(require 'ox-latex-chinese)
;;(oxlc/toggle-ox-latex-chinese t)

;; (setq exec-path (append exec-path '("/usr/local/texlive/2016/bin/x86_64-darwin")))
;; (add-to-list 'exec-path "/usr/local/texlive/2016/bin/x86_64-darwin/" t)
