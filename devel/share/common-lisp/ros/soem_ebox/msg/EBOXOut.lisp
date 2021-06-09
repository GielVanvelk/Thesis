; Auto-generated. Do not edit!


(cl:in-package soem_ebox-msg)


;//! \htmlinclude EBOXOut.msg.html

(cl:defclass <EBOXOut> (roslisp-msg-protocol:ros-message)
  ((trigger
    :reader trigger
    :initarg :trigger
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 2 :element-type 'cl:boolean :initial-element cl:nil))
   (digital
    :reader digital
    :initarg :digital
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 8 :element-type 'cl:boolean :initial-element cl:nil))
   (analog
    :reader analog
    :initarg :analog
    :type (cl:vector cl:float)
   :initform (cl:make-array 2 :element-type 'cl:float :initial-element 0.0))
   (timestamp
    :reader timestamp
    :initarg :timestamp
    :type cl:integer
    :initform 0)
   (encoder
    :reader encoder
    :initarg :encoder
    :type (cl:vector cl:integer)
   :initform (cl:make-array 2 :element-type 'cl:integer :initial-element 0)))
)

(cl:defclass EBOXOut (<EBOXOut>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EBOXOut>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EBOXOut)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name soem_ebox-msg:<EBOXOut> is deprecated: use soem_ebox-msg:EBOXOut instead.")))

(cl:ensure-generic-function 'trigger-val :lambda-list '(m))
(cl:defmethod trigger-val ((m <EBOXOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:trigger-val is deprecated.  Use soem_ebox-msg:trigger instead.")
  (trigger m))

(cl:ensure-generic-function 'digital-val :lambda-list '(m))
(cl:defmethod digital-val ((m <EBOXOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:digital-val is deprecated.  Use soem_ebox-msg:digital instead.")
  (digital m))

(cl:ensure-generic-function 'analog-val :lambda-list '(m))
(cl:defmethod analog-val ((m <EBOXOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:analog-val is deprecated.  Use soem_ebox-msg:analog instead.")
  (analog m))

(cl:ensure-generic-function 'timestamp-val :lambda-list '(m))
(cl:defmethod timestamp-val ((m <EBOXOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:timestamp-val is deprecated.  Use soem_ebox-msg:timestamp instead.")
  (timestamp m))

(cl:ensure-generic-function 'encoder-val :lambda-list '(m))
(cl:defmethod encoder-val ((m <EBOXOut>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader soem_ebox-msg:encoder-val is deprecated.  Use soem_ebox-msg:encoder instead.")
  (encoder m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EBOXOut>) ostream)
  "Serializes a message object of type '<EBOXOut>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'trigger))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'digital))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'analog))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let* ((signed ele) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    ))
   (cl:slot-value msg 'encoder))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EBOXOut>) istream)
  "Deserializes a message object of type '<EBOXOut>"
  (cl:setf (cl:slot-value msg 'trigger) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'trigger)))
    (cl:dotimes (i 2)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'digital) (cl:make-array 8))
  (cl:let ((vals (cl:slot-value msg 'digital)))
    (cl:dotimes (i 8)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream))))))
  (cl:setf (cl:slot-value msg 'analog) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'analog)))
    (cl:dotimes (i 2)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'timestamp)) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'encoder) (cl:make-array 2))
  (cl:let ((vals (cl:slot-value msg 'encoder)))
    (cl:dotimes (i 2)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EBOXOut>)))
  "Returns string type for a message object of type '<EBOXOut>"
  "soem_ebox/EBOXOut")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EBOXOut)))
  "Returns string type for a message object of type 'EBOXOut"
  "soem_ebox/EBOXOut")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EBOXOut>)))
  "Returns md5sum for a message object of type '<EBOXOut>"
  "2e8010960c65b8a2e79190aa526151a3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EBOXOut)))
  "Returns md5sum for a message object of type 'EBOXOut"
  "2e8010960c65b8a2e79190aa526151a3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EBOXOut>)))
  "Returns full string definition for message of type '<EBOXOut>"
  (cl:format cl:nil "bool[2] trigger~%bool[8] digital~%float32[2] analog~%uint32 timestamp~%int32[2] encoder~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EBOXOut)))
  "Returns full string definition for message of type 'EBOXOut"
  (cl:format cl:nil "bool[2] trigger~%bool[8] digital~%float32[2] analog~%uint32 timestamp~%int32[2] encoder~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EBOXOut>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'trigger) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'digital) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'analog) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'encoder) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EBOXOut>))
  "Converts a ROS message object to a list"
  (cl:list 'EBOXOut
    (cl:cons ':trigger (trigger msg))
    (cl:cons ':digital (digital msg))
    (cl:cons ':analog (analog msg))
    (cl:cons ':timestamp (timestamp msg))
    (cl:cons ':encoder (encoder msg))
))
