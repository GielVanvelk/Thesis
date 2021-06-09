
(cl:in-package :asdf)

(defsystem "soem_ebox-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "EBOXAnalog" :depends-on ("_package_EBOXAnalog"))
    (:file "_package_EBOXAnalog" :depends-on ("_package"))
    (:file "EBOXDigital" :depends-on ("_package_EBOXDigital"))
    (:file "_package_EBOXDigital" :depends-on ("_package"))
    (:file "EBOXOut" :depends-on ("_package_EBOXOut"))
    (:file "_package_EBOXOut" :depends-on ("_package"))
    (:file "EBOXPWM" :depends-on ("_package_EBOXPWM"))
    (:file "_package_EBOXPWM" :depends-on ("_package"))
  ))