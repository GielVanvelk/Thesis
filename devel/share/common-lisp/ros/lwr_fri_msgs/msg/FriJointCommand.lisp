; Auto-generated. Do not edit!


(cl:in-package lwr_fri_msgs-msg)


;//! \htmlinclude FriJointCommand.msg.html

(cl:defclass <FriJointCommand> (roslisp-msg-protocol:ros-message)
  ((jntPos
    :reader jntPos
    :initarg :jntPos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (jntVel
    :reader jntVel
    :initarg :jntVel
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (addJntTrq
    :reader addJntTrq
    :initarg :addJntTrq
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FriJointCommand (<FriJointCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FriJointCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FriJointCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lwr_fri_msgs-msg:<FriJointCommand> is deprecated: use lwr_fri_msgs-msg:FriJointCommand instead.")))

(cl:ensure-generic-function 'jntPos-val :lambda-list '(m))
(cl:defmethod jntPos-val ((m <FriJointCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:jntPos-val is deprecated.  Use lwr_fri_msgs-msg:jntPos instead.")
  (jntPos m))

(cl:ensure-generic-function 'jntVel-val :lambda-list '(m))
(cl:defmethod jntVel-val ((m <FriJointCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:jntVel-val is deprecated.  Use lwr_fri_msgs-msg:jntVel instead.")
  (jntVel m))

(cl:ensure-generic-function 'addJntTrq-val :lambda-list '(m))
(cl:defmethod addJntTrq-val ((m <FriJointCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:addJntTrq-val is deprecated.  Use lwr_fri_msgs-msg:addJntTrq instead.")
  (addJntTrq m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FriJointCommand>) ostream)
  "Serializes a message object of type '<FriJointCommand>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'jntPos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'jntVel))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'addJntTrq))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FriJointCommand>) istream)
  "Deserializes a message object of type '<FriJointCommand>"
  (cl:setf (cl:slot-value msg 'jntPos) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'jntPos)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'jntVel) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'jntVel)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'addJntTrq) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'addJntTrq)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FriJointCommand>)))
  "Returns string type for a message object of type '<FriJointCommand>"
  "lwr_fri_msgs/FriJointCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FriJointCommand)))
  "Returns string type for a message object of type 'FriJointCommand"
  "lwr_fri_msgs/FriJointCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FriJointCommand>)))
  "Returns md5sum for a message object of type '<FriJointCommand>"
  "10f89dabbe358204afa3f190e7d10f5f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FriJointCommand)))
  "Returns md5sum for a message object of type 'FriJointCommand"
  "10f89dabbe358204afa3f190e7d10f5f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FriJointCommand>)))
  "Returns full string definition for message of type '<FriJointCommand>"
  (cl:format cl:nil "float32[7] jntPos~%float32[7] jntVel~%float32[7] addJntTrq ~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FriJointCommand)))
  "Returns full string definition for message of type 'FriJointCommand"
  (cl:format cl:nil "float32[7] jntPos~%float32[7] jntVel~%float32[7] addJntTrq ~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FriJointCommand>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'jntPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'jntVel) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'addJntTrq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FriJointCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'FriJointCommand
    (cl:cons ':jntPos (jntPos msg))
    (cl:cons ':jntVel (jntVel msg))
    (cl:cons ':addJntTrq (addJntTrq msg))
))
