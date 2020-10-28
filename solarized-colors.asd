(defsystem #:solarized-colors
  :description "Solarized colors."
  :long-description #.(read-file-string
                       (subpathname *load-pathname* "README.md"))
  :author "Andriy B. Kmit' <dev@madand.net>"
  :license "CC0"
  :version "1.0"
  :depends-on (#:alexandria)
  :serial t
  :components ((:file "package")
               (:file "solarized-colors")))
