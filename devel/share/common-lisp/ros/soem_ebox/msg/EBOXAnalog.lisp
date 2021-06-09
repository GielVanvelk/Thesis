; Auto-generated. Do not edit!


(cl:in-package soem_ebox-msg)


;//! \htmlinclude EBOXAnalog.msg.html

(cl:defclass <EBOXAnalog> (roslisp-msg-protocol:ros-message)
  ((analog
    :reader analog
    :initarg :analog
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass EBOXAnalog (<EBOXAnalog>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EBOXAnalog>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EBOXAnalog)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_ebox-msg:<EBOXAnalog> is deprecated: use soem_ebox-msg:EBOXAnalog instead.")))

(cl:ensure-generic-function 'analog-val :lambda-list '(m))
(cl:defmethod analog-val ((m <EBOXAnalog>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:analog-val is deprecated.  Use soem_ebox-msg:analog instead.")
  (analog m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EBOXAnalog>) ostream)
  "Serializes a message object of type '<EBOXAnalog>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'analog))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EBOXAnalog>) istream)
  "Deserializes a message object of type '<EBOXAnalog>"
  (cl:setf (cl:slot-value msg 'analog) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'analog)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EBOXAnalog>)))
  "Returns string type for a message object of type '<EBOXAnalog>"
  "soem_ebox/EBOXAnalog")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EBOXAnalog)))
  "Returns string type for a message object of type 'EBOXAnalog"
  "soem_ebox/EBOXAnalog")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EBOXAnalog>)))
  "Returns md5sum for a message object of type '<EBOXAnalog>"
  "da0d2d69b62902fa94381342826fb037")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EBOXAnalog)))
  "Returns md5sum for a message object of type 'EBOXAnalog"
  "da0d2d69b62902fa94381342826fb037")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EBOXAnalog>)))
  "Returns full string definition for message of type '<EBOXAnalog>"
  (cl:format cl:nil "float32[2] analog~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EBOXAnalog)))
  "Returns full string definition for message of type 'EBOXAnalog"
  (cl:format cl:nil "float32[2] analog~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EBOXAnalog>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'analog) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EBOXAnalog>))
  "Converts a ROS message object to a list"
  (cl:list 'EBOXAnalog
    (cl:cons ':analog (analog msg))
))
