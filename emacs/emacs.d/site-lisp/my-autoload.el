
;; Autoloadings
;; Santiago Saavedra


(require 'linum)
(require 'whitespace)

;; Slime
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq common-lisp-hyperspec-root "http://localhost/clhs/HyperSpec/")
(require 'slime)
(slime-setup)


;;; Footer.
(provide 'my-autoload)
