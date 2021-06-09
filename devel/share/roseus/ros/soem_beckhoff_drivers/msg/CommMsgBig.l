;; Auto-generated. Do not edit!


(when (boundp 'soem_beckhoff_drivers::CommMsgBig)
  (if (not (find-package "SOEM_BECKHOFF_DRIVERS"))
    (make-package "SOEM_BECKHOFF_DRIVERS"))
  (shadow 'CommMsgBig (find-package "SOEM_BECKHOFF_DRIVERS")))
(unless (find-package "SOEM_BECKHOFF_DRIVERS::COMMMSGBIG")
  (make-package "SOEM_BECKHOFF_DRIVERS::COMMMSGBIG"))

(in-package "ROS")
;;//! \htmlinclude CommMsgBig.msg.html


(defclass soem_beckhoff_drivers::CommMsgBig
  :super ros::object
  :slots (_channels ))

(defmethod soem_beckhoff_drivers::CommMsgBig
  (:init
   (&key
    ((:channels __channels) (let (r) (dotimes (i 0) (push (instance soem_beckhoff_drivers::CommMsg :init) r)) r))
    )
   (send-super :init)
   (setq _channels __channels)
   self)
  (:channels
   (&rest __channels)
   (if (keywordp (car __channels))
       (send* _channels __channels)
     (progn
       (if __channels (setq _channels (car __channels)))
       _channels)))
  (:serialization-length
   ()
   (+
    ;; soem_beckhoff_drivers/CommMsg[] _channels
    (apply #'+ (send-all _channels :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; soem_beckhoff_drivers/CommMsg[] _channels
     (write-long (length _channels) s)
     (dolist (elem _channels)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; soem_beckhoff_drivers/CommMsg[] _channels
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _channels (let (r) (dotimes (i n) (push (instance soem_beckhoff_drivers::CommMsg :init) r)) r))
     (dolist (elem- _channels)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get soem_beckhoff_drivers::CommMsgBig :md5sum-) "9a82f040b0f86ae1565e078936798d4c")
(setf (get soem_beckhoff_drivers::CommMsgBig :datatype-) "soem_beckhoff_drivers/CommMsgBig")
(setf (get soem_beckhoff_drivers::CommMsgBig :definition-)
      "CommMsg[] channels

================================================================================
MSG: soem_beckhoff_drivers/CommMsg
uint8[] datapacket
uint8 datasize
")



(provide :soem_beckhoff_drivers/CommMsgBig "9a82f040b0f86ae1565e078936798d4c")


