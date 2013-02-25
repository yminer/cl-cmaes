;;; Copyright (c) 2012 Yannick Drant, Matthieu Lagacherie, All Rights Reserved

(defpackage :cl-cmaes-system
  (:use :cl :asdf))

(in-package :cl-cmaes-system)

(cl:eval-when (:load-toplevel :execute)
    (asdf:operate 'asdf:load-op 'cffi-grovel))

(cffi:load-foreign-library (format nil "~a/~a" (first
                                                ql:*local-project-directories*) "cl-cmaes/src/cma/libcmaes.so"))

(defsystem :cl-cmaes
    :version "13.2"
    :description "CMAES algorithm CFFI interface"
    :author "Matthieu Lagacherie <matthieu AT lagacherie DOT fr>, Yannick Drant <yannick.drant AT gmail DOT com>"
    :depends-on (:cffi :lisp-unit)
    :pathname "src"
    :components ((:file "package")
                 (cffi-grovel:grovel-file "cmaes-grovel" :depends-on ("package"))
                 (:file "cma/cmaes" :depends-on ("cmaes-grovel"))
                 (:file "interface" :depends-on ("cma/cmaes"))))
