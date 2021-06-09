;; Auto-generated. Do not edit!


(when (boundp 'lwr_fri_msgs::FriRobotJntData)
  (if (not (find-package "LWR_FRI_MSGS"))
    (make-package "LWR_FRI_MSGS"))
  (shadow 'FriRobotJntData (find-package "LWR_FRI_MSGS")))
(unless (find-package "LWR_FRI_MSGS::FRIROBOTJNTDATA")
  (make-package "LWR_FRI_MSGS::FRIROBOTJNTDATA"))

(in-package "ROS")
;;//! \htmlinclude FriRobotJntData.msg.html


(defclass lwr_fri_msgs::FriRobotJntData
  :super ros::object
  :slots (_msrJntPos _cmdJntPos _cmdJntPosFriOffset _msrJntTrq _estExtJntTrq _gravity ))

(defmethod lwr_fri_msgs::FriRobotJntData
  (:init
   (&key
    ((:msrJntPos __msrJntPos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cmdJntPos __cmdJntPos) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:cmdJntPosFriOffset __cmdJntPosFriOffset) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:msrJntTrq __msrJntTrq) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:estExtJntTrq __estExtJntTrq) (make-array 7 :initial-element 0.0 :element-type :float))
    ((:gravity __gravity) (make-array 7 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _msrJntPos __msrJntPos)
   (setq _cmdJntPos __cmdJntPos)
   (setq _cmdJntPosFriOffset __cmdJntPosFriOffset)
   (setq _msrJntTrq __msrJntTrq)
   (setq _estExtJntTrq __estExtJntTrq)
   (setq _gravity __gravity)
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

(setf (get lwr_fri_msgs::FriRobotJntData :md5sum-) "0aaff558814188d51a3ef7a1023d53a7")
(setf (get lwr_fri_msgs::FriRobotJntData :datatype-) "lwr_fri_msgs/FriRobotJntData")
(setf (get lwr_fri_msgs::FriRobotJntData :definition-)
      "float32[7] msrJntPos
float32[7] cmdJntPos
float32[7] cmdJntPosFriOffset
float32[7] msrJntTrq
float32[7] estExtJntTrq
float32[7] gravity
")



(provide :lwr_fri_msgs/FriRobotJntData "0aaff558814188d51a3ef7a1023d53a7")


