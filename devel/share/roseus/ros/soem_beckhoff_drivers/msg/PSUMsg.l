;; Auto-generated. Do not edit!


(when (boundp 'soem_beckhoff_drivers::PSUMsg)
  (if (not (find-package "SOEM_BECKHOFF_DRIVERS"))
    (make-package "SOEM_BECKHOFF_DRIVERS"))
  (shadow 'PSUMsg (find-package "SOEM_BECKHOFF_DRIVERS")))
(unless (find-package "SOEM_BECKHOFF_DRIVERS::PSUMSG")
  (make-package "SOEM_BECKHOFF_DRIVERS::PSUMSG"))

(in-package "ROS")
;;//! \htmlinclude PSUMsg.msg.html


(defclass soem_beckhoff_drivers::PSUMsg
  :super ros::object
  :slots (_power_ok _overload ))

(defmethod soem_beckhoff_drivers::PSUMsg
  (:init
   (&key
    ((:power_ok __power_ok) nil)
    ((:overload __overload) nil)
    )
   (send-super :init)
   (setq _power_ok __power_ok)
   (setq _overload __overload)
   self)
  (:power_ok
   (&optional __power_ok)
   (if __power_ok (setq _power_ok __power_ok)) _power_ok)
  (:overload
   (&optional __overload)
   (if __overload (setq _overload __overload)) _overload)
  (:serialization-length
   ()
   (+
    ;; bool _power_ok
    1
    ;; bool _overload
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _power_ok
       (if _power_ok (write-byte -1 s) (write-byte 0 s))
     ;; bool _overload
       (if _overload (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _power_ok
     (setq _power_ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _overload
     (setq _overload (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get soem_beckhoff_drivers::PSUMsg :md5sum-) "1d640ba06d2b65ae841e25741b04ea2c")
(setf (get soem_beckhoff_drivers::PSUMsg :datatype-) "soem_beckhoff_drivers/PSUMsg")
(setf (get soem_beckhoff_drivers::PSUMsg :definition-)
      "bool power_ok
bool overload
")



(provide :soem_beckhoff_drivers/PSUMsg "1d640ba06d2b65ae841e25741b04ea2c")


