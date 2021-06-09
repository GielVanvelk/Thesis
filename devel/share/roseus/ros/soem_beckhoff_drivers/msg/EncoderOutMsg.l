;; Auto-generated. Do not edit!


(when (boundp 'soem_beckhoff_drivers::EncoderOutMsg)
  (if (not (find-package "SOEM_BECKHOFF_DRIVERS"))
    (make-package "SOEM_BECKHOFF_DRIVERS"))
  (shadow 'EncoderOutMsg (find-package "SOEM_BECKHOFF_DRIVERS")))
(unless (find-package "SOEM_BECKHOFF_DRIVERS::ENCODEROUTMSG")
  (make-package "SOEM_BECKHOFF_DRIVERS::ENCODEROUTMSG"))

(in-package "ROS")
;;//! \htmlinclude EncoderOutMsg.msg.html


(defclass soem_beckhoff_drivers::EncoderOutMsg
  :super ros::object
  :slots (_control _outvalue ))

(defmethod soem_beckhoff_drivers::EncoderOutMsg
  (:init
   (&key
    ((:control __control) 0)
    ((:outvalue __outvalue) 0)
    )
   (send-super :init)
   (setq _control (round __control))
   (setq _outvalue (round __outvalue))
   self)
  (:control
   (&optional __control)
   (if __control (setq _control __control)) _control)
  (:outvalue
   (&optional __outvalue)
   (if __outvalue (setq _outvalue __outvalue)) _outvalue)
  (:serialization-length
   ()
   (+
    ;; uint8 _control
    1
    ;; uint16 _outvalue
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _control
       (write-byte _control s)
     ;; uint16 _outvalue
       (write-word _outvalue s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _control
     (setq _control (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _outvalue
     (setq _outvalue (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get soem_beckhoff_drivers::EncoderOutMsg :md5sum-) "297826ed745b96cde20150fa2f0950c2")
(setf (get soem_beckhoff_drivers::EncoderOutMsg :datatype-) "soem_beckhoff_drivers/EncoderOutMsg")
(setf (get soem_beckhoff_drivers::EncoderOutMsg :definition-)
      "uint8 control
uint16 outvalue

")



(provide :soem_beckhoff_drivers/EncoderOutMsg "297826ed745b96cde20150fa2f0950c2")


