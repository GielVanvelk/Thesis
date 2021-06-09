;; Auto-generated. Do not edit!


(when (boundp 'soem_ebox::EBOXAnalog)
  (if (not (find-package "SOEM_EBOX"))
    (make-package "SOEM_EBOX"))
  (shadow 'EBOXAnalog (find-package "SOEM_EBOX")))
(unless (find-package "SOEM_EBOX::EBOXANALOG")
  (make-package "SOEM_EBOX::EBOXANALOG"))

(in-package "ROS")
;;//! \htmlinclude EBOXAnalog.msg.html


(defclass soem_ebox::EBOXAnalog
  :super ros::object
  :slots (_analog ))

(defmethod soem_ebox::EBOXAnalog
  (:init
   (&key
    ((:analog __analog) (make-array 2 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _analog __analog)
   self)
  (:analog
   (&optional __analog)
   (if __analog (setq _analog __analog)) _analog)
  (:serialization-length
   ()
   (+
    ;; float32[2] _analog
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[2] _analog
     (dotimes (i 2)
       (sys::poke (elt _analog i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[2] _analog
   (dotimes (i (length _analog))
     (setf (elt _analog i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get soem_ebox::EBOXAnalog :md5sum-) "da0d2d69b62902fa94381342826fb037")
(setf (get soem_ebox::EBOXAnalog :datatype-) "soem_ebox/EBOXAnalog")
(setf (get soem_ebox::EBOXAnalog :definition-)
      "float32[2] analog

")



(provide :soem_ebox/EBOXAnalog "da0d2d69b62902fa94381342826fb037")


