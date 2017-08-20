;;; ### Speedbar ###
;;; --- 快速访问文件和tags
(lazy-set-autoload-key
 '(
   ("C-x C-z" . sr-speedbar-toggle)        ;显示/隐藏speedbar
   ("C-x C-x" . sr-speedbar-select-window) ;选中speedbar窗口
   )
 "init-speedbar")

;;; edit command
(lazy-set-autoload-key
 '(
   ("C-o" . newline-without-break-of-line)
   ("M-o" . upline-without-break-of-line)
   ("M-k" . kill-whole-line)
   ("M-c" . backward-kill-word)
   ("C-x C-'" . comment-or-uncomment-region)
   )
 "init-local")

;;; ### Tabbar ###
;;; --- 多标签浏览
(lazy-set-key
 '(
   ("M-7" . tabbar-backward-tab)              ;移动到后一个标签
   ("M-8" . tabbar-forward-tab)               ;移动到前一个标签
   ("M-9" . tabbar-backward-group)            ;移动到后一个标签组
   ("M-0" . tabbar-forward-group)             ;移动到前一个标签组
   ("<C-tab>" . tabbar-backward-tab)          ;移动到后一个标签
   ("<C-S-iso-lefttab>" . tabbar-forward-tab) ;移动到前一个标签
   ))

;;; ### Toolkit ###
;;; --- 工具函数
(lazy-set-key
 '(
   ;; ("C-c ns" . notes-search)                ;便签搜索
   ;; ("C-c nn" . notes-new)                   ;新建便签
   ;; ("s-c h" . ff-find-other-file)           ;打开头文件或者实现文件
   ;; ("s-c o" . one-key-menu-directory)       ;目录打开菜单
   ;; ("s-," . bury-buffer)                    ;隐藏当前buffer
   ;; ("s-." . unbury-buffer)                  ;反隐藏当前buffer
   ;; ("s-&" . killall)                        ;杀掉进程
   ("C-x w" . count-words)                  ;计算单词的数量
   ("C-x f" . find-file-at-point)           ;文件跳转
   ;; ("s-f" . find-file-root)                 ;用root打开文件
   ;; ("s-r" . find-file-smb)                  ;访问samba
   ;; ("<print>" . save-screenshots)           ;截屏
   ;; ("<M-s-return>" . toggle-debug-on-error) ;切换调试模式
   ;; ("s-1" . sort-lines)                     ;排序
   ;; ("s-2" . hanconvert-region)              ;转换简体或繁体中文
   ;; ("s-3" . uniquify-all-lines-buffer)      ;删除重复的行
   ;; ("s-4" . elisp-depend-insert-comment)    ;插入 `...' 注释代码
   ;; ("s-5" . elisp-depend-insert-require)    ;插入 (require '...) 语句
   ;; ("s-[" . eval-expression)                ;执行表达式
   ;; ("s-\\" . artist-mode)                   ;绘制模式
   ;; ("M-s-u" . ediff-buffers)                ;ediff
   ;; ("C-s-q" . quoted-insert)                ;读取系一个输入字符并插入
   ("M-h" . set-mark-command)               ;Instead C-Space for Chinese input method
   ("M-z" . upcase-char)                    ;Upcase char handly with capitalize-word
   ))

;;; ### Functin key ###
;;; --- 功能函数
(lazy-set-key
 '(
   ("<f1>" . sh-show-help)                       ;elisp help
   ("<f2>" . refresh-file)                       ;自动刷新文件
   ("<f3>" . visit-tags-table)                   ;查找TAGS文件 (更新TAGS表)
   ("<f4>" . generate-gtags-files)               ;生成gtags引用文件
   ("<f5>" . emacs-session-save)                 ;退出emacs
   ("C-x C-c" . emacs-session-save)              ;退出emacs
   ("<f6>" . lock-screen)                        ;锁屏
   ("<f8>" . dired-jump)                         ;文件管理起
   ("<f9>" . list-load-path-shadows)             ;显示重复加载的库
   ("<f10>" . open-current-log-keyboard-command) ;打开命令日志
   ("<f12>" . hibernate-disk)                    ;休眠
   ("M-1" . strip-blank-lines)                   ;删除选中区域的所有空行
   ("M-2" . indent-buffer)                       ;自动格式化当前Buffer
   ("M-3" . delete-trailing-whitespace)          ;删除行末空格
   ("M-4" . whitespace-cleanup)                  ;清理空格
   ("M-5" . insert-line-number+)                 ;自动在行首添加行号
   ("M-6" . strip-line-number)                   ;删除选中区域的行号
   ("C-4" . insert-changelog-date)               ;插入日志时间 (%Y/%m/%d)
   ("C-5" . insert-standard-date)                ;插入标准时间 (%Y-%m-%d %T)
   ("C-&" . switch-to-messages)                  ;跳转到 *Messages* buffer
   ("C-7" . jump-back)                           ;返回查找符号定义前的位置
   ("M-I" . backward-indent)                     ;向后移动4个字符
   ))

(provide 'init-key)
