; Auto-generated. Do not edit!


(cl:in-package lwr_fri_msgs-msg)


;//! \htmlinclude CartesianImpedance.msg.html

(cl:defclass <CartesianImpedance> (roslisp-msg-protocol:ros-message)
  ((stiffness
    :reader stiffness
    :initarg :stiffness
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (damping
    :reader damping
    :initarg :damping
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist)))
)

(cl:defclass CartesianImpedance (<CartesianImpedance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CartesianImpedance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CartesianImpedance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lwr_fri_msgs-msg:<CartesianImpedance> is deprecated: use lwr_fri_msgs-msg:CartesianImpedance instead.")))

(cl:ensure-generic-function 'stiffness-val :lambda-list '(m))
(cl:defmethod stiffness-val ((m <CartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:stiffness-val is deprecated.  Use lwr_fri_msgs-msg:stiffness instead.")
  (stiffness m))

(cl:ensure-generic-function 'damping-val :lambda-list '(m))
(cl:defmethod damping-val ((m <CartesianImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:damping-val is deprecated.  Use lwr_fri_msgs-msg:damping instead.")
  (damping m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CartesianImpedance>) ostream)
  "Serializes a message object of type '<CartesianImpedance>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'stiffness) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'damping) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CartesianImpedance>) istream)
  "Deserializes a message object of type '<CartesianImpedance>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'stiffness) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'damping) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CartesianImpedance>)))
  "Returns string type for a message object of type '<CartesianImpedance>"
  "lwr_fri_msgs/CartesianImpedance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CartesianImpedance)))
  "Returns string type for a message object of type 'CartesianImpedance"
  "lwr_fri_msgs/CartesianImpedance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CartesianImpedance>)))
  "Returns md5sum for a message object of type '<CartesianImpedance>"
  "bd4dbca8475cfa8e858db7599bb64f48")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CartesianImpedance)))
  "Returns md5sum for a message object of type 'CartesianImpedance"
  "bd4dbca8475cfa8e858db7599bb64f48")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CartesianImpedance>)))
  "Returns full string definition for message of type '<CartesianImpedance>"
  (cl:format cl:nil "geometry_msgs/Twist stiffness~%geometry_msgs/Twist damping~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CartesianImpedance)))
  "Returns full string definition for message of type 'CartesianImpedance"
  (cl:format cl:nil "geometry_msgs/Twist stiffness~%geometry_msgs/Twist damping~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into its linear and angular parts.~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%# It is only meant to represent a direction. Therefore, it does not~%# make sense to apply a translation to it (e.g., when applying a ~%# generic rigid transformation to a Vector3, tf2 will only apply the~%# rotation). If you want your data to be translatable too, use the~%# geometry_msgs/Point message instead.~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CartesianImpedance>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'stiffness))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'damping))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CartesianImpedance>))
  "Converts a ROS message object to a list"
  (cl:list 'CartesianImpedance
    (cl:cons ':stiffness (stiffness msg))
    (cl:cons ':damping (damping msg))
))
