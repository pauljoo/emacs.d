(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;屏蔽C-SPC，防止输入法切换键冲突
;;(global-unset-key (kbd "C-SPC"))

;;添加emacs搜索路径
(add-to-list 'load-path "D:/tool/emacs-24.3/.emacs.d/lisps")
;;自动补全
(require 'auto-complete-config)
(ac-config-default)
;;禁用工具栏
(tool-bar-mode nil)
;;禁用菜单栏
(menu-bar-mode nil)
;;显示标题栏%f缓冲区完整路径 %p 页面百分数 %l行号
(setq frame-title-format "%f")
;;启动时的大小和屏幕中的位置
(setq default-frame-alist '((height,35)(width,100)(menubar-lines,200)(tool-bar-lines,0)))
;;语法高亮显示
(global-font-lock-mode t)

;;----cedet设置

(require 'cedet)
;;工程管理功能
(global-ede-mode t)
(ede-cpp-root-project "Kernel"
		      :name "Kernel Project"
		      :file "D:/Kernel/Makefile"
		      :include-path '("")
		      :system-include-path '(""))
;;----cedet设置结束

;;----speedbar设置

(require 'speedbar)

;;----speedbar设置结束

;;----日历设置

;;标记日记日期
(setq mark-diary-entries-in-calendar t)
;;关闭节日
(setq mark-holidays-in-calendar nil)
;;初始化时不显示节日
(setq view-calendar-holidays-initially nil)
;;设置经纬度
(setq calendar-latitude +39.54)
(setq calendar-longitude +116.28)
(setq calendar-location-name "北京")

;;----日历设置结束

;;----日记设置

;;默认的日记文件
(setq diary-file "D:/tool/emacs-24.3/diary")

;;----日记设置结束
