;; Initialize

(add-to-list 'load-path "~/site-lisp/muse-latest/lisp")
(add-to-list 'load-path "~/site-lisp/planner-3.42")


(require 'outline)       ; I like outline-style faces
(require 'muse)          ; load generic module
(require 'muse-colors)   ; load coloring/font-lock module
(require 'muse-mode)     ; load authoring mode
(require 'muse-blosxom)  ; load blosxom module
(require 'muse-docbook)  ; load DocBook publishing style
(require 'muse-html)     ; load (X)HTML publishing style
(require 'muse-latex)    ; load LaTeX/PDF publishing styles
(require 'muse-latex2png) ; publish <latex> tags
(require 'muse-project)  ; load support for projects
(require 'muse-texinfo)  ; load Info publishing style
(require 'muse-wiki)     ; load Wiki support
(require 'muse-xml)      ; load XML support
;; (require 'muse-message)  ; load message support (experimental)
;; (require 'planner-publish) ; load the Planner publishing styles
;; (require 'planner-calendar) ; load the Planner Calendar funciton

;; 我将css放置于/var/www/css路径中。考虑到未来会有整站上传到服务器的需求，
;; 写URL绝对路径并不是一个可靠的方法，而且可能会有多级目录，又不能简单的把
;; 相对路径写在muse-xhtml-style-sheet变量中，我于是采取了下面的方法，把
;; 获取路径的方法写在一个函数中，在发布的时候由具体的Muse文档自己解析。
(defun css-path () 
  (file-relative-name "~/site-lisp/muse/stylesheets"
					   (file-name-directory (muse-current-file))))

;;; Custom variables
(custom-set-variables
 '(muse-html-charset-default "utf-8")
 '(muse-html-encoding-default (quote utf-8))
 '(muse-html-meta-content-encoding (quote utf-8))
 '(muse-xhtml-style-sheet "<link rel=\"stylesheet\" type=\"text/css\" charset=\"utf-8\" media=\"all\" href=\"<lisp>(css-path)</lisp>/common.css\" />
    <link rel=\"stylesheet\" type=\"text/css\" charset=\"utf-8\" media=\"screen\" href=\"<lisp>(css-path)</lisp>/screen.css\"\" />
    <link rel=\"stylesheet\" type=\"text/css\" charset=\"utf-8\" media=\"print\" href=\"<lisp>(css-path)</lisp>/print.css\"/>") 
)

(load "muse-projects")

;; 定制鉤子
(add-hook 'muse-mode-hook 
          '(lambda()
			 ;; 挂载脚注支持
			 (footnote-mode t)
			 ;; 挂载代码折叠功能
             (outline-minor-mode t)
			 ;; 设定行宽
			 (set-fill-column 80)
  ))