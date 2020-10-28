;;; solarized-colors.lisp

(in-package #:solarized-colors)

;; https://ethanschoonover.com/solarized/#usage-development

(a:define-constant +base03+  "002b36" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - background
 * light - <none>")

(a:define-constant +base02+  "073642" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - background highlights
 * light - <none>")

(a:define-constant +base01+  "586e75" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - comments / secondary content
 * light - optional emphasized content")

(a:define-constant +base00+  "657b83" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - <none>
 * light - body text / default code / primary content")

(a:define-constant +base0+   "839496" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - body text / default code / primary content
 * light - <none>")

(a:define-constant +base1+   "93a1a1" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - optional emphasized content
 * light - comments / secondary content")

(a:define-constant +base2+   "eee8d5" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - <none>
 * light - background highlights")

(a:define-constant +base3+   "fdf6e3" :test 'equal :documentation
  "Base color of the Solarized palette.
Intended role in the dark and light theme variants:
 * dark  - <none>
 * light - background")

(a:define-constant +yellow+  "b58900" :test 'equal :documentation
  "Yellow color of the Solarized palette.")
(a:define-constant +orange+  "cb4b16" :test 'equal :documentation
  "Orange color of the Solarized palette.")
(a:define-constant +red+     "dc322f" :test 'equal :documentation
  "Red color of the Solarized palette.")
(a:define-constant +magenta+ "d33682" :test 'equal :documentation
  "Magenta color of the Solarized palette.")
(a:define-constant +violet+  "6c71c4" :test 'equal :documentation
  "Violet color of the Solarized palette.")
(a:define-constant +blue+    "268bd2" :test 'equal :documentation
  "Blue color of the Solarized palette.")
(a:define-constant +cyan+    "2aa198" :test 'equal :documentation
  "Cyan color of the Solarized palette.")
(a:define-constant +green+   "859900" :test 'equal :documentation
  "Green color of the Solarized palette.")

(defun print-exported-symbols-as-markdown-list ()
  "Helper function for generating exports part of the readme file."
  (let* ((defpackage-list (read-from-string
                           (a:read-file-into-string "package.lisp")))
         (exported-symbols (cdr (find-if (lambda (x)
                                           (and (listp x)
                                                (eq (car x) :export)))
                                         defpackage-list))))
    (dolist (s exported-symbols)
      (format t "  * `~a`~%" (string-downcase (symbol-name s))))))
