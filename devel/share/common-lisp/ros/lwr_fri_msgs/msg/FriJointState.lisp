; Auto-generated. Do not edit!


(cl:in-package lwr_fri_msgs-msg)


;//! \htmlinclude FriJointState.msg.html

(cl:defclass <FriJointState> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (msrJntPos
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

(cl:defclass FriJointState (<FriJointState>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FriJointState>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FriJointState)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lwr_fri_msgs-msg:<FriJointState> is deprecated: use lwr_fri_msgs-msg:FriJointState instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <FriJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:header-val is deprecated.  Use lwr_fri_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'msrJntPos-val :lambda-list '(m))
(cl:defmethod msrJntPos-val ((m <FriJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:msrJntPos-val is deprecated.  Use lwr_fri_msgs-msg:msrJntPos instead.")
  (msrJntPos m))

(cl:ensure-generic-function 'cmdJntPos-val :lambda-list '(m))
(cl:defmethod cmdJntPos-val ((m <FriJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:cmdJntPos-val is deprecated.  Use lwr_fri_msgs-msg:cmdJntPos instead.")
  (cmdJntPos m))

(cl:ensure-generic-function 'cmdJntPosFriOffset-val :lambda-list '(m))
(cl:defmethod cmdJntPosFriOffset-val ((m <FriJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:cmdJntPosFriOffset-val is deprecated.  Use lwr_fri_msgs-msg:cmdJntPosFriOffset instead.")
  (cmdJntPosFriOffset m))

(cl:ensure-generic-function 'msrJntTrq-val :lambda-list '(m))
(cl:defmethod msrJntTrq-val ((m <FriJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:msrJntTrq-val is deprecated.  Use lwr_fri_msgs-msg:msrJntTrq instead.")
  (msrJntTrq m))

(cl:ensure-generic-function 'estExtJntTrq-val :lambda-list '(m))
(cl:defmethod estExtJntTrq-val ((m <FriJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:estExtJntTrq-val is deprecated.  Use lwr_fri_msgs-msg:estExtJntTrq instead.")
  (estExtJntTrq m))

(cl:ensure-generic-function 'gravity-val :lambda-list '(m))
(cl:defmethod gravity-val ((m <FriJointState>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lwr_fri_msgs-msg:gravity-val is deprecated.  Use lwr_fri_msgs-msg:gravity instead.")
  (gravity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FriJointState>) ostream)
  "Serializes a message object of type '<FriJointState>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FriJointState>) istream)
  "Deserializes a message object of type '<FriJointState>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FriJointState>)))
  "Returns string type for a message object of type '<FriJointState>"
  "lwr_fri_msgs/FriJointState")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FriJointState)))
  "Returns string type for a message object of type 'FriJointState"
  "lwr_fri_msgs/FriJointState")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FriJointState>)))
  "Returns md5sum for a message object of type '<FriJointState>"
  "9b96281d768d86477f17b62daa820d6d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FriJointState)))
  "Returns md5sum for a message object of type 'FriJointState"
  "9b96281d768d86477f17b62daa820d6d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FriJointState>)))
  "Returns full string definition for message of type '<FriJointState>"
  (cl:format cl:nil "Header header~%float32[7] msrJntPos~%float32[7] cmdJntPos~%float32[7] cmdJntPosFriOffset~%float32[7] msrJntTrq~%float32[7] estExtJntTrq~%float32[7] gravity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FriJointState)))
  "Returns full string definition for message of type 'FriJointState"
  (cl:format cl:nil "Header header~%float32[7] msrJntPos~%float32[7] cmdJntPos~%float32[7] cmdJntPosFriOffset~%float32[7] msrJntTrq~%float32[7] estExtJntTrq~%float32[7] gravity~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FriJointState>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'msrJntPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cmdJntPos) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'cmdJntPosFriOffset) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'msrJntTrq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'estExtJntTrq) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'gravity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FriJointState>))
  "Converts a ROS message object to a list"
  (cl:list 'FriJointState
    (cl:cons ':header (header msg))
    (cl:cons ':msrJntPos (msrJntPos msg))
    (cl:cons ':cmdJntPos (cmdJntPos msg))
    (cl:cons ':cmdJntPosFriOffset (cmdJntPosFriOffset msg))
    (cl:cons ':msrJntTrq (msrJntTrq msg))
    (cl:cons ':estExtJntTrq (estExtJntTrq msg))
    (cl:cons ':gravity (gravity msg))
))
