;; KSPEG 辅助插件
;; 作者：刘鑫<march.liu@gmail.com>
;; 授权：GPL v2
;; 建立日期：2009年1月5日
;; 使用方法：
;;   将文件放入 load-path 包含的路径中
;;   在启动文件（例如~/.emacs）中加入
;;     (require 'kspeg)
;; 
;; 更新记录：
;;   2009 年 1 月 13日加入计划条目向导
;;   2009 年 1 月 5 日建立，加入工作报告条目助手
;; 交互式的插入一个工作报告条目
(defun new-job-report-item-wizzard ()
  "插入工作条目，内容顺序为： 维基前缀 任务级别已用时:任务简述/due:预计用时/延期次数.延期时长/tgt: 具体交付工件/指标（优先传票）
详见：http://wiki.rdev.kingsoft.net/moin/SpegWorkRepFormat"
  (interactive)
  (insert (apply 'concat 
   (map 'list '(lambda (x) (call-interactively x)) 
                '(new-jri-prefix
                  new-jri-paid
                  new-jri-mission
                  new-jri-due
                  new-jri-defer
                  new-jri-target)))))

(defun new-job-schedule-item ()
  "插入计划条目，内容顺序为：维基前缀 任务级别:任务简述/due:预计用时/tgt: 具体交付工件/指标（优先传票）"
  (interactive)
  (insert (apply 'concat 
   (map 'list '(lambda (x) (call-interactively x)) 
                '(new-jri-prefix
                  new-jri-mission
                  new-jri-due
                  new-jri-target)))))

(defun new-jri-prefix (wiki-prefix level)
  (interactive "s维基前缀： \ns任务级别（A|B|C）：")
  (concat wiki-prefix " "
          level paidTime ":"))

(defun new-jri-paid (time)
  (interactive "s已用时：")
  time
)

(defun new-jri-mission (mission)
  (interactive "s任务简述：")
  mission)

(defun new-jri-due (due)
  (interactive "s预计用时：")
  (concat "due:" due))

(defun new-jri-defer (times howLong)
  (interactive "s延期次数： \ns延期时长：")
  (concat "/" times "t." howLong))

(defun new-jri-target (target)
  (interactive "s具体交付工件指标（优先传票）：")
  (concat "tgt:" target))

(provide 'kspeg)