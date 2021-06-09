; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude PSUMsg.msg.html

(cl:defclass <PSUMsg> (roslisp-msg-protocol:ros-message)
  ((power_ok
    :reader power_ok
    :initarg :power_ok
    :type cl:boolean
    :initform cl:nil)
   (overload
    :reader overload
    :initarg :overload
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass PSUMsg (<PSUMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PSUMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PSUMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<PSUMsg> is deprecated: use soem_beckhoff_drivers-msg:PSUMsg instead.")))

(cl:ensure-generic-function 'power_ok-val :lambda-list '(m))
(cl:defmethod power_ok-val ((m <PSUMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:power_ok-val is deprecated.  Use soem_beckhoff_drivers-msg:power_ok instead.")
  (power_ok m))

(cl:ensure-generic-function 'overload-val :lambda-list '(m))
(cl:defmethod overload-val ((m <PSUMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:overload-val is deprecated.  Use soem_beckhoff_drivers-msg:overload instead.")
  (overload m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PSUMsg>) ostream)
  "Serializes a message object of type '<PSUMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'power_ok) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'overload) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PSUMsg>) istream)
  "Deserializes a message object of type '<PSUMsg>"
    (cl:setf (cl:slot-value msg 'power_ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'overload) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PSUMsg>)))
  "Returns string type for a message object of type '<PSUMsg>"
  "soem_beckhoff_drivers/PSUMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PSUMsg)))
  "Returns string type for a message object of type 'PSUMsg"
  "soem_beckhoff_drivers/PSUMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PSUMsg>)))
  "Returns md5sum for a message object of type '<PSUMsg>"
  "1d640ba06d2b65ae841e25741b04ea2c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PSUMsg)))
  "Returns md5sum for a message object of type 'PSUMsg"
  "1d640ba06d2b65ae841e25741b04ea2c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PSUMsg>)))
  "Returns full string definition for message of type '<PSUMsg>"
  (cl:format cl:nil "bool power_ok~%bool overload~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PSUMsg)))
  "Returns full string definition for message of type 'PSUMsg"
  (cl:format cl:nil "bool power_ok~%bool overload~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PSUMsg>))
  (cl:+ 0
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PSUMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'PSUMsg
    (cl:cons ':power_ok (power_ok msg))
    (cl:cons ':overload (overload msg))
))
