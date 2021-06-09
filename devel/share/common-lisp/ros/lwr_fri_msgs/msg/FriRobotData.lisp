; Auto-generated. Do not edit!


(cl:in-package lwr_fri_msgs-msg)


;//! \htmlinclude FriRobotData.msg.html

(cl:defclass <FriRobotData> (roslisp-msg-protocol:ros-message)
  ((msrJntPos
    :reader msrJntPos
    :initarg :msrJntPos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (cmdJntPos
    :reader cmdJntPos
    :initarg :cmdJntPos
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (cmdJntPosFriOffset
    :reader cmdJntPosFriOffset
    :initarg :cmdJntPosFriOffset
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FriRobotData (<FriRobotData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FriRobotData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FriRobotData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lwr_fri_msgs-msg:<FriRobotData> is deprecated: use lwr_fri_msgs-msg:FriRobotData instead.")))

(cl:ensure-generic-function 'msrJntPos-val :lambda-list '(m))
(cl:defmethod msrJntPos-val ((m <FriRobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:msrJntPos-val is deprecated.  Use lwr_fri_msgs-msg:msrJntPos instead.")
  (msrJntPos m))

(cl:ensure-generic-function 'cmdJntPos-val :lambda-list '(m))
(cl:defmethod cmdJntPos-val ((m <FriRobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:cmdJntPos-val is deprecated.  Use lwr_fri_msgs-msg:cmdJntPos instead.")
  (cmdJntPos m))

(cl:ensure-generic-function 'cmdJntPosFriOffset-val :lambda-list '(m))
(cl:defmethod cmdJntPosFriOffset-val ((m <FriRobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:cmdJntPosFriOffset-val is deprecated.  Use lwr_fri_msgs-msg:cmdJntPosFriOffset instead.")
  (cmdJntPosFriOffset m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FriRobotData>) ostream)
  "Serializes a message object of type '<FriRobotData>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'msrJntPos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cmdJntPos))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'cmdJntPosFriOffset))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FriRobotData>) istream)
  "Deserializes a message object of type '<FriRobotData>"
  (cl:setf (cl:slot-value msg 'msrJntPos) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'msrJntPos)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'cmdJntPos) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'cmdJntPos)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'cmdJntPosFriOffset) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'cmdJntPosFriOffset)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FriRobotData>)))
  "Returns string type for a message object of type '<FriRobotData>"
  "lwr_fri_msgs/FriRobotData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FriRobotData)))
  "Returns string type for a message object of type 'FriRobotData"
  "lwr_fri_msgs/FriRobotData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FriRobotData>)))
  "Returns md5sum for a message object of type '<FriRobotData>"
  "e89d68aab24b9a7050d5809b14a4e699")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FriRobotData)))
  "Returns md5sum for a message object of type 'FriRobotData"
  "e89d68aab24b9a7050d5809b14a4e699")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FriRobotData>)))
  "Returns full string definition for message of type '<FriRobotData>"
  (cl:format cl:nil "float32[7] msrJntPos~%float32[7] cmdJntPos~%float32[7] cmdJntPosFriOffset~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FriRobotData)))
  "Returns full string definition for message of type 'FriRobotData"
  (cl:format cl:nil "float32[7] msrJntPos~%float32[7] cmdJntPos~%float32[7] cmdJntPosFriOffset~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FriRobotData>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'msrJntPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cmdJntPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cmdJntPosFriOffset) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FriRobotData>))
  "Converts a ROS message object to a list"
  (cl:list 'FriRobotData
    (cl:cons ':msrJntPos (msrJntPos msg))
    (cl:cons ':cmdJntPos (cmdJntPos msg))
    (cl:cons ':cmdJntPosFriOffset (cmdJntPosFriOffset msg))
))
