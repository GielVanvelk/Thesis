; Auto-generated. Do not edit!


(cl:in-package soem_ebox-msg)


;//! \htmlinclude EBOXPWM.msg.html

(cl:defclass <EBOXPWM> (roslisp-msg-protocol:ros-message)
  ((pwm
    :reader pwm
    :initarg :pwm
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EBOXPWM (<EBOXPWM>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EBOXPWM>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EBOXPWM)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_ebox-msg:<EBOXPWM> is deprecated: use soem_ebox-msg:EBOXPWM instead.")))

(cl:ensure-generic-function 'pwm-val :lambda-list '(m))
(cl:defmethod pwm-val ((m <EBOXPWM>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:pwm-val is deprecated.  Use soem_ebox-msg:pwm instead.")
  (pwm m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EBOXPWM>) ostream)
  "Serializes a message object of type '<EBOXPWM>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'pwm))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EBOXPWM>) istream)
  "Deserializes a message object of type '<EBOXPWM>"
  (cl:setf (cl:slot-value msg 'pwm) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'pwm)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EBOXPWM>)))
  "Returns string type for a message object of type '<EBOXPWM>"
  "soem_ebox/EBOXPWM")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EBOXPWM)))
  "Returns string type for a message object of type 'EBOXPWM"
  "soem_ebox/EBOXPWM")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EBOXPWM>)))
  "Returns md5sum for a message object of type '<EBOXPWM>"
  "0d644c5720c3d45355d4cb6a20aa7362")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EBOXPWM)))
  "Returns md5sum for a message object of type 'EBOXPWM"
  "0d644c5720c3d45355d4cb6a20aa7362")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EBOXPWM>)))
  "Returns full string definition for message of type '<EBOXPWM>"
  (cl:format cl:nil "float32[2] pwm~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EBOXPWM)))
  "Returns full string definition for message of type 'EBOXPWM"
  (cl:format cl:nil "float32[2] pwm~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EBOXPWM>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'pwm) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EBOXPWM>))
  "Converts a ROS message object to a list"
  (cl:list 'EBOXPWM
    (cl:cons ':pwm (pwm msg))
))
