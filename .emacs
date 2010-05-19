;; Base language setting, Copy from http://forum.ubuntu.org.cn/viewtopic.php?t=40005
(set-language-environment 'UTF-8)
(setq w32-charset-info-alist
    (cons '("gbk" w32-charset-gb2312 . 936) w32-charset-info-alist))

(setq default-frame-alist
      (append
       '((font . "fontset-gbk")) default-frame-alist))

(create-fontset-from-fontset-spec
  "-outline-Courier New-normal-r-normal-normal-13-97-96-96-c-*-fontset-gbk")
(set-fontset-font
 "fontset-default" nil
 "-outline-新宋体-normal-r-normal-*-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-gbk" 'kana
 "-outline-新宋体-normal-r-normal-*-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-gbk" 'han
 "-outline-新宋体-normal-r-normal-*-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-gbk" 'cjk-misc
 "-outline-新宋体-normal-r-normal-*-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-fontset-font
 "fontset-gbk" 'symbol
 "-outline-新宋体-normal-r-normal-*-14-*-96-96-c-*-iso10646-1" nil 'prepend)
(set-default-font "fontset-gbk")
;; 設置默認字體，我現在喜歡大一點的字體，養眼。
(set-default-font "Courier New-10")
;;(set-default-font "Monaco -8")
;; 设置中文字体
;;(set-fontset-font "fontset-default"
;;		  'unicode '("STHeiti" . "unicode-bmp"))

;; 黑白色比較容易疲勞，我選了一組不那麽亮眼的組合
(add-to-list 'load-path
	     "~/site-lisp")

(add-to-list 'load-path
	     "~/site-lisp/color-theme")
(require 'color-theme)
;;(load-file "~/site-lisp/color-theme-twilight.el")

(load-file "~/site-lisp/transform-window.el")

;;(load "django-mode.el")

;;(color-theme-twilight)
;; 将mmm-mode的背景色设深一些，与当前的背景色匹配
;;(set-face-background 'mmm-default-submode-face "DarkBlue")

;; 設置環境
(global-set-key (kbd "C-SPC") 'nil)
(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(column-number-mode t)
 '(current-language-environment "UTF-8")
 '(display-time-mode t)
 '(ecb-options-version "2.32")
 '(indent-tabs-mode nil)
 '(load-home-init-file t t)
 '(safe-local-variable-values (quote ((encoding . utf-8))))
 '(show-paren-mode t)
 '(tab-stop-list nil)
 '(tab-width 4)
 '(transient-mark-mode t))

(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

(setq default-tab-width 4) 
;;禁用启动信息
(setq inhibit-startup-message t)

;;关闭烦人的出错时的提示声
(setq visible-bell t) 

;(setq backup-directory-alist (quote (("." . "~/backups"))))
;;不产生备份文件
(setq make-backup-files nil)

;;设置默认工作目录
(setq default-directory "d:/")

;; 以下有些設置的作用記不清了，以後慢慢補回吧。
(global-font-lock-mode t)
(auto-image-file-mode t)
(fset 'yes-or-no-p 'y-or-n-p) ;将yes/no替换为y/n
(column-number-mode t) ; 显示列号
(show-paren-mode t)
(display-time-mode 1) ; 显示时间
(setq display-time-24hr-format t) ; 24小时格式
(setq display-time-day-and-date t) ; 显示日期
(mouse-avoidance-mode 'animate) ; 光标移动到鼠标下时，鼠标自动弹开
(transient-mark-mode t)
(menu-bar-mode nil)
(tool-bar-mode nil)
(setq x-select-enable-clipboard t)
(setq frame-title-format "gFn@%b") ; 显示当前编辑的文档


(add-to-list 'load-path
			 "~/site-lisp")

(require 'yasnippet-bundle)
(yas/initialize)
(yas/load-directory "~/site-lisp/yasnippet/snippets")

(setq default-tab-width 4)

(transient-mark-mode t)

;;(tabbar-mode t)

;; 启动emacs server监听
(server-mode t)

;; Haskell mode
(add-hook 'haskell-mode-hook 'turn-on-haskell-decl-scan)
(add-hook 'haskell-mode-hook 'turn-on-haskell-doc-mode)
(add-hook 'haskell-mode-hook 'turn-on-haskell-indent)
(add-hook 'haskell-mode-hook 'turn-on-haskell-simple-indent)
(add-hook 'haskell-mode-hook 'haskell-mode-hook-func)

(defun haskell-mode-hook-func ()
  (linum-mode t)
)

(require 'auto-complete)
(global-auto-complete-mode t)
(require 'auto-complete-yasnippet)
(require 'auto-complete-cpp)
(require 'auto-complete-python)

;; set Python mode
;; 代码折叠设置来自 gb@cs.unc.edu， 感谢他。
(add-hook 'python-mode-hook 'python-mode-hook t)

(defun py-outline-level ()
  (let (buffer-invisibility-spec)
	(save-excursion
	  (skip-chars-forward "\t ")
	  (current-column))))

(defun python-mode-hook ()
  ; this gets called by outline to deteremine the level. Just use the length of the whitespace
  (custom-set-variables
	'(indent-tabs-mode nil)
	'(tab-width 4)
	'(tab-stop-list nil)
	)
  (linum-mode t)
  ; outline uses this regexp to find headers. I match lines with no indent and indented "class"
  ; and "def" lines.
  ; 这里我利用了 Martin Sand Christensen 提供的正则表达式，感谢他。
  (setq outline-regexp "[^ \t]\\|[ \t]*\\(def\\|class\\|if\\|elif\\|else\\|while\\|for\\|try\\|except\\|finally|with\\) ")
  ; enable our level computation
  (setq outline-level 'py-outline-level)
  ; turn on outline mode
  (outline-minor-mode t)
  ; make paren matches visible
  (show-paren-mode 1)
)


(require 'php-mode)
(add-hook 'php-mode-user-hook 'turn-on-font-lock)
(add-hook 'php-mode-user-hook
          '(lambda () (define-abbrev php-mode-abbrev-table "ex" "extends")))

;; Perl6 Support
;; (defalias 'perl-mode 'cperl-mode)
(autoload 'cperl-mode "cperl-mode" "alternate mode for editing Perl programs" t)

;; Use cperl-mode instead of the default perl-mode
(add-to-list 'auto-mode-alist '("\\.\\([pP][Llm]\\|al\\)\\'" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("perl5" . cperl-mode))
(add-to-list 'interpreter-mode-alist '("miniperl" . cperl-mode))

(add-hook 'cperl-mode-hook 'cperl-mode-hook t)
(defun cperl-mode-hook ()
  (setq cperl-continued-statement-offset 0)
  (setq cperl-extra-newline-before-brace t)
;;  (set-face-background 'cperl-array-face "wheat")
;;  (set-face-background 'cperl-hash-face "wheat")
  (cperl-set-style "CPerl")
  (setq cperl-indent-level 4)
  (linum-mode t)
)

;; Emacs Muse
(load "muse-init")

(put 'upcase-region 'disabled nil)

;; psvn
(require 'psvn)

;; dot
(load-library "graphviz-dot-mode")

;; docbook
(require 'docbook-xml-mode)

;; Mercrial
(add-to-list 'load-path "~/site-lisp/mercurial")
(require 'mercurial)

;; django setting
(require 'django-html-mode)

;;(load "django-mode.el")

;;  css setting
(add-hook 'css-mode-hook 
		  '(lambda()
			 (custom-set-variables
			  '(indent-tabs-mode nil)
			  '(tab-width 2))
			 ))

;; javascript mode
(autoload 'javascript-mode "javascript" nil t)

;; MoinMoin setting
(require 'moinmoin-mode)

;; regex-tool.el
(load "regex-tool" t)
(setq regex-tool-perl-path "~/perl-5.10/bin/perl")

;; TRAMP 远程文件编辑支持
(require 'tramp)

;; w3m setting
(setq w3m-use-favicon nil)
(setq w3m-command-arguments '("-cookie" "-F"))
(setq w3m-use-cookies t)
(setq w3m-home-page "http://wiki.rdev.kingsoft.net/moin/") 

;;htmlize
(require 'htmlize)

;; KSPEG
(load "kspeg")

;; insert-date
(defun insert-date ()
  "Insert date at point."
  (interactive)
  (insert (format-time-string "%Y年%m月%e日 星期%a %p %l:%M")))

(global-set-key [f1] 'shell)
;;恢复，常用键 
(global-set-key [f2] 'undo) 
;;反恢复，不是很常用，但是绑定了还是方便些 
(global-set-key [f3] 'redo) 
;;F4,kill键，习惯设置，关闭当前buffer 
(global-set-key [f4] 'kill-this-buffer) 
;;打开一个终端，根据你的爱好可以绑定为：eshell,shell,terminal-emulator 
(global-set-key [f11] 'w32-maximize-frame)

(defun my-fullscreen ()
  (interactive)
  (x-send-client-message
   nil 0 nil "_NET_WM_STATE" 32
   '(2 "_NET_WM_STATE_FULLSCREEN" 0))
)

(defun w32-maximize-frame () 
"Maximize the current frame" 
(interactive) 
(w32-send-sys-command 61488))

;;文件管理器，常用
(global-set-key [f9] 'gnus) 
;;习惯设置，打开／关闭菜单 
(global-set-key [f10] 'menu-bar-mode) 
;;编译等，暂时还不常用 
(global-set-key [f5] 'compile) 
(global-set-key [f8] 'gdb) 

(setq default-frame-alist
      '((height . 43) (width . 115))) 

;;(set-frame-parameter (selected-frame) 'alpha '(85 50))
;;(add-to-list 'default-frame-alist '(alpha 85 50))
