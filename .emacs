(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ede-project-directories (quote ("/root/Projects/TestPrj" "/root"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
;;屏蔽C-SPC，防止输入法切换键冲突
;;(global-unset-key (kbd "C-SPC"))

;;添加emacs搜索路径
(add-to-list 'load-path "/root/.emacs.d/lisps")
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
(require 'cedet)
(global-ede-mode t)
(setq semantic-default-submodes '(global-semantic-idle-scheduler-mode
				  global-semanticdb-minor-mode
				  global-semantic-idle-summary-mode
				  global-semantic-mru-bookmark-mode))
(semantic-mode 1)
(require 'speedbar)
