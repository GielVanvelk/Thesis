; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude CommMsg.msg.html

(cl:defclass <CommMsg> (roslisp-msg-protocol:ros-message)
  ((datapacket
    :reader datapacket
    :initarg :datapacket
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0))
   (datasize
    :reader datasize
    :initarg :datasize
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CommMsg (<CommMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CommMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CommMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<CommMsg> is deprecated: use soem_beckhoff_drivers-msg:CommMsg instead.")))

(cl:ensure-generic-function 'datapacket-val :lambda-list '(m))
(cl:defmethod datapacket-val ((m <CommMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:datapacket-val is deprecated.  Use soem_beckhoff_drivers-msg:datapacket instead.")
  (datapacket m))

(cl:ensure-generic-function 'datasize-val :lambda-list '(m))
(cl:defmethod datasize-val ((m <CommMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:datasize-val is deprecated.  Use soem_beckhoff_drivers-msg:datasize instead.")
  (datasize m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CommMsg>) ostream)
  "Serializes a message object of type '<CommMsg>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'datapacket))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'datapacket))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datasize)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CommMsg>) istream)
  "Deserializes a message object of type '<CommMsg>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'datapacket) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'datapacket)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'datasize)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CommMsg>)))
  "Returns string type for a message object of type '<CommMsg>"
  "soem_beckhoff_drivers/CommMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CommMsg)))
  "Returns string type for a message object of type 'CommMsg"
  "soem_beckhoff_drivers/CommMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CommMsg>)))
  "Returns md5sum for a message object of type '<CommMsg>"
  "8312abb0799e3ce28f5c343af99bc5eb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CommMsg)))
  "Returns md5sum for a message object of type 'CommMsg"
  "8312abb0799e3ce28f5c343af99bc5eb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CommMsg>)))
  "Returns full string definition for message of type '<CommMsg>"
  (cl:format cl:nil "uint8[] datapacket~%uint8 datasize~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CommMsg)))
  "Returns full string definition for message of type 'CommMsg"
  (cl:format cl:nil "uint8[] datapacket~%uint8 datasize~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CommMsg>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'datapacket) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CommMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'CommMsg
    (cl:cons ':datapacket (datapacket msg))
    (cl:cons ':datasize (datasize msg))
))
