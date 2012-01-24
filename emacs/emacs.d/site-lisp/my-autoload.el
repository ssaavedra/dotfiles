

;; Autoloadings
;; Santiago Saavedra


(require 'linum)
(require 'whitespace)

;; Slime
(setq inferior-lisp-program "/usr/local/bin/sbcl")
(setq common-lisp-hyperspec-root "http://localhost/clhs/HyperSpec/")
(require 'slime)
(slime-setup)

;; OCaml-Tuareg
(require 'tuareg)

;; Octave mode on all .m files
(autoload 'octave-mode "octave-mod" nil t)
(setq auto-mode-alist
      (cons '("\\.m$" . octave-mode) auto-mode-alist))
(add-hook 'octave-mode-hook
	  (lambda ()
	    (abbrev-mode 1)
	    (auto-fill-mode 1)
	    (if (eq window-system 'x)
		(font-lock-mode 1))))

(add-hook 'inferior-octave-mode-hook
	  (lambda ()
	    (turn-on-font-lock)
	    (define-key inferior-octave-mode-map [up]
	      'comint-previous-input)
	    (define-key inferior-octave-mode-map [down]
	      'comint-next-input)))


;;; Footer.
(provide 'my-autoload)
