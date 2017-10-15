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
						   ("melpa" . "http://elpa.zilongshanren.com/melpa/")
						   ))
  ;; 采用国内的镜像源
  (package-initialize)
  ;; (add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/") t)
  ;; add-to-list 添加一个列表内容到package-archives列表中，"t" 表示在后面附加的形式，默认添加在指定列表的前面
  )

(require 'cl)
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
					   web-mode
					   emmet-mode
					   js2-mode
					   exec-path-from-shell
					   ox-latex-chinese
					   neotree
					   company-jedi
					   company-go
					   go
					   virtualenv
					   flycheck
					   py-autopep8
					   ) "Default packages installed")

;; 定义需要安装的软件包
(setq package-selected-packages jon/packages)

;; 定义函数用于判断软件包是否安装
(defun jon/packages-installed-p ()
  (dolist (pkg jon/packages t)
    (if (not (package-installed-p pkg)) (return nil))))


;; 如果软件包没有安装则自动安装。
(unless (jon/packages-installed-p)
  (message "%s" "Refreshing package database...")
  (package-refresh-contents)
  (dolist (pkg jon/packages)
    (when (not (package-installed-p pkg))
      (package-install pkg))))


(provide 'at-packages)
