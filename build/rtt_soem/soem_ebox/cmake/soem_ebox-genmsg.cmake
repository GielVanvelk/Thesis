# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "soem_ebox: 4 messages, 0 services")

set(MSG_I_FLAGS "-Isoem_ebox:/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(soem_ebox_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg" NAME_WE)
add_custom_target(_soem_ebox_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "soem_ebox" "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg" ""
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg" NAME_WE)
add_custom_target(_soem_ebox_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "soem_ebox" "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg" ""
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg" NAME_WE)
add_custom_target(_soem_ebox_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "soem_ebox" "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg" ""
)

get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg" NAME_WE)
add_custom_target(_soem_ebox_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "soem_ebox" "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soem_ebox
)
_generate_msg_cpp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soem_ebox
)
_generate_msg_cpp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soem_ebox
)
_generate_msg_cpp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soem_ebox
)

### Generating Services

### Generating Module File
_generate_module_cpp(soem_ebox
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soem_ebox
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(soem_ebox_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(soem_ebox_generate_messages soem_ebox_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_cpp _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_cpp _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_cpp _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_cpp _soem_ebox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(soem_ebox_gencpp)
add_dependencies(soem_ebox_gencpp soem_ebox_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soem_ebox_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/soem_ebox
)
_generate_msg_eus(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/soem_ebox
)
_generate_msg_eus(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/soem_ebox
)
_generate_msg_eus(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/soem_ebox
)

### Generating Services

### Generating Module File
_generate_module_eus(soem_ebox
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/soem_ebox
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(soem_ebox_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(soem_ebox_generate_messages soem_ebox_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_eus _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_eus _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_eus _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_eus _soem_ebox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(soem_ebox_geneus)
add_dependencies(soem_ebox_geneus soem_ebox_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soem_ebox_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soem_ebox
)
_generate_msg_lisp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soem_ebox
)
_generate_msg_lisp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soem_ebox
)
_generate_msg_lisp(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soem_ebox
)

### Generating Services

### Generating Module File
_generate_module_lisp(soem_ebox
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soem_ebox
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(soem_ebox_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(soem_ebox_generate_messages soem_ebox_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_lisp _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_lisp _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_lisp _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_lisp _soem_ebox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(soem_ebox_genlisp)
add_dependencies(soem_ebox_genlisp soem_ebox_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soem_ebox_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/soem_ebox
)
_generate_msg_nodejs(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/soem_ebox
)
_generate_msg_nodejs(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/soem_ebox
)
_generate_msg_nodejs(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/soem_ebox
)

### Generating Services

### Generating Module File
_generate_module_nodejs(soem_ebox
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/soem_ebox
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(soem_ebox_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(soem_ebox_generate_messages soem_ebox_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_nodejs _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_nodejs _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_nodejs _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_nodejs _soem_ebox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(soem_ebox_gennodejs)
add_dependencies(soem_ebox_gennodejs soem_ebox_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soem_ebox_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox
)
_generate_msg_py(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox
)
_generate_msg_py(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox
)
_generate_msg_py(soem_ebox
  "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox
)

### Generating Services

### Generating Module File
_generate_module_py(soem_ebox
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(soem_ebox_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(soem_ebox_generate_messages soem_ebox_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_py _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_py _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_py _soem_ebox_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg" NAME_WE)
add_dependencies(soem_ebox_generate_messages_py _soem_ebox_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(soem_ebox_genpy)
add_dependencies(soem_ebox_genpy soem_ebox_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS soem_ebox_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soem_ebox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/soem_ebox
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/soem_ebox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/soem_ebox
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soem_ebox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/soem_ebox
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/soem_ebox)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/soem_ebox
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox)
  install(CODE "execute_process(COMMAND \"/usr/bin/python2\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/soem_ebox
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
