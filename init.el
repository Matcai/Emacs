;; 同步package-autoremove 需要移除的包

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)
(add-to-list 'load-path "~/.emacs.d/austin/" t)

(require 'at-packages)
(require 'at-latex)
(require 'at-function)										;; 自定义的函数

;; 导入vim模式的包
(require (quote evil))										
(require 'smartparens-config)
(require 'hungry-delete)

(require 'company)

(require 'at-setting)
(require 'at-keybinding)


;;(require 'cl)
;; 加入cl （common lisp） 语法的兼容包

;; (load-theme (quote monokai) t)

(load-theme (quote material) t)
;;(load-theme (quote misterioso) t)
;; (load-theme (quote seti) t)
;;(require 'ox-latex-chinese)
;;(oxlc/toggle-ox-latex-chinese t)

;; (setq exec-path (append exec-path '("/usr/local/texlive/2016/bin/x86_64-darwin")))
;; (add-to-list 'exec-path "/usr/local/texlive/2016/bin/x86_64-darwin/" t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor-type (quote (bar . 2)))
 '(package-selected-packages
   (quote
    (package+ seti-theme edit-indirect ssass-mode vue-html-mode virtualenv go org2ctex company)))
 '(virtualenv-root "~/Virtualenv/"))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(cursor ((t (:background "green1")))))
