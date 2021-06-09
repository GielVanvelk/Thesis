; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude AnalogMsg.msg.html

(cl:defclass <AnalogMsg> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass AnalogMsg (<AnalogMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AnalogMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AnalogMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<AnalogMsg> is deprecated: use soem_beckhoff_drivers-msg:AnalogMsg instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <AnalogMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:values-val is deprecated.  Use soem_beckhoff_drivers-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AnalogMsg>) ostream)
  "Serializes a message object of type '<AnalogMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AnalogMsg>) istream)
  "Deserializes a message object of type '<AnalogMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AnalogMsg>)))
  "Returns string type for a message object of type '<AnalogMsg>"
  "soem_beckhoff_drivers/AnalogMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AnalogMsg)))
  "Returns string type for a message object of type 'AnalogMsg"
  "soem_beckhoff_drivers/AnalogMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AnalogMsg>)))
  "Returns md5sum for a message object of type '<AnalogMsg>"
  "e2c9c4a808bfa8ef83980bb0222137bf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AnalogMsg)))
  "Returns md5sum for a message object of type 'AnalogMsg"
  "e2c9c4a808bfa8ef83980bb0222137bf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AnalogMsg>)))
  "Returns full string definition for message of type '<AnalogMsg>"
  (cl:format cl:nil "float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AnalogMsg)))
  "Returns full string definition for message of type 'AnalogMsg"
  (cl:format cl:nil "float32[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AnalogMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AnalogMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'AnalogMsg
    (cl:cons ':values (values msg))
))
