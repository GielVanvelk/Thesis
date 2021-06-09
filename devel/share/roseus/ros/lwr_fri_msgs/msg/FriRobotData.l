;; Auto-generated. Do not edit!


(when (boundp 'lwr_fri_msgs::FriRobotData)
  (if (not (find-package "LWR_FRI_MSGS"))
    (make-package "LWR_FRI_MSGS"))
  (shadow 'FriRobotData (find-package "LWR_FRI_MSGS")))
(unless (find-package "LWR_FRI_MSGS::FRIROBOTDATA")
  (make-package "LWR_FRI_MSGS::FRIROBOTDATA"))

(in-package "ROS")
;;//! \htmlinclude FriRobotData.msg.html


(defclass lwr_fri_msgs::FriRobotData
  :super ros::object
  :slots (_msrJntPos _cmdJntPos _cmdJntPosFriOffset ))

(defmethod lwr_fri_msgs::FriRobotData
  (:init
   (&key
    ((:msrJntPos __msrJntPos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cmdJntPos __cmdJntPos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cmdJntPosFriOffset __cmdJntPosFriOffset) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _msrJntPos __msrJntPos)
   (setq _cmdJntPos __cmdJntPos)
   (setq _cmdJntPosFriOffset __cmdJntPosFriOffset)
   self)
  (:msrJntPos
   (&optional __msrJntPos)
   (if __msrJntPos (setq _msrJntPos __msrJntPos)) _msrJntPos)
  (:cmdJntPos
   (&optional __cmdJntPos)
   (if __cmdJntPos (setq _cmdJntPos __cmdJntPos)) _cmdJntPos)
  (:cmdJntPosFriOffset
   (&optional __cmdJntPosFriOffset)
   (if __cmdJntPosFriOffset (setq _cmdJntPosFriOffset __cmdJntPosFriOffset)) _cmdJntPosFriOffset)
  (:serialization-length
   ()
   (+
    ;; float32[7] _msrJntPos
    (* 4    7)
    ;; float32[7] _cmdJntPos
    (* 4    7)
    ;; float32[7] _cmdJntPosFriOffset
    (* 4    7)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
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
   ;;
   self)
  )

(setf (get lwr_fri_msgs::FriRobotData :md5sum-) "e89d68aab24b9a7050d5809b14a4e699")
(setf (get lwr_fri_msgs::FriRobotData :datatype-) "lwr_fri_msgs/FriRobotData")
(setf (get lwr_fri_msgs::FriRobotData :definition-)
      "float32[7] msrJntPos
float32[7] cmdJntPos
float32[7] cmdJntPosFriOffset
")



(provide :lwr_fri_msgs/FriRobotData "e89d68aab24b9a7050d5809b14a4e699")


