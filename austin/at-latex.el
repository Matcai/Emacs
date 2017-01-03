;;     	 _     	       _   _
;;     	/ \  _ 	 _ ___|	|_(_)_ __
;;     / _ \| |	| / __|	__| | '_ \
;;    /	___ \ |_| \__ \	|_| | |	| |
;;   /_/   \_\__,_|___/\__|_|_|	|_|
;;
;;  configure org-mode->latex->pdf export mode  to support chinese
;;


(setq org-latex-create-formula-image-program 'imagemagick)
(setq org-latex-default-class "ctexart")
(setq org-latex-classes
	  (quote
	   (("ctexart"
		 "\\documentclass[fontset=none,UTF8,a4paper,zihao=-5]{ctexart}"
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
		 ("\\paragraph{%s}" . "\\paragraph*{%s}")
		 ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
	    ("ctexrep" "\\documentclass[fontset=none,UTF8,a4paper,zihao=-5]{ctexrep}"
		 ("\\part{%s}" . "\\part*{%s}")
		 ("\\chapter{%s}" . "\\chapter*{%s}")
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
	    ("ctexbook" "\\documentclass[fontset=none,UTF8,a4paper,zihao=-5]{ctexbook}"
		 ("\\part{%s}" . "\\part*{%s}")
		 ("\\chapter{%s}" . "\\chapter*{%s}")
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
	    ("beamer" "\\documentclass[fontset=none,UTF8,a4paper,zihao=-4]{beamer}
\\usepackage[fontset=none,UTF8,a4paper,zihao=-4]{ctex}"
		 ("\\section{%s}" . "\\section*{%s}")
		 ("\\subsection{%s}" . "\\subsection*{%s}")
		 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
	   ))
;;(setq org-latex-default-packages-alist
;; 	  (quote
;; 	   (("" "fixltx2e" nil)
;; 		("" "graphicx" t)
;; 		("" "longtable" nil)
;; 		("" "float" nil)
;; 		("" "wrapfig" nil)
;; 		("" "rotating" nil)
;; 		("" "amsmath" t)
;; 		("" "textcomp" t)
;; 		("" "marvosym" t)
;; 		("" "wasysym" t)
;; 		("" "amssymb" t)
;; 		("" "hyperref" nil)
;; 		"\\tolerance=1000")
;; 	   ))
(setq org-latex-pdf-process
	  (quote
	   ("xelatex -interaction nonstopmode -output-directory %o %f" "bibtex %b"
		"xelatex -interaction nonstopmode -output-directory %o %f"
		"xelatex -interaction nonstopmode -output-directory %o %f")
	   ))
(setq org-latex-packages-alist
	  (quote
	   ("
\\setmainfont{Times New Roman}
\\setCJKmainfont[ItalicFont={STKaiti}]{STSong}
" "
%%% 默认使用的latex宏包 %%%
\\usepackage{tikz}
\\usepackage{CJKulem}
\\usepackage{graphicx}
%%% 设置页面边距 %%%
\\usepackage[top=2.00cm, bottom=1.80cm, left=1.80cm, right=1.80cm]{geometry} ")
	   ))
;; The end of auto generated code.

(provide 'at-latex)
