; Auto-generated. Do not edit!


(cl:in-package soem_beckhoff_drivers-msg)


;//! \htmlinclude EncoderInMsg.msg.html

(cl:defclass <EncoderInMsg> (roslisp-msg-protocol:ros-message)
  ((status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0)
   (value
    :reader value
    :initarg :value
    :type cl:fixnum
    :initform 0)
   (latch
    :reader latch
    :initarg :latch
    :type cl:fixnum
    :initform 0)
   (frequency
    :reader frequency
    :initarg :frequency
    :type cl:integer
    :initform 0)
   (period
    :reader period
    :initarg :period
    :type cl:fixnum
    :initform 0)
   (window
    :reader window
    :initarg :window
    :type cl:fixnum
    :initform 0))
)

(cl:defclass EncoderInMsg (<EncoderInMsg>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EncoderInMsg>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EncoderInMsg)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_beckhoff_drivers-msg:<EncoderInMsg> is deprecated: use soem_beckhoff_drivers-msg:EncoderInMsg instead.")))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <EncoderInMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:status-val is deprecated.  Use soem_beckhoff_drivers-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'value-val :lambda-list '(m))
(cl:defmethod value-val ((m <EncoderInMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:value-val is deprecated.  Use soem_beckhoff_drivers-msg:value instead.")
  (value m))

(cl:ensure-generic-function 'latch-val :lambda-list '(m))
(cl:defmethod latch-val ((m <EncoderInMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:latch-val is deprecated.  Use soem_beckhoff_drivers-msg:latch instead.")
  (latch m))

(cl:ensure-generic-function 'frequency-val :lambda-list '(m))
(cl:defmethod frequency-val ((m <EncoderInMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:frequency-val is deprecated.  Use soem_beckhoff_drivers-msg:frequency instead.")
  (frequency m))

(cl:ensure-generic-function 'period-val :lambda-list '(m))
(cl:defmethod period-val ((m <EncoderInMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:period-val is deprecated.  Use soem_beckhoff_drivers-msg:period instead.")
  (period m))

(cl:ensure-generic-function 'window-val :lambda-list '(m))
(cl:defmethod window-val ((m <EncoderInMsg>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_beckhoff_drivers-msg:window-val is deprecated.  Use soem_beckhoff_drivers-msg:window instead.")
  (window m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EncoderInMsg>) ostream)
  "Serializes a message object of type '<EncoderInMsg>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latch)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequency)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'window)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'window)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EncoderInMsg>) istream)
  "Deserializes a message object of type '<EncoderInMsg>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'value)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'latch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'latch)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'frequency)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'period)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'window)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'window)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EncoderInMsg>)))
  "Returns string type for a message object of type '<EncoderInMsg>"
  "soem_beckhoff_drivers/EncoderInMsg")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EncoderInMsg)))
  "Returns string type for a message object of type 'EncoderInMsg"
  "soem_beckhoff_drivers/EncoderInMsg")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EncoderInMsg>)))
  "Returns md5sum for a message object of type '<EncoderInMsg>"
  "b22beb20aeb227634f7e90cad065f8e8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EncoderInMsg)))
  "Returns md5sum for a message object of type 'EncoderInMsg"
  "b22beb20aeb227634f7e90cad065f8e8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EncoderInMsg>)))
  "Returns full string definition for message of type '<EncoderInMsg>"
  (cl:format cl:nil "uint8 status~%uint16 value~%uint16 latch~%uint32 frequency~%uint16 period~%uint16 window~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EncoderInMsg)))
  "Returns full string definition for message of type 'EncoderInMsg"
  (cl:format cl:nil "uint8 status~%uint16 value~%uint16 latch~%uint32 frequency~%uint16 period~%uint16 window~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EncoderInMsg>))
  (cl:+ 0
     1
     2
     2
     4
     2
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EncoderInMsg>))
  "Converts a ROS message object to a list"
  (cl:list 'EncoderInMsg
    (cl:cons ':status (status msg))
    (cl:cons ':value (value msg))
    (cl:cons ':latch (latch msg))
    (cl:cons ':frequency (frequency msg))
    (cl:cons ':period (period msg))
    (cl:cons ':window (window msg))
))
