; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude EncoderOutMsg.msg.html

(cl:defclass <EncoderOutMsg> (roslisp-msg-protocol:ros-message)
  ((control
    :reader control
    :initarg :control
    :type cl:fixnum
    :initform 0)
   (outvalue
    :reader outvalue
    :initarg :outvalue
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EncoderOutMsg (<EncoderOutMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderOutMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderOutMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<EncoderOutMsg> is deprecated: use soem_beckhoff_drivers-msg:EncoderOutMsg instead.")))

(cl:ensure-generic-function 'control-val :lambda-list '(m))
(cl:defmethod control-val ((m <EncoderOutMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:control-val is deprecated.  Use soem_beckhoff_drivers-msg:control instead.")
  (control m))

(cl:ensure-generic-function 'outvalue-val :lambda-list '(m))
(cl:defmethod outvalue-val ((m <EncoderOutMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:outvalue-val is deprecated.  Use soem_beckhoff_drivers-msg:outvalue instead.")
  (outvalue m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderOutMsg>) ostream)
  "Serializes a message object of type '<EncoderOutMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outvalue)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'outvalue)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderOutMsg>) istream)
  "Deserializes a message object of type '<EncoderOutMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'control)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'outvalue)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'outvalue)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderOutMsg>)))
  "Returns string type for a message object of type '<EncoderOutMsg>"
  "soem_beckhoff_drivers/EncoderOutMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderOutMsg)))
  "Returns string type for a message object of type 'EncoderOutMsg"
  "soem_beckhoff_drivers/EncoderOutMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderOutMsg>)))
  "Returns md5sum for a message object of type '<EncoderOutMsg>"
  "297826ed745b96cde20150fa2f0950c2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderOutMsg)))
  "Returns md5sum for a message object of type 'EncoderOutMsg"
  "297826ed745b96cde20150fa2f0950c2")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderOutMsg>)))
  "Returns full string definition for message of type '<EncoderOutMsg>"
  (cl:format cl:nil "uint8 control~%uint16 outvalue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderOutMsg)))
  "Returns full string definition for message of type 'EncoderOutMsg"
  (cl:format cl:nil "uint8 control~%uint16 outvalue~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderOutMsg>))
  (cl:+ 0
     1
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderOutMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderOutMsg
    (cl:cons ':control (control msg))
    (cl:cons ':outvalue (outvalue msg))
))
