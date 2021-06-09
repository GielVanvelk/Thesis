;; Auto-generated. Do not edit!


(when (boundp 'soem_ebox::EBOXPWM)
  (if (not (find-package "SOEM_EBOX"))
    (make-package "SOEM_EBOX"))
  (shadow 'EBOXPWM (find-package "SOEM_EBOX")))
(unless (find-package "SOEM_EBOX::EBOXPWM")
  (make-package "SOEM_EBOX::EBOXPWM"))

(in-package "ROS")
;;//! \htmlinclude EBOXPWM.msg.html


(defclass soem_ebox::EBOXPWM
  :super ros::object
  :slots (_pwm ))

(defmethod soem_ebox::EBOXPWM
  (:init
   (&key
    ((:pwm __pwm) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _pwm __pwm)
   self)
  (:pwm
   (&optional __pwm)
   (if __pwm (setq _pwm __pwm)) _pwm)
  (:serialization-length
   ()
   (+
    ;; float32[2] _pwm
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[2] _pwm
     (dotimes (i 2)
       (sys::poke (elt _pwm i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[2] _pwm
   (dotimes (i (length _pwm))
     (setf (elt _pwm i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get soem_ebox::EBOXPWM :md5sum-) "0d644c5720c3d45355d4cb6a20aa7362")
(setf (get soem_ebox::EBOXPWM :datatype-) "soem_ebox/EBOXPWM")
(setf (get soem_ebox::EBOXPWM :definition-)
      "float32[2] pwm
")



(provide :soem_ebox/EBOXPWM "0d644c5720c3d45355d4cb6a20aa7362")


