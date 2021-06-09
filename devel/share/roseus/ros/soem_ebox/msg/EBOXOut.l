;; Auto-generated. Do not edit!


(when (boundp 'soem_ebox::EBOXOut)
  (if (not (find-package "SOEM_EBOX"))
    (make-package "SOEM_EBOX"))
  (shadow 'EBOXOut (find-package "SOEM_EBOX")))
(unless (find-package "SOEM_EBOX::EBOXOUT")
  (make-package "SOEM_EBOX::EBOXOUT"))

(in-package "ROS")
;;//! \htmlinclude EBOXOut.msg.html


(defclass soem_ebox::EBOXOut
  :super ros::object
  :slots (_trigger _digital _analog _timestamp _encoder ))

(defmethod soem_ebox::EBOXOut
  (:init
   (&key
    ((:trigger __trigger) (let (r) (dotimes (i 2) (push nil r)) r))
    ((:digital __digital) (let (r) (dotimes (i 8) (push nil r)) r))
    ((:analog __analog) (make-array 2 :initial-element 0.0 :element-type :float))
    ((:timestamp __timestamp) 0)
    ((:encoder __encoder) (make-array 2 :initial-element 0 :element-type :integer))
    )
   (send-super :init)
   (setq _trigger __trigger)
   (setq _digital __digital)
   (setq _analog __analog)
   (setq _timestamp (round __timestamp))
   (setq _encoder __encoder)
   self)
  (:trigger
   (&optional __trigger)
   (if __trigger (setq _trigger __trigger)) _trigger)
  (:digital
   (&optional __digital)
   (if __digital (setq _digital __digital)) _digital)
  (:analog
   (&optional __analog)
   (if __analog (setq _analog __analog)) _analog)
  (:timestamp
   (&optional __timestamp)
   (if __timestamp (setq _timestamp __timestamp)) _timestamp)
  (:encoder
   (&optional __encoder)
   (if __encoder (setq _encoder __encoder)) _encoder)
  (:serialization-length
   ()
   (+
    ;; bool[2] _trigger
    (* 1    2)
    ;; bool[8] _digital
    (* 1    8)
    ;; float32[2] _analog
    (* 4    2)
    ;; uint32 _timestamp
    4
    ;; int32[2] _encoder
    (* 4    2)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool[2] _trigger
     (dotimes (i 2)
       (if (elt _trigger i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; bool[8] _digital
     (dotimes (i 8)
       (if (elt _digital i) (write-byte -1 s) (write-byte 0 s))
       )
     ;; float32[2] _analog
     (dotimes (i 2)
       (sys::poke (elt _analog i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; uint32 _timestamp
       (write-long _timestamp s)
     ;; int32[2] _encoder
     (dotimes (i 2)
       (write-long (elt _encoder i) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool[2] _trigger
   (dotimes (i (length _trigger))
     (setf (elt _trigger i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; bool[8] _digital
   (dotimes (i (length _digital))
     (setf (elt _digital i) (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
     )
   ;; float32[2] _analog
   (dotimes (i (length _analog))
     (setf (elt _analog i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; uint32 _timestamp
     (setq _timestamp (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32[2] _encoder
   (dotimes (i (length _encoder))
     (setf (elt _encoder i) (sys::peek buf ptr- :integer)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get soem_ebox::EBOXOut :md5sum-) "2e8010960c65b8a2e79190aa526151a3")
(setf (get soem_ebox::EBOXOut :datatype-) "soem_ebox/EBOXOut")
(setf (get soem_ebox::EBOXOut :definition-)
      "bool[2] trigger
bool[8] digital
float32[2] analog
uint32 timestamp
int32[2] encoder
")



(provide :soem_ebox/EBOXOut "2e8010960c65b8a2e79190aa526151a3")


