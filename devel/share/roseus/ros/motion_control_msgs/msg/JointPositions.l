;; Auto-generated. Do not edit!


(when (boundp 'motion_control_msgs::JointPositions)
  (if (not (find-package "MOTION_CONTROL_MSGS"))
    (make-package "MOTION_CONTROL_MSGS"))
  (shadow 'JointPositions (find-package "MOTION_CONTROL_MSGS")))
(unless (find-package "MOTION_CONTROL_MSGS::JOINTPOSITIONS")
  (make-package "MOTION_CONTROL_MSGS::JOINTPOSITIONS"))

(in-package "ROS")
;;//! \htmlinclude JointPositions.msg.html


(defclass motion_control_msgs::JointPositions
  :super ros::object
  :slots (_names _positions ))

(defmethod motion_control_msgs::JointPositions
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:positions __positions) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _names __names)
   (setq _positions __positions)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:positions
   (&optional __positions)
   (if __positions (setq _positions __positions)) _positions)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float64[] _positions
    (* 8    (length _positions)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _positions
     (write-long (length _positions) s)
     (dotimes (i (length _positions))
       (sys::poke (elt _positions i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _positions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _positions (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _positions i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get motion_control_msgs::JointPositions :md5sum-) "4c13323622b71d0b598abb8052aea6aa")
(setf (get motion_control_msgs::JointPositions :datatype-) "motion_control_msgs/JointPositions")
(setf (get motion_control_msgs::JointPositions :definition-)
      "string[] names
float64[] positions
")



(provide :motion_control_msgs/JointPositions "4c13323622b71d0b598abb8052aea6aa")


