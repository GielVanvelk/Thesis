;; Auto-generated. Do not edit!


(when (boundp 'lwr_fri_msgs::FriJointCommand)
  (if (not (find-package "LWR_FRI_MSGS"))
    (make-package "LWR_FRI_MSGS"))
  (shadow 'FriJointCommand (find-package "LWR_FRI_MSGS")))
(unless (find-package "LWR_FRI_MSGS::FRIJOINTCOMMAND")
  (make-package "LWR_FRI_MSGS::FRIJOINTCOMMAND"))

(in-package "ROS")
;;//! \htmlinclude FriJointCommand.msg.html


(defclass lwr_fri_msgs::FriJointCommand
  :super ros::object
  :slots (_jntPos _jntVel _addJntTrq ))

(defmethod lwr_fri_msgs::FriJointCommand
  (:init
   (&key
    ((:jntPos __jntPos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:jntVel __jntVel) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:addJntTrq __addJntTrq) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _jntPos __jntPos)
   (setq _jntVel __jntVel)
   (setq _addJntTrq __addJntTrq)
   self)
  (:jntPos
   (&optional __jntPos)
   (if __jntPos (setq _jntPos __jntPos)) _jntPos)
  (:jntVel
   (&optional __jntVel)
   (if __jntVel (setq _jntVel __jntVel)) _jntVel)
  (:addJntTrq
   (&optional __addJntTrq)
   (if __addJntTrq (setq _addJntTrq __addJntTrq)) _addJntTrq)
  (:serialization-length
   ()
   (+
    ;; float32[7] _jntPos
    (* 4    7)
    ;; float32[7] _jntVel
    (* 4    7)
    ;; float32[7] _addJntTrq
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[7] _jntPos
     (dotimes (i 7)
       (sys::poke (elt _jntPos i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _jntVel
     (dotimes (i 7)
       (sys::poke (elt _jntVel i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[7] _addJntTrq
     (dotimes (i 7)
       (sys::poke (elt _addJntTrq i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[7] _jntPos
   (dotimes (i (length _jntPos))
     (setf (elt _jntPos i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _jntVel
   (dotimes (i (length _jntVel))
     (setf (elt _jntVel i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;; float32[7] _addJntTrq
   (dotimes (i (length _addJntTrq))
     (setf (elt _addJntTrq i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     )
   ;;
   self)
  )

(setf (get lwr_fri_msgs::FriJointCommand :md5sum-) "10f89dabbe358204afa3f190e7d10f5f")
(setf (get lwr_fri_msgs::FriJointCommand :datatype-) "lwr_fri_msgs/FriJointCommand")
(setf (get lwr_fri_msgs::FriJointCommand :definition-)
      "float32[7] jntPos
float32[7] jntVel
float32[7] addJntTrq 
")



(provide :lwr_fri_msgs/FriJointCommand "10f89dabbe358204afa3f190e7d10f5f")


