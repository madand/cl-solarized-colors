;;; package.lisp

(defpackage #:solarized-colors
  (:documentation "Solarized colors package.")
  (:use #:cl)
  (:local-nicknames
   (#:a #:alexandria))
  (:export
   #:+base03+
   #:+base02+
   #:+base01+
   #:+base00+
   #:+base0+
   #:+base1+
   #:+base2+
   #:+base3+
   #:+yellow+
   #:+orange+
   #:+red+
   #:+magenta+
   #:+violet+
   #:+blue+
   #:+cyan+
   #:+green+))

(in-package #:solarized-colors)
