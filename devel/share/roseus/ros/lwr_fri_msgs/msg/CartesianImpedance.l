;; Auto-generated. Do not edit!


(when (boundp 'lwr_fri_msgs::CartesianImpedance)
  (if (not (find-package "LWR_FRI_MSGS"))
    (make-package "LWR_FRI_MSGS"))
  (shadow 'CartesianImpedance (find-package "LWR_FRI_MSGS")))
(unless (find-package "LWR_FRI_MSGS::CARTESIANIMPEDANCE")
  (make-package "LWR_FRI_MSGS::CARTESIANIMPEDANCE"))

(in-package "ROS")
;;//! \htmlinclude CartesianImpedance.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))


(defclass lwr_fri_msgs::CartesianImpedance
  :super ros::object
  :slots (_stiffness _damping ))

(defmethod lwr_fri_msgs::CartesianImpedance
  (:init
   (&key
    ((:stiffness __stiffness) (instance geometry_msgs::Twist :init))
    ((:damping __damping) (instance geometry_msgs::Twist :init))
    )
   (send-super :init)
   (setq _stiffness __stiffness)
   (setq _damping __damping)
   self)
  (:stiffness
   (&rest __stiffness)
   (if (keywordp (car __stiffness))
       (send* _stiffness __stiffness)
     (progn
       (if __stiffness (setq _stiffness (car __stiffness)))
       _stiffness)))
  (:damping
   (&rest __damping)
   (if (keywordp (car __damping))
       (send* _damping __damping)
     (progn
       (if __damping (setq _damping (car __damping)))
       _damping)))
  (:serialization-length
   ()
   (+
    ;; geometry_msgs/Twist _stiffness
    (send _stiffness :serialization-length)
    ;; geometry_msgs/Twist _damping
    (send _damping :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; geometry_msgs/Twist _stiffness
       (send _stiffness :serialize s)
     ;; geometry_msgs/Twist _damping
       (send _damping :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; geometry_msgs/Twist _stiffness
     (send _stiffness :deserialize buf ptr-) (incf ptr- (send _stiffness :serialization-length))
   ;; geometry_msgs/Twist _damping
     (send _damping :deserialize buf ptr-) (incf ptr- (send _damping :serialization-length))
   ;;
   self)
  )

(setf (get lwr_fri_msgs::CartesianImpedance :md5sum-) "bd4dbca8475cfa8e858db7599bb64f48")
(setf (get lwr_fri_msgs::CartesianImpedance :datatype-) "lwr_fri_msgs/CartesianImpedance")
(setf (get lwr_fri_msgs::CartesianImpedance :definition-)
      "geometry_msgs/Twist stiffness
geometry_msgs/Twist damping
================================================================================
MSG: geometry_msgs/Twist
# This expresses velocity in free space broken into its linear and angular parts.
Vector3  linear
Vector3  angular

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 
# It is only meant to represent a direction. Therefore, it does not
# make sense to apply a translation to it (e.g., when applying a 
# generic rigid transformation to a Vector3, tf2 will only apply the
# rotation). If you want your data to be translatable too, use the
# geometry_msgs/Point message instead.

float64 x
float64 y
float64 z
")



(provide :lwr_fri_msgs/CartesianImpedance "bd4dbca8475cfa8e858db7599bb64f48")


