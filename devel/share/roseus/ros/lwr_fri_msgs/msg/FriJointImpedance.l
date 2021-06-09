;; Auto-generated. Do not edit!


(when (boundp 'lwr_fri_msgs::FriJointImpedance)
  (if (not (find-package "LWR_FRI_MSGS"))
    (make-package "LWR_FRI_MSGS"))
  (shadow 'FriJointImpedance (find-package "LWR_FRI_MSGS")))
(unless (find-package "LWR_FRI_MSGS::FRIJOINTIMPEDANCE")
  (make-package "LWR_FRI_MSGS::FRIJOINTIMPEDANCE"))

(in-package "ROS")
;;//! \htmlinclude FriJointImpedance.msg.html


(defclass lwr_fri_msgs::FriJointImpedance
  :super ros::object
  :slots (_stiffness _damping ))

(defmethod lwr_fri_msgs::FriJointImpedance
  (:init
   (&key
    ((:stiffness __stiffness) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:damping __damping) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _stiffness __stiffness)
   (setq _damping __damping)
   self)
  (:stiffness
   (&optional __stiffness)
   (if __stiffness (setq _stiffness __stiffness)) _stiffness)
  (:damping
   (&optional __damping)
   (if __damping (setq _damping __damping)) _damping)
  (:serialization-length
   ()
   (+
    ;; float32[7] _stiffness
    (* 4    7)
    ;; float32[7] _damping
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _stiffness
     (dotimes (i 7)
       (sys::poke (elt _stiffness i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _damping
     (dotimes (i 7)
       (sys::poke (elt _damping i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _stiffness
   (dotimes (i (length _stiffness))
     (setf (elt _stiffness i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _damping
   (dotimes (i (length _damping))
     (setf (elt _damping i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get lwr_fri_msgs::FriJointImpedance :md5sum-) "0d99cffe99f4e45e313ffa6bb7c0de4e")
(setf (get lwr_fri_msgs::FriJointImpedance :datatype-) "lwr_fri_msgs/FriJointImpedance")
(setf (get lwr_fri_msgs::FriJointImpedance :definition-)
      "float32[7] stiffness
float32[7] damping
")



(provide :lwr_fri_msgs/FriJointImpedance "0d99cffe99f4e45e313ffa6bb7c0de4e")


