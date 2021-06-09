; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude DigitalMsg.msg.html

(cl:defclass <DigitalMsg> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass DigitalMsg (<DigitalMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DigitalMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DigitalMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<DigitalMsg> is deprecated: use soem_beckhoff_drivers-msg:DigitalMsg instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <DigitalMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:values-val is deprecated.  Use soem_beckhoff_drivers-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DigitalMsg>) ostream)
  "Serializes a message object of type '<DigitalMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'values))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DigitalMsg>) istream)
  "Deserializes a message object of type '<DigitalMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'values) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DigitalMsg>)))
  "Returns string type for a message object of type '<DigitalMsg>"
  "soem_beckhoff_drivers/DigitalMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DigitalMsg)))
  "Returns string type for a message object of type 'DigitalMsg"
  "soem_beckhoff_drivers/DigitalMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DigitalMsg>)))
  "Returns md5sum for a message object of type '<DigitalMsg>"
  "3bf9017546367a617cb0bae8934ef528")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DigitalMsg)))
  "Returns md5sum for a message object of type 'DigitalMsg"
  "3bf9017546367a617cb0bae8934ef528")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DigitalMsg>)))
  "Returns full string definition for message of type '<DigitalMsg>"
  (cl:format cl:nil "bool[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DigitalMsg)))
  "Returns full string definition for message of type 'DigitalMsg"
  (cl:format cl:nil "bool[] values~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DigitalMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DigitalMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'DigitalMsg
    (cl:cons ':values (values msg))
))
