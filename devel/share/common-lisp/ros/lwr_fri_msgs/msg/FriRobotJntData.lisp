; Auto-generated. Do not edit!


(cl:in-package lwr_fri_msgs-msg)


;//! \htmlinclude FriRobotJntData.msg.html

(cl:defclass <FriRobotJntData> (roslisp-msg-protocol:ros-message)
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
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (msrJntTrq
    :reader msrJntTrq
    :initarg :msrJntTrq
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (estExtJntTrq
    :reader estExtJntTrq
    :initarg :estExtJntTrq
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0))
   (gravity
    :reader gravity
    :initarg :gravity
    :type (cl:vector cl:float)
   :initform (cl:make-array 7 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FriRobotJntData (<FriRobotJntData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FriRobotJntData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FriRobotJntData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lwr_fri_msgs-msg:<FriRobotJntData> is deprecated: use lwr_fri_msgs-msg:FriRobotJntData instead.")))

(cl:ensure-generic-function 'msrJntPos-val :lambda-list '(m))
(cl:defmethod msrJntPos-val ((m <FriRobotJntData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:msrJntPos-val is deprecated.  Use lwr_fri_msgs-msg:msrJntPos instead.")
  (msrJntPos m))

(cl:ensure-generic-function 'cmdJntPos-val :lambda-list '(m))
(cl:defmethod cmdJntPos-val ((m <FriRobotJntData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:cmdJntPos-val is deprecated.  Use lwr_fri_msgs-msg:cmdJntPos instead.")
  (cmdJntPos m))

(cl:ensure-generic-function 'cmdJntPosFriOffset-val :lambda-list '(m))
(cl:defmethod cmdJntPosFriOffset-val ((m <FriRobotJntData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:cmdJntPosFriOffset-val is deprecated.  Use lwr_fri_msgs-msg:cmdJntPosFriOffset instead.")
  (cmdJntPosFriOffset m))

(cl:ensure-generic-function 'msrJntTrq-val :lambda-list '(m))
(cl:defmethod msrJntTrq-val ((m <FriRobotJntData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:msrJntTrq-val is deprecated.  Use lwr_fri_msgs-msg:msrJntTrq instead.")
  (msrJntTrq m))

(cl:ensure-generic-function 'estExtJntTrq-val :lambda-list '(m))
(cl:defmethod estExtJntTrq-val ((m <FriRobotJntData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:estExtJntTrq-val is deprecated.  Use lwr_fri_msgs-msg:estExtJntTrq instead.")
  (estExtJntTrq m))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <FriRobotJntData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:gravity-val is deprecated.  Use lwr_fri_msgs-msg:gravity instead.")
  (gravity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FriRobotJntData>) ostream)
  "Serializes a message object of type '<FriRobotJntData>"
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
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'msrJntTrq))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'estExtJntTrq))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'gravity))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FriRobotJntData>) istream)
  "Deserializes a message object of type '<FriRobotJntData>"
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
  (cl:setf (cl:slot-value msg 'msrJntTrq) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'msrJntTrq)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'estExtJntTrq) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'estExtJntTrq)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'gravity) (cl:make-array 7))
  (cl:let ((vals (cl:slot-value msg 'gravity)))
    (cl:dotimes (i 7)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FriRobotJntData>)))
  "Returns string type for a message object of type '<FriRobotJntData>"
  "lwr_fri_msgs/FriRobotJntData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FriRobotJntData)))
  "Returns string type for a message object of type 'FriRobotJntData"
  "lwr_fri_msgs/FriRobotJntData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FriRobotJntData>)))
  "Returns md5sum for a message object of type '<FriRobotJntData>"
  "0aaff558814188d51a3ef7a1023d53a7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FriRobotJntData)))
  "Returns md5sum for a message object of type 'FriRobotJntData"
  "0aaff558814188d51a3ef7a1023d53a7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FriRobotJntData>)))
  "Returns full string definition for message of type '<FriRobotJntData>"
  (cl:format cl:nil "float32[7] msrJntPos~%float32[7] cmdJntPos~%float32[7] cmdJntPosFriOffset~%float32[7] msrJntTrq~%float32[7] estExtJntTrq~%float32[7] gravity~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FriRobotJntData)))
  "Returns full string definition for message of type 'FriRobotJntData"
  (cl:format cl:nil "float32[7] msrJntPos~%float32[7] cmdJntPos~%float32[7] cmdJntPosFriOffset~%float32[7] msrJntTrq~%float32[7] estExtJntTrq~%float32[7] gravity~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FriRobotJntData>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'msrJntPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cmdJntPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cmdJntPosFriOffset) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'msrJntTrq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'estExtJntTrq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gravity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FriRobotJntData>))
  "Converts a ROS message object to a list"
  (cl:list 'FriRobotJntData
    (cl:cons ':msrJntPos (msrJntPos msg))
    (cl:cons ':cmdJntPos (cmdJntPos msg))
    (cl:cons ':cmdJntPosFriOffset (cmdJntPosFriOffset msg))
    (cl:cons ':msrJntTrq (msrJntTrq msg))
    (cl:cons ':estExtJntTrq (estExtJntTrq msg))
    (cl:cons ':gravity (gravity msg))
))
