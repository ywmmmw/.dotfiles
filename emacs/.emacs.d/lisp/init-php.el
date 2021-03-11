;;; package --- Summary
;;; Commentary:
;;; Code:
;(use-package php-mode :ensure t)

(use-package web-mode
  :ensure t
  :mode (
	 ".php$"
	 ".html?$"
	 )
  )

(provide 'init-php)


