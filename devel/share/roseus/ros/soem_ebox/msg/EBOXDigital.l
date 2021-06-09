;; Auto-generated. Do not edit!


(when (boundp 'soem_ebox::EBOXDigital)
  (if (not (find-package "SOEM_EBOX"))
    (make-package "SOEM_EBOX"))
  (shadow 'EBOXDigital (find-package "SOEM_EBOX")))
(unless (find-package "SOEM_EBOX::EBOXDIGITAL")
  (make-package "SOEM_EBOX::EBOXDIGITAL"))

(in-package "ROS")
;;//! \htmlinclude EBOXDigital.msg.html


(defclass soem_ebox::EBOXDigital
  :super ros::object
  :slots (_digital ))

(defmethod soem_ebox::EBOXDigital
  (:init
   (&key
    ((:digital __digital) (let (r) (dotimes (i 8) (push nil r)) r))
    )
   (send-super :init)
   (setq _digital __digital)
   self)
  (:digital
   (&optional __digital)
   (if __digital (setq _digital __digital)) _digital)
  (:serialization-length
   ()
   (+
    ;; bool[8] _digital
    (* 1    8)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[8] _digital
     (dotimes (i 8)
       (if (elt _digital i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[8] _digital
   (dotimes (i (length _digital))
     (setf (elt _digital i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;;
   self)
  )

(setf (get soem_ebox::EBOXDigital :md5sum-) "aec3537187e55892c1c92ecc0b9bccdf")
(setf (get soem_ebox::EBOXDigital :datatype-) "soem_ebox/EBOXDigital")
(setf (get soem_ebox::EBOXDigital :definition-)
      "bool[8] digital

")



(provide :soem_ebox/EBOXDigital "aec3537187e55892c1c92ecc0b9bccdf")


