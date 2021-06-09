;; Auto-generated. Do not edit!


(when (boundp 'motion_control_msgs::JointAccelerations)
  (if (not (find-package "MOTION_CONTROL_MSGS"))
    (make-package "MOTION_CONTROL_MSGS"))
  (shadow 'JointAccelerations (find-package "MOTION_CONTROL_MSGS")))
(unless (find-package "MOTION_CONTROL_MSGS::JOINTACCELERATIONS")
  (make-package "MOTION_CONTROL_MSGS::JOINTACCELERATIONS"))

(in-package "ROS")
;;//! \htmlinclude JointAccelerations.msg.html


(defclass motion_control_msgs::JointAccelerations
  :super ros::object
  :slots (_names _accelerations ))

(defmethod motion_control_msgs::JointAccelerations
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:accelerations __accelerations) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _names __names)
   (setq _accelerations __accelerations)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:accelerations
   (&optional __accelerations)
   (if __accelerations (setq _accelerations __accelerations)) _accelerations)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float64[] _accelerations
    (* 8    (length _accelerations)) 4
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
     ;; float64[] _accelerations
     (write-long (length _accelerations) s)
     (dotimes (i (length _accelerations))
       (sys::poke (elt _accelerations i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _accelerations
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _accelerations (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _accelerations i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get motion_control_msgs::JointAccelerations :md5sum-) "c6d0458b807e50ade13510ee24a97ef7")
(setf (get motion_control_msgs::JointAccelerations :datatype-) "motion_control_msgs/JointAccelerations")
(setf (get motion_control_msgs::JointAccelerations :definition-)
      "string[] names
float64[] accelerations
")



(provide :motion_control_msgs/JointAccelerations "c6d0458b807e50ade13510ee24a97ef7")


