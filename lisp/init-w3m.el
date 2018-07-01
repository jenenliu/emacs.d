;;; package --- Summary
;;; Commentary:
(require 'lazy-set-key)
(require-package 'w3m)

(defvar w3m-mode-map (make-sparse-keymap)
  "w3m mode's keymap.")

;;; Code:
(lazy-set-autoload-key '(("C-z C-z" . w3m)) "init-w3m")
(setq browse-url-browser-function 'w3m-browse-url)
(setq browse-url-new-window-flag t)
(setq w3m-make-new-session t)
(setq w3m-use-cookies t)
(setq w3m-session-deleted-save nil)
(setq w3m-new-session-in-background t)

(setq w3m-default-save-directory "~/.emacs.d/w3m-download")

(lazy-unset-key
 '("s")
 w3m-mode-map)

(lazy-set-key
 '(("/" . w3m-next-form)
   ("H" . w3m-view-previous-page)
   ("L" . w3m-view-next-page)
   ("D" . w3m-dtree)
   ("K" . w3m-tab-next-buffer)
   ("J" . w3m-tab-previous-buffer)
   ("<" . w3m-shift-left)
   (">" . w3m-shift-right)
   ("G" . w3m-submit-form)
   ("e" . w3m-scroll-down-or-previous-url)
   ("f" . w3m-view-this-url)
   ("F" . w3m-view-this-url-new-session)
   ("h" . w3m-history)
   ("[" . w3m-delete-left-tabs)
   ("]" . w3m-delete-right-tabs)
   ("x" . w3m-delete-buffer)
   ("X" . w3m-delete-other-buffers)
   ("t" . w3m-goto-url-new-session))
 w3m-mode-map)
(provide 'init-w3m)
;;; init-w3m ends here
