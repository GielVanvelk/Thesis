;; Auto-generated. Do not edit!


(when (boundp 'motion_control_msgs::JointEfforts)
  (if (not (find-package "MOTION_CONTROL_MSGS"))
    (make-package "MOTION_CONTROL_MSGS"))
  (shadow 'JointEfforts (find-package "MOTION_CONTROL_MSGS")))
(unless (find-package "MOTION_CONTROL_MSGS::JOINTEFFORTS")
  (make-package "MOTION_CONTROL_MSGS::JOINTEFFORTS"))

(in-package "ROS")
;;//! \htmlinclude JointEfforts.msg.html


(defclass motion_control_msgs::JointEfforts
  :super ros::object
  :slots (_names _efforts ))

(defmethod motion_control_msgs::JointEfforts
  (:init
   (&key
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:efforts __efforts) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _names __names)
   (setq _efforts __efforts)
   self)
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:efforts
   (&optional __efforts)
   (if __efforts (setq _efforts __efforts)) _efforts)
  (:serialization-length
   ()
   (+
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float64[] _efforts
    (* 8    (length _efforts)) 4
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
     ;; float64[] _efforts
     (write-long (length _efforts) s)
     (dotimes (i (length _efforts))
       (sys::poke (elt _efforts i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
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
   ;; float64[] _efforts
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _efforts (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _efforts i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;;
   self)
  )

(setf (get motion_control_msgs::JointEfforts :md5sum-) "b6430b8ec0693b7af8da0bcb29973d67")
(setf (get motion_control_msgs::JointEfforts :datatype-) "motion_control_msgs/JointEfforts")
(setf (get motion_control_msgs::JointEfforts :definition-)
      "string[] names
float64[] efforts

")



(provide :motion_control_msgs/JointEfforts "b6430b8ec0693b7af8da0bcb29973d67")


