;; Auto-generated. Do not edit!


(when (boundp 'soem_beckhoff_drivers::CommMsg)
  (if (not (find-package "SOEM_BECKHOFF_DRIVERS"))
    (make-package "SOEM_BECKHOFF_DRIVERS"))
  (shadow 'CommMsg (find-package "SOEM_BECKHOFF_DRIVERS")))
(unless (find-package "SOEM_BECKHOFF_DRIVERS::COMMMSG")
  (make-package "SOEM_BECKHOFF_DRIVERS::COMMMSG"))

(in-package "ROS")
;;//! \htmlinclude CommMsg.msg.html


(defclass soem_beckhoff_drivers::CommMsg
  :super ros::object
  :slots (_datapacket _datasize ))

(defmethod soem_beckhoff_drivers::CommMsg
  (:init
   (&key
    ((:datapacket __datapacket) (make-array 0 :initial-element 0 :element-type :char))
    ((:datasize __datasize) 0)
    )
   (send-super :init)
   (setq _datapacket __datapacket)
   (setq _datasize (round __datasize))
   self)
  (:datapacket
   (&optional __datapacket)
   (if __datapacket (setq _datapacket __datapacket)) _datapacket)
  (:datasize
   (&optional __datasize)
   (if __datasize (setq _datasize __datasize)) _datasize)
  (:serialization-length
   ()
   (+
    ;; uint8[] _datapacket
    (* 1    (length _datapacket)) 4
    ;; uint8 _datasize
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8[] _datapacket
     (write-long (length _datapacket) s)
     (princ _datapacket s)
     ;; uint8 _datasize
       (write-byte _datasize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8[] _datapacket
   (let ((n (sys::peek buf ptr- :integer))) (incf ptr- 4)
     (setq _datapacket (make-array n :element-type :char))
     (replace _datapacket buf :start2 ptr-) (incf ptr- n))
   ;; uint8 _datasize
     (setq _datasize (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get soem_beckhoff_drivers::CommMsg :md5sum-) "8312abb0799e3ce28f5c343af99bc5eb")
(setf (get soem_beckhoff_drivers::CommMsg :datatype-) "soem_beckhoff_drivers/CommMsg")
(setf (get soem_beckhoff_drivers::CommMsg :definition-)
      "uint8[] datapacket
uint8 datasize
")



(provide :soem_beckhoff_drivers/CommMsg "8312abb0799e3ce28f5c343af99bc5eb")


