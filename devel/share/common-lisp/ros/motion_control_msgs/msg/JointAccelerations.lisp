; Auto-generated. Do not edit!


(cl:in-package motion_control_msgs-msg)


;//! \htmlinclude JointAccelerations.msg.html

(cl:defclass <JointAccelerations> (roslisp-msg-protocol:ros-message)
  ((names
    :reader names
    :initarg :names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (accelerations
    :reader accelerations
    :initarg :accelerations
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass JointAccelerations (<JointAccelerations>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointAccelerations>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointAccelerations)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name motion_control_msgs-msg:<JointAccelerations> is deprecated: use motion_control_msgs-msg:JointAccelerations instead.")))

(cl:ensure-generic-function 'names-val :lambda-list '(m))
(cl:defmethod names-val ((m <JointAccelerations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_control_msgs-msg:names-val is deprecated.  Use motion_control_msgs-msg:names instead.")
  (names m))

(cl:ensure-generic-function 'accelerations-val :lambda-list '(m))
(cl:defmethod accelerations-val ((m <JointAccelerations>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader motion_control_msgs-msg:accelerations-val is deprecated.  Use motion_control_msgs-msg:accelerations instead.")
  (accelerations m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointAccelerations>) ostream)
  "Serializes a message object of type '<JointAccelerations>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'names))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'accelerations))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'accelerations))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointAccelerations>) istream)
  "Deserializes a message object of type '<JointAccelerations>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'names)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'accelerations) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'accelerations)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointAccelerations>)))
  "Returns string type for a message object of type '<JointAccelerations>"
  "motion_control_msgs/JointAccelerations")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointAccelerations)))
  "Returns string type for a message object of type 'JointAccelerations"
  "motion_control_msgs/JointAccelerations")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointAccelerations>)))
  "Returns md5sum for a message object of type '<JointAccelerations>"
  "c6d0458b807e50ade13510ee24a97ef7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointAccelerations)))
  "Returns md5sum for a message object of type 'JointAccelerations"
  "c6d0458b807e50ade13510ee24a97ef7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointAccelerations>)))
  "Returns full string definition for message of type '<JointAccelerations>"
  (cl:format cl:nil "string[] names~%float64[] accelerations~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointAccelerations)))
  "Returns full string definition for message of type 'JointAccelerations"
  (cl:format cl:nil "string[] names~%float64[] accelerations~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointAccelerations>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'accelerations) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointAccelerations>))
  "Converts a ROS message object to a list"
  (cl:list 'JointAccelerations
    (cl:cons ':names (names msg))
    (cl:cons ':accelerations (accelerations msg))
))
