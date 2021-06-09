# Install script for directory: /home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/rtt_lwr_fri_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/giel/etasl/ws/my_new_workspace/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/build/kuka-robot-hardware/rtt_lwr_fri_msgs/rtt_lwr_fri_msgs-gnulinux.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(MAKE_DIRECTORY $ENV{DESTDIR}/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/rtt_lwr_fri_msgs)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/build/kuka-robot-hardware/rtt_lwr_fri_msgs/catkin_generated/installspace/rtt_lwr_fri_msgs.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtt_lwr_fri_msgs/cmake" TYPE FILE FILES
    "/home/giel/etasl/ws/my_new_workspace/build/kuka-robot-hardware/rtt_lwr_fri_msgs/catkin_generated/installspace/rtt_lwr_fri_msgsConfig.cmake"
    "/home/giel/etasl/ws/my_new_workspace/build/kuka-robot-hardware/rtt_lwr_fri_msgs/catkin_generated/installspace/rtt_lwr_fri_msgsConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/rtt_lwr_fri_msgs" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/rtt_lwr_fri_msgs/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/giel/etasl/ws/my_new_workspace/build/kuka-robot-hardware/rtt_lwr_fri_msgs/lwr_fri_msgs_typekit/cmake_install.cmake")
  include("/home/giel/etasl/ws/my_new_workspace/build/kuka-robot-hardware/rtt_lwr_fri_msgs/lwr_fri_msgs_service_proxies/cmake_install.cmake")

endif()

