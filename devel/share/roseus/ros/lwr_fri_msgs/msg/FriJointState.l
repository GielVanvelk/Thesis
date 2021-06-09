;; Auto-generated. Do not edit!


(when (boundp 'lwr_fri_msgs::FriJointState)
  (if (not (find-package "LWR_FRI_MSGS"))
    (make-package "LWR_FRI_MSGS"))
  (shadow 'FriJointState (find-package "LWR_FRI_MSGS")))
(unless (find-package "LWR_FRI_MSGS::FRIJOINTSTATE")
  (make-package "LWR_FRI_MSGS::FRIJOINTSTATE"))

(in-package "ROS")
;;//! \htmlinclude FriJointState.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lwr_fri_msgs::FriJointState
  :super ros::object
  :slots (_header _msrJntPos _cmdJntPos _cmdJntPosFriOffset _msrJntTrq _estExtJntTrq _gravity ))

(defmethod lwr_fri_msgs::FriJointState
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:msrJntPos __msrJntPos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cmdJntPos __cmdJntPos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cmdJntPosFriOffset __cmdJntPosFriOffset) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:msrJntTrq __msrJntTrq) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:estExtJntTrq __estExtJntTrq) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:gravity __gravity) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _msrJntPos __msrJntPos)
   (setq _cmdJntPos __cmdJntPos)
   (setq _cmdJntPosFriOffset __cmdJntPosFriOffset)
   (setq _msrJntTrq __msrJntTrq)
   (setq _estExtJntTrq __estExtJntTrq)
   (setq _gravity __gravity)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:msrJntPos
   (&optional __msrJntPos)
   (if __msrJntPos (setq _msrJntPos __msrJntPos)) _msrJntPos)
  (:cmdJntPos
   (&optional __cmdJntPos)
   (if __cmdJntPos (setq _cmdJntPos __cmdJntPos)) _cmdJntPos)
  (:cmdJntPosFriOffset
   (&optional __cmdJntPosFriOffset)
   (if __cmdJntPosFriOffset (setq _cmdJntPosFriOffset __cmdJntPosFriOffset)) _cmdJntPosFriOffset)
  (:msrJntTrq
   (&optional __msrJntTrq)
   (if __msrJntTrq (setq _msrJntTrq __msrJntTrq)) _msrJntTrq)
  (:estExtJntTrq
   (&optional __estExtJntTrq)
   (if __estExtJntTrq (setq _estExtJntTrq __estExtJntTrq)) _estExtJntTrq)
  (:gravity
   (&optional __gravity)
   (if __gravity (setq _gravity __gravity)) _gravity)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32[7] _msrJntPos
    (* 4    7)
    ;; float32[7] _cmdJntPos
    (* 4    7)
    ;; float32[7] _cmdJntPosFriOffset
    (* 4    7)
    ;; float32[7] _msrJntTrq
    (* 4    7)
    ;; float32[7] _estExtJntTrq
    (* 4    7)
    ;; float32[7] _gravity
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32[7] _msrJntPos
     (dotimes (i 7)
       (sys::poke (elt _msrJntPos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _cmdJntPos
     (dotimes (i 7)
       (sys::poke (elt _cmdJntPos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _cmdJntPosFriOffset
     (dotimes (i 7)
       (sys::poke (elt _cmdJntPosFriOffset i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _msrJntTrq
     (dotimes (i 7)
       (sys::poke (elt _msrJntTrq i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _estExtJntTrq
     (dotimes (i 7)
       (sys::poke (elt _estExtJntTrq i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _gravity
     (dotimes (i 7)
       (sys::poke (elt _gravity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32[7] _msrJntPos
   (dotimes (i (length _msrJntPos))
     (setf (elt _msrJntPos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _cmdJntPos
   (dotimes (i (length _cmdJntPos))
     (setf (elt _cmdJntPos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _cmdJntPosFriOffset
   (dotimes (i (length _cmdJntPosFriOffset))
     (setf (elt _cmdJntPosFriOffset i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _msrJntTrq
   (dotimes (i (length _msrJntTrq))
     (setf (elt _msrJntTrq i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _estExtJntTrq
   (dotimes (i (length _estExtJntTrq))
     (setf (elt _estExtJntTrq i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _gravity
   (dotimes (i (length _gravity))
     (setf (elt _gravity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get lwr_fri_msgs::FriJointState :md5sum-) "9b96281d768d86477f17b62daa820d6d")
(setf (get lwr_fri_msgs::FriJointState :datatype-) "lwr_fri_msgs/FriJointState")
(setf (get lwr_fri_msgs::FriJointState :definition-)
      "Header header
float32[7] msrJntPos
float32[7] cmdJntPos
float32[7] cmdJntPosFriOffset
float32[7] msrJntTrq
float32[7] estExtJntTrq
float32[7] gravity
================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

")



(provide :lwr_fri_msgs/FriJointState "9b96281d768d86477f17b62daa820d6d")


