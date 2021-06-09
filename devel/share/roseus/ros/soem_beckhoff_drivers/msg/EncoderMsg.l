;; Auto-generated. Do not edit!


(when (boundp 'soem_beckhoff_drivers::EncoderMsg)
  (if (not (find-package "SOEM_BECKHOFF_DRIVERS"))
    (make-package "SOEM_BECKHOFF_DRIVERS"))
  (shadow 'EncoderMsg (find-package "SOEM_BECKHOFF_DRIVERS")))
(unless (find-package "SOEM_BECKHOFF_DRIVERS::ENCODERMSG")
  (make-package "SOEM_BECKHOFF_DRIVERS::ENCODERMSG"))

(in-package "ROS")
;;//! \htmlinclude EncoderMsg.msg.html


(defclass soem_beckhoff_drivers::EncoderMsg
  :super ros::object
  :slots (_value ))

(defmethod soem_beckhoff_drivers::EncoderMsg
  (:init
   (&key
    ((:value __value) 0)
    )
   (send-super :init)
   (setq _value (round __value))
   self)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; uint16 _value
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint16 _value
       (write-word _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get soem_beckhoff_drivers::EncoderMsg :md5sum-) "6e68bf91459258a84dab807f5c768df7")
(setf (get soem_beckhoff_drivers::EncoderMsg :datatype-) "soem_beckhoff_drivers/EncoderMsg")
(setf (get soem_beckhoff_drivers::EncoderMsg :definition-)
      "uint16 value

")



(provide :soem_beckhoff_drivers/EncoderMsg "6e68bf91459258a84dab807f5c768df7")


