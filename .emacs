(setq TeX-auto-save t)
(setq TeX-parse-self t)
(setq-default TeX-master nil)

(add-hook 'LaTeX-mode-hook 'visual-line-mode)
(add-hook 'LaTeX-mode-hook 'flyspell-mode)
(add-hook 'LaTeX-mode-hook 'LaTeX-math-mode)
(add-hook 'LaTeX-mode-hook 'turn-on-reftex)

(setq reftex-plug-into-AUCTeX t)

(add-to-list 'load-path "/home/nasfarley88/.emacs.d/predictive")
(add-to-list 'load-path "/home/nasfarley88/.emacs.d/predictive/texinfo")
(add-to-list 'load-path "/home/nasfarley88/.emacs.d/predictive/html")
(add-to-list 'load-path "/home/nasfarley88/.emacs.d/predictive/latex")
(require 'predictive)

(add-hook 'LaTeX-mode-hook 'predictive-mode)

(if (display-graphic-p)
    (progn
        (tool-bar-mode -1)
	(scroll-bar-mode -1)))

(defun insert-frac ()
  "We insert  \\frac{}{} and position point before the first right brace."
  (interactive)
  (progn
    (insert "\\frac{}{}")
    (backward-char)
    (backward-char)
    (backward-char)))
;;--------------------------------------------------------------------
;;(LaTeX-math-list (?f 'insert-frac "frac" "Constructs"))
