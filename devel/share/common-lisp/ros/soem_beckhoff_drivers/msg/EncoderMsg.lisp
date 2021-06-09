; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude EncoderMsg.msg.html

(cl:defclass <EncoderMsg> (roslisp-msg-protocol:ros-message)
  ((value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EncoderMsg (<EncoderMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<EncoderMsg> is deprecated: use soem_beckhoff_drivers-msg:EncoderMsg instead.")))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <EncoderMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:value-val is deprecated.  Use soem_beckhoff_drivers-msg:value instead.")
  (value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderMsg>) ostream)
  "Serializes a message object of type '<EncoderMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderMsg>) istream)
  "Deserializes a message object of type '<EncoderMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderMsg>)))
  "Returns string type for a message object of type '<EncoderMsg>"
  "soem_beckhoff_drivers/EncoderMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderMsg)))
  "Returns string type for a message object of type 'EncoderMsg"
  "soem_beckhoff_drivers/EncoderMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderMsg>)))
  "Returns md5sum for a message object of type '<EncoderMsg>"
  "6e68bf91459258a84dab807f5c768df7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderMsg)))
  "Returns md5sum for a message object of type 'EncoderMsg"
  "6e68bf91459258a84dab807f5c768df7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderMsg>)))
  "Returns full string definition for message of type '<EncoderMsg>"
  (cl:format cl:nil "uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderMsg)))
  "Returns full string definition for message of type 'EncoderMsg"
  (cl:format cl:nil "uint16 value~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderMsg>))
  (cl:+ 0
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderMsg
    (cl:cons ':value (value msg))
))
