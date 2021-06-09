
(cl:in-package :asdf)

(defsystem "lwr_fri_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CartesianImpedance" :depends-on ("_package_CartesianImpedance"))
    (:file "_package_CartesianImpedance" :depends-on ("_package"))
    (:file "FriJointCommand" :depends-on ("_package_FriJointCommand"))
    (:file "_package_FriJointCommand" :depends-on ("_package"))
    (:file "FriJointImpedance" :depends-on ("_package_FriJointImpedance"))
    (:file "_package_FriJointImpedance" :depends-on ("_package"))
    (:file "FriJointState" :depends-on ("_package_FriJointState"))
    (:file "_package_FriJointState" :depends-on ("_package"))
    (:file "FriRobotData" :depends-on ("_package_FriRobotData"))
    (:file "_package_FriRobotData" :depends-on ("_package"))
    (:file "FriRobotJntData" :depends-on ("_package_FriRobotJntData"))
    (:file "_package_FriRobotJntData" :depends-on ("_package"))
  ))