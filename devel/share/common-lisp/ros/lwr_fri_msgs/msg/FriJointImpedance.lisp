; Auto-generated. Do not edit!


(cl:in-package lwr_fri_msgs-msg)


;//! \htmlinclude FriJointImpedance.msg.html

(cl:defclass <FriJointImpedance> (roslisp-msg-protocol:ros-message)
  ((stiffness
    :reader stiffness
    :initarg :stiffness
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (damping
    :reader damping
    :initarg :damping
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FriJointImpedance (<FriJointImpedance>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FriJointImpedance>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FriJointImpedance)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lwr_fri_msgs-msg:<FriJointImpedance> is deprecated: use lwr_fri_msgs-msg:FriJointImpedance instead.")))

(cl:ensure-generic-function 'stiffness-val :lambda-list '(m))
(cl:defmethod stiffness-val ((m <FriJointImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:stiffness-val is deprecated.  Use lwr_fri_msgs-msg:stiffness instead.")
  (stiffness m))

(cl:ensure-generic-function 'damping-val :lambda-list '(m))
(cl:defmethod damping-val ((m <FriJointImpedance>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:damping-val is deprecated.  Use lwr_fri_msgs-msg:damping instead.")
  (damping m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FriJointImpedance>) ostream)
  "Serializes a message object of type '<FriJointImpedance>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'stiffness))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'damping))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FriJointImpedance>) istream)
  "Deserializes a message object of type '<FriJointImpedance>"
  (cl:setf (cl:slot-value msg 'stiffness) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'stiffness)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'damping) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'damping)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FriJointImpedance>)))
  "Returns string type for a message object of type '<FriJointImpedance>"
  "lwr_fri_msgs/FriJointImpedance")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FriJointImpedance)))
  "Returns string type for a message object of type 'FriJointImpedance"
  "lwr_fri_msgs/FriJointImpedance")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FriJointImpedance>)))
  "Returns md5sum for a message object of type '<FriJointImpedance>"
  "0d99cffe99f4e45e313ffa6bb7c0de4e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FriJointImpedance)))
  "Returns md5sum for a message object of type 'FriJointImpedance"
  "0d99cffe99f4e45e313ffa6bb7c0de4e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FriJointImpedance>)))
  "Returns full string definition for message of type '<FriJointImpedance>"
  (cl:format cl:nil "float32[7] stiffness~%float32[7] damping~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FriJointImpedance)))
  "Returns full string definition for message of type 'FriJointImpedance"
  (cl:format cl:nil "float32[7] stiffness~%float32[7] damping~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FriJointImpedance>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'stiffness) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'damping) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FriJointImpedance>))
  "Converts a ROS message object to a list"
  (cl:list 'FriJointImpedance
    (cl:cons ':stiffness (stiffness msg))
    (cl:cons ':damping (damping msg))
))
