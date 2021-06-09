
(cl:in-package :asdf)

(defsystem "soem_beckhoff_drivers-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "AnalogMsg" :depends-on ("_package_AnalogMsg"))
    (:file "_package_AnalogMsg" :depends-on ("_package"))
    (:file "CommMsg" :depends-on ("_package_CommMsg"))
    (:file "_package_CommMsg" :depends-on ("_package"))
    (:file "CommMsgBig" :depends-on ("_package_CommMsgBig"))
    (:file "_package_CommMsgBig" :depends-on ("_package"))
    (:file "DigitalMsg" :depends-on ("_package_DigitalMsg"))
    (:file "_package_DigitalMsg" :depends-on ("_package"))
    (:file "EncoderInMsg" :depends-on ("_package_EncoderInMsg"))
    (:file "_package_EncoderInMsg" :depends-on ("_package"))
    (:file "EncoderMsg" :depends-on ("_package_EncoderMsg"))
    (:file "_package_EncoderMsg" :depends-on ("_package"))
    (:file "EncoderOutMsg" :depends-on ("_package_EncoderOutMsg"))
    (:file "_package_EncoderOutMsg" :depends-on ("_package"))
    (:file "PSUMsg" :depends-on ("_package_PSUMsg"))
    (:file "_package_PSUMsg" :depends-on ("_package"))
  ))