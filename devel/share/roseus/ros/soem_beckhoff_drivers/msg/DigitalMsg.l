;; Auto-generated. Do not edit!


(when (boundp 'soem_beckhoff_drivers::DigitalMsg)
  (if (not (find-package "SOEM_BECKHOFF_DRIVERS"))
    (make-package "SOEM_BECKHOFF_DRIVERS"))
  (shadow 'DigitalMsg (find-package "SOEM_BECKHOFF_DRIVERS")))
(unless (find-package "SOEM_BECKHOFF_DRIVERS::DIGITALMSG")
  (make-package "SOEM_BECKHOFF_DRIVERS::DIGITALMSG"))

(in-package "ROS")
;;//! \htmlinclude DigitalMsg.msg.html


(defclass soem_beckhoff_drivers::DigitalMsg
  :super ros::object
  :slots (_values ))

(defmethod soem_beckhoff_drivers::DigitalMsg
  (:init
   (&key
    ((:values __values) (let (r) (dotimes (i 0) (push nil r)) r))
    )
   (send-super :init)
   (setq _values __values)
   self)
  (:values
   (&optional __values)
   (if __values (setq _values __values)) _values)
  (:serialization-length
   ()
   (+
    ;; bool[] _values
    (* 1    (length _values)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[] _values
     (write-long (length _values) s)
     (dotimes (i (length _values))
       (if (elt _values i) (write-byte -1 s) (write-byte 0 s))
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[] _values
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _values (make-list n))
     (dotimes (i n)
     (setf (elt _values i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     ))
   ;;
   self)
  )

(setf (get soem_beckhoff_drivers::DigitalMsg :md5sum-) "3bf9017546367a617cb0bae8934ef528")
(setf (get soem_beckhoff_drivers::DigitalMsg :datatype-) "soem_beckhoff_drivers/DigitalMsg")
(setf (get soem_beckhoff_drivers::DigitalMsg :definition-)
      "bool[] values

")



(provide :soem_beckhoff_drivers/DigitalMsg "3bf9017546367a617cb0bae8934ef528")


