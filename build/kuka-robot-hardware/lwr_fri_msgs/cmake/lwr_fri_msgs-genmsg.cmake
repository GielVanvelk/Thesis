# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "lwr_fri_msgs: 6 messages, 0 services")

set(MSG_I_FLAGS "-Ilwr_fri_msgs:/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(lwr_fri_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg" NAME_WE)
add_custom_target(_lwr_fri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lwr_fri_msgs" "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg" ""
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg" NAME_WE)
add_custom_target(_lwr_fri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lwr_fri_msgs" "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg" ""
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg" NAME_WE)
add_custom_target(_lwr_fri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lwr_fri_msgs" "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg" ""
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg" NAME_WE)
add_custom_target(_lwr_fri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lwr_fri_msgs" "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg" "geometry_msgs/Twist:geometry_msgs/Vector3"
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg" NAME_WE)
add_custom_target(_lwr_fri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lwr_fri_msgs" "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg" ""
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg" NAME_WE)
add_custom_target(_lwr_fri_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "lwr_fri_msgs" "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg" "std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_cpp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_cpp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_cpp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_cpp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_cpp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
)

### Generating Services

### Generating Module File
_generate_module_cpp(lwr_fri_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(lwr_fri_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(lwr_fri_msgs_generate_messages lwr_fri_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_cpp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_cpp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_cpp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_cpp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_cpp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_cpp _lwr_fri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lwr_fri_msgs_gencpp)
add_dependencies(lwr_fri_msgs_gencpp lwr_fri_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lwr_fri_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_eus(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_eus(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_eus(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_eus(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_eus(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
)

### Generating Services

### Generating Module File
_generate_module_eus(lwr_fri_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(lwr_fri_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(lwr_fri_msgs_generate_messages lwr_fri_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_eus _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_eus _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_eus _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_eus _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_eus _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_eus _lwr_fri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lwr_fri_msgs_geneus)
add_dependencies(lwr_fri_msgs_geneus lwr_fri_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lwr_fri_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_lisp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_lisp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_lisp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_lisp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_lisp(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
)

### Generating Services

### Generating Module File
_generate_module_lisp(lwr_fri_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(lwr_fri_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(lwr_fri_msgs_generate_messages lwr_fri_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_lisp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_lisp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_lisp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_lisp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_lisp _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_lisp _lwr_fri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lwr_fri_msgs_genlisp)
add_dependencies(lwr_fri_msgs_genlisp lwr_fri_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lwr_fri_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_nodejs(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_nodejs(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_nodejs(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_nodejs(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_nodejs(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
)

### Generating Services

### Generating Module File
_generate_module_nodejs(lwr_fri_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(lwr_fri_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(lwr_fri_msgs_generate_messages lwr_fri_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_nodejs _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_nodejs _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_nodejs _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_nodejs _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_nodejs _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_nodejs _lwr_fri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lwr_fri_msgs_gennodejs)
add_dependencies(lwr_fri_msgs_gennodejs lwr_fri_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lwr_fri_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_py(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_py(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_py(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_py(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
)
_generate_msg_py(lwr_fri_msgs
  "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
)

### Generating Services

### Generating Module File
_generate_module_py(lwr_fri_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(lwr_fri_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(lwr_fri_msgs_generate_messages lwr_fri_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_py _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_py _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointCommand.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_py _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/CartesianImpedance.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_py _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriRobotJntData.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_py _lwr_fri_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri_msgs/msg/FriJointState.msg" NAME_WE)
add_dependencies(lwr_fri_msgs_generate_messages_py _lwr_fri_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(lwr_fri_msgs_genpy)
add_dependencies(lwr_fri_msgs_genpy lwr_fri_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS lwr_fri_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/lwr_fri_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(lwr_fri_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(lwr_fri_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/lwr_fri_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(lwr_fri_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(lwr_fri_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/lwr_fri_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(lwr_fri_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(lwr_fri_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/lwr_fri_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(lwr_fri_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(lwr_fri_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/lwr_fri_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(lwr_fri_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(lwr_fri_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
