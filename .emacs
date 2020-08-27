;; to enable interactively do things
; (require 'ido)
; (ido-mode t)


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(ansi-color-names-vector
   ["#2e3436" "#a40000" "#4e9a06" "#c4a000" "#204a87" "#5c3566" "#729fcf" "#eeeeec"])
 '(custom-enabled-themes (quote (tango-dark)))
 '(org-agenda-files nil)
 '(save-place t nil (saveplace)))

;(display-time)

(display-time-mode 1) ; 显示时间
(setq display-time-24hr-format t) ; 24小时格式
(setq display-time-day-and-date t) ; 显示日期

;2014年10月22日  9:29 Wed AM
;enable shift to select block for Org files 
(setq org-support-shift-select t)

;2015年05月 1日  4:36 Fri AM
;Enable Table indent with paragraph
;(setq org-startup-indented t)

;(add-hook 'find-file-hook (lambda () (linum-mode 1)))
;-------------line number ---------------
;(global-linum-mode 1)





; python-mode
;;(setq py-install-directory "~/.emacs.d/python-mode.el-6.2.0")
;;(add-to-list 'load-path py-install-directory)
;;(require 'python-mode)


; use IPython
;;(setq-default py-shell-name "ipython")
;;(setq-default py-which-bufname "IPython")
; use the wx backend, for both mayavi and matplotlib
;;(setq py-python-command-args
;;  '("--gui=wx" "--pylab=wx" "-colors" "Linux"))
;;(setq py-force-py-shell-name-p t)

; switch to the interpreter after executing code
;;(setq py-shell-switch-buffers-on-execute-p t)
;;(setq py-switch-buffers-on-execute-p t)
; don't split windows
;;(setq py-split-windows-on-execute-p nil)
; try to automagically figure out indentation
; IN A MESS indent
;(setq py-smart-indentation t)

; pymacs
;;(add-to-list 'load-path "~/.emacs.d/Pymacs-0.25")
;;(autoload 'pymacs-apply "pymacs")
;;(autoload 'pymacs-call "pymacs")
;;(autoload 'pymacs-eval "pymacs" nil t)
;;(autoload 'pymacs-exec "pymacs" nil t)
;;(autoload 'pymacs-load "pymacs" nil t)
;;(autoload 'pymacs-autoload "pymacs")

; ropemacs
;(require 'pymacs)
;(pymacs-load "ropemacs" "rope-")

;------------;
;;; Cursor ;;;
;------------;


; don't blink the cursor
(blink-cursor-mode nil)

; make sure transient mark mode is enabled (it should be by default,
; but just in case)
(transient-mark-mode t)

; turn on mouse wheel support for scrolling
(require 'mwheel)
(mouse-wheel-mode t)

;~/.emacs.d/color-theme-6.6.0
;-----------------;
;;; color-theme ;;;
;-----------------;
;============================= If you need more color-theme you can uncomment the following lines
;(add-to-list 'load-path "~/.emacs.d/color-theme-6.6.0/")
;(require 'color-theme)
;(eval-after-load "color-theme"
;  '(progn
;     (color-theme-initialize)
;     (color-theme-hober)))



;-------------ORG MODE ---------------
(require 'org)
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)


;; insert-date
(defun insert-date ()
  "Insert date at point."
  (interactive)
  (insert (format-time-string "%Y年%m月%e日 %l:%M %a %p")))

;; insert-Short-date
(defun insert-Short-date ()
  "Insert date at point."
  (interactive)
  (insert (format-time-string "%Y %m %e %l:%M")))


; 2014年10月14日  7:15 Tue AM
; (goto-line) "M-g g"

;2014年10月14日 10:41 Tue AM
;(setq org-todo-keywords
;     '((sequence "TODO(t)" "DOING(i!)" "HANGUP(h!)" "|" "DONE(d!)" "CANCEL(c!)")))

;2019年05月 5日  5:01 Sun PM
(setq org-todo-keywords
      '((sequence "TODO(t)" "WAIT(w@/!)" "|" "DONE(d!)" "CANCELED(c@)")))



; 2014年11月 4日 12:33 Tue PM
;-----------------
;(setq org-todo-keywords
;      '((sequence "TODO" "|" "DONE")
;	(sequence "REPORT" "BUG" "KNOaWNCAUSE" "|" "FIXED")
;	(sequence "|" "CANCELED")))


;2014年10月14日  3:36 Tue PM
(set-face-foreground 'minibuffer-prompt "white")


(defun insert-random-uuid ()
  (interactive)
  (shell-command "uuidgen" t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )


;; bind key to kill to begin | 2019年05月 9日 10:18 Thu AM
(defun backward-kill-line (arg)
  "Kill ARG lines backward."
  (interactive "p")
  (kill-line (- 1 arg)))

(global-set-key "\C-cu" 'backward-kill-line) ;; `C-c u'

;disable backup
(setq backup-inhibited t)
;disable auto save
(setq auto-save-default nil)

;;open files at last-edited position
(save-place-mode 1)
