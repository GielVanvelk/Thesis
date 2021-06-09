;; Auto-generated. Do not edit!


(when (boundp 'motion_control_msgs::JointVelocities)
  (if (not (find-package "MOTION_CONTROL_MSGS"))
    (make-package "MOTION_CONTROL_MSGS"))
  (shadow 'JointVelocities (find-package "MOTION_CONTROL_MSGS")))
(unless (find-package "MOTION_CONTROL_MSGS::JOINTVELOCITIES")
  (make-package "MOTION_CONTROL_MSGS::JOINTVELOCITIES"))

(in-package "ROS")
;;//! \htmlinclude JointVelocities.msg.html


(defclass motion_control_msgs::JointVelocities
  :super ros::object
  :slots (_names _velocities ))

(defmethod motion_control_msgs::JointVelocities
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:velocities __velocities) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _names __names)
   (setq _velocities __velocities)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:velocities
   (&optional __velocities)
   (if __velocities (setq _velocities __velocities)) _velocities)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float64[] _velocities
    (* 8    (length _velocities)) 4
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
     ;; float64[] _velocities
     (write-long (length _velocities) s)
     (dotimes (i (length _velocities))
       (sys::poke (elt _velocities i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _velocities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocities i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get motion_control_msgs::JointVelocities :md5sum-) "dfb96d7fc4b39e1d076142cb6618c930")
(setf (get motion_control_msgs::JointVelocities :datatype-) "motion_control_msgs/JointVelocities")
(setf (get motion_control_msgs::JointVelocities :definition-)
      "string[] names
float64[] velocities

")



(provide :motion_control_msgs/JointVelocities "dfb96d7fc4b39e1d076142cb6618c930")


