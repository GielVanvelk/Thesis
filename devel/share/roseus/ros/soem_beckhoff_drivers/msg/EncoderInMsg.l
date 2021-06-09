;; Auto-generated. Do not edit!


(when (boundp 'soem_beckhoff_drivers::EncoderInMsg)
  (if (not (find-package "SOEM_BECKHOFF_DRIVERS"))
    (make-package "SOEM_BECKHOFF_DRIVERS"))
  (shadow 'EncoderInMsg (find-package "SOEM_BECKHOFF_DRIVERS")))
(unless (find-package "SOEM_BECKHOFF_DRIVERS::ENCODERINMSG")
  (make-package "SOEM_BECKHOFF_DRIVERS::ENCODERINMSG"))

(in-package "ROS")
;;//! \htmlinclude EncoderInMsg.msg.html


(defclass soem_beckhoff_drivers::EncoderInMsg
  :super ros::object
  :slots (_status _value _latch _frequency _period _window ))

(defmethod soem_beckhoff_drivers::EncoderInMsg
  (:init
   (&key
    ((:status __status) 0)
    ((:value __value) 0)
    ((:latch __latch) 0)
    ((:frequency __frequency) 0)
    ((:period __period) 0)
    ((:window __window) 0)
    )
   (send-super :init)
   (setq _status (round __status))
   (setq _value (round __value))
   (setq _latch (round __latch))
   (setq _frequency (round __frequency))
   (setq _period (round __period))
   (setq _window (round __window))
   self)
  (:status
   (&optional __status)
   (if __status (setq _status __status)) _status)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:latch
   (&optional __latch)
   (if __latch (setq _latch __latch)) _latch)
  (:frequency
   (&optional __frequency)
   (if __frequency (setq _frequency __frequency)) _frequency)
  (:period
   (&optional __period)
   (if __period (setq _period __period)) _period)
  (:window
   (&optional __window)
   (if __window (setq _window __window)) _window)
  (:serialization-length
   ()
   (+
    ;; uint8 _status
    1
    ;; uint16 _value
    2
    ;; uint16 _latch
    2
    ;; uint32 _frequency
    4
    ;; uint16 _period
    2
    ;; uint16 _window
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; uint8 _status
       (write-byte _status s)
     ;; uint16 _value
       (write-word _value s)
     ;; uint16 _latch
       (write-word _latch s)
     ;; uint32 _frequency
       (write-long _frequency s)
     ;; uint16 _period
       (write-word _period s)
     ;; uint16 _window
       (write-word _window s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; uint8 _status
     (setq _status (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;; uint16 _value
     (setq _value (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _latch
     (setq _latch (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint32 _frequency
     (setq _frequency (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint16 _period
     (setq _period (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; uint16 _window
     (setq _window (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get soem_beckhoff_drivers::EncoderInMsg :md5sum-) "b22beb20aeb227634f7e90cad065f8e8")
(setf (get soem_beckhoff_drivers::EncoderInMsg :datatype-) "soem_beckhoff_drivers/EncoderInMsg")
(setf (get soem_beckhoff_drivers::EncoderInMsg :definition-)
      "uint8 status
uint16 value
uint16 latch
uint32 frequency
uint16 period
uint16 window

")



(provide :soem_beckhoff_drivers/EncoderInMsg "b22beb20aeb227634f7e90cad065f8e8")


