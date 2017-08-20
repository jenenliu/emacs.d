;;; set tab width to 4 and run gofmt before save
(add-hook 'go-mode-hook
          (lambda ()
            ;;            (add-hook 'before-save-hook 'gofmt-before-save)
            (setq tab-width 4)
            (setq indent-tabs-mode 1)))

(provide 'init-golang)
