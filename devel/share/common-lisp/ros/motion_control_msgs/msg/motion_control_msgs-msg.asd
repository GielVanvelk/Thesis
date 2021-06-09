
(cl:in-package :asdf)

(defsystem "motion_control_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils )
  :components ((:file "_package")
    (:file "JointAccelerations" :depends-on ("_package_JointAccelerations"))
    (:file "_package_JointAccelerations" :depends-on ("_package"))
    (:file "JointEfforts" :depends-on ("_package_JointEfforts"))
    (:file "_package_JointEfforts" :depends-on ("_package"))
    (:file "JointPositions" :depends-on ("_package_JointPositions"))
    (:file "_package_JointPositions" :depends-on ("_package"))
    (:file "JointVelocities" :depends-on ("_package_JointVelocities"))
    (:file "_package_JointVelocities" :depends-on ("_package"))
  ))