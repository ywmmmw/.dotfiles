;; 快速打开配置文件
(defun open-init-file()
  (interactive)
  (find-file "~/.emacs.d/init.el"))

;; 自动打开文件的外部修改
(global-auto-revert-mode 1)

;; 创建备份文件夹
(make-directory "~/.emacs.d/autosaves/" t)
(make-directory "~/.emacs.d/backups/" t)

;; 修改备份文件的位置
(custom-set-variables
  '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t)))
  '(backup-directory-alist '((".*" . "~/.emacs.d/backups/"))))

;; 'yes or no' replace to 'y or n'
(fset 'yes-or-no-p 'y-or-n-p)

;; 高亮当前行
;;(global-hl-line-mode 1)

;; 关闭启动帮助画面
(setq inhibit-splash-screen 1)

(provide 'init-builtin)
