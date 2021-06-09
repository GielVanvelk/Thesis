; Auto-generated. Do not edit!


(cl:in-package soem_ebox-msg)


;//! \htmlinclude EBOXDigital.msg.html

(cl:defclass <EBOXDigital> (roslisp-msg-protocol:ros-message)
  ((digital
    :reader digital
    :initarg :digital
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 8 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass EBOXDigital (<EBOXDigital>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EBOXDigital>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EBOXDigital)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_ebox-msg:<EBOXDigital> is deprecated: use soem_ebox-msg:EBOXDigital instead.")))

(cl:ensure-generic-function 'digital-val :lambda-list '(m))
(cl:defmethod digital-val ((m <EBOXDigital>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:digital-val is deprecated.  Use soem_ebox-msg:digital instead.")
  (digital m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EBOXDigital>) ostream)
  "Serializes a message object of type '<EBOXDigital>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'digital))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EBOXDigital>) istream)
  "Deserializes a message object of type '<EBOXDigital>"
  (cl:setf (cl:slot-value msg 'digital) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'digital)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EBOXDigital>)))
  "Returns string type for a message object of type '<EBOXDigital>"
  "soem_ebox/EBOXDigital")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EBOXDigital)))
  "Returns string type for a message object of type 'EBOXDigital"
  "soem_ebox/EBOXDigital")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EBOXDigital>)))
  "Returns md5sum for a message object of type '<EBOXDigital>"
  "aec3537187e55892c1c92ecc0b9bccdf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EBOXDigital)))
  "Returns md5sum for a message object of type 'EBOXDigital"
  "aec3537187e55892c1c92ecc0b9bccdf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EBOXDigital>)))
  "Returns full string definition for message of type '<EBOXDigital>"
  (cl:format cl:nil "bool[8] digital~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EBOXDigital)))
  "Returns full string definition for message of type 'EBOXDigital"
  (cl:format cl:nil "bool[8] digital~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EBOXDigital>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'digital) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EBOXDigital>))
  "Converts a ROS message object to a list"
  (cl:list 'EBOXDigital
    (cl:cons ':digital (digital msg))
))
