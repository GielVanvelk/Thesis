; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude CommMsgBig.msg.html

(cl:defclass <CommMsgBig> (roslisp-msg-protocol:ros-message)
  ((channels
    :reader channels
    :initarg :channels
    :type (cl:vector soem_beckhoff_drivers-msg:CommMsg)
   :initform (cl:make-array 0 :element-type 'soem_beckhoff_drivers-msg:CommMsg :initial-element (cl:make-instance 'soem_beckhoff_drivers-msg:CommMsg))))
)

(cl:defclass CommMsgBig (<CommMsgBig>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommMsgBig>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommMsgBig)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<CommMsgBig> is deprecated: use soem_beckhoff_drivers-msg:CommMsgBig instead.")))

(cl:ensure-generic-function 'channels-val :lambda-list '(m))
(cl:defmethod channels-val ((m <CommMsgBig>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:channels-val is deprecated.  Use soem_beckhoff_drivers-msg:channels instead.")
  (channels m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommMsgBig>) ostream)
  "Serializes a message object of type '<CommMsgBig>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'channels))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'channels))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommMsgBig>) istream)
  "Deserializes a message object of type '<CommMsgBig>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'channels) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'channels)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'soem_beckhoff_drivers-msg:CommMsg))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommMsgBig>)))
  "Returns string type for a message object of type '<CommMsgBig>"
  "soem_beckhoff_drivers/CommMsgBig")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommMsgBig)))
  "Returns string type for a message object of type 'CommMsgBig"
  "soem_beckhoff_drivers/CommMsgBig")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommMsgBig>)))
  "Returns md5sum for a message object of type '<CommMsgBig>"
  "9a82f040b0f86ae1565e078936798d4c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommMsgBig)))
  "Returns md5sum for a message object of type 'CommMsgBig"
  "9a82f040b0f86ae1565e078936798d4c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommMsgBig>)))
  "Returns full string definition for message of type '<CommMsgBig>"
  (cl:format cl:nil "CommMsg[] channels~%~%================================================================================~%MSG: soem_beckhoff_drivers/CommMsg~%uint8[] datapacket~%uint8 datasize~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommMsgBig)))
  "Returns full string definition for message of type 'CommMsgBig"
  (cl:format cl:nil "CommMsg[] channels~%~%================================================================================~%MSG: soem_beckhoff_drivers/CommMsg~%uint8[] datapacket~%uint8 datasize~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommMsgBig>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'channels) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommMsgBig>))
  "Converts a ROS message object to a list"
  (cl:list 'CommMsgBig
    (cl:cons ':channels (channels msg))
))
