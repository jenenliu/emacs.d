;;; edit related 
(defun point-to-top ()
  "Put point on top line of window."
  (interactive)
  (move-to-window-line 0))

(defun point-to-bottom ()
  "Put point on bottom line of window."
  (interactive)
  (move-to-window-line -1))

(defun scroll-to-top ()
  "Scroll current line to top of window."
  (interactive)
  (set-window-start (selected-window) (point-at-bol)))

(defun next-line-and-comment ()
  "Go to the next line and then add a comment."
  (interactive)
  (newline-without-break-of-line)
  (comment-dwim))

(defun newline-without-break-of-line ()
  "Open a newline at the below line."
  (interactive)
  (let ((oldpos (point)))
    (end-of-line)
    (newline-and-indent)))

(defun upline-without-break-of-line()
  "Open a newline at above line."
  (interactive)
  (beginning-of-line)
  (open-line 1))

;; (defun other-window-backward ()
;; "Select the previous window."
;; (interactive)
;; (other-window -1))

(global-set-key "\C-x\C-p" 'other-window-backward)

(provide 'init-local)
