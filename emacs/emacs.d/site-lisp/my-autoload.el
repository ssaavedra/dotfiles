
;; Autoloadings
;; Santiago Saavedra


(require 'linum)
(require 'whitespace)

;; Slime
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(require 'slime)
(slime-setup)


;;; Footer.
(provide 'my-autoload)
