# Install script for directory: /home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri/src

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so"
         RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_geometry_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_sensor_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_sensor_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/lwr_fri:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/lwr_fri/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/lwr_fri/plugins:/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/rtt_motion_control_msgs/types:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/rtt_lwr_fri_msgs/types")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri" TYPE SHARED_LIBRARY FILES "/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/rtt_motion_control_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/types:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/rtt_lwr_fri_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_geometry_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_sensor_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_sensor_msgs/types:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_geometry_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_sensor_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_sensor_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/lwr_fri:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/lwr_fri/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/lwr_fri/plugins:/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/rtt_motion_control_msgs/types:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/rtt_lwr_fri_msgs/types")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/lwr_fri/liblwr_fri-gnulinux.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orocos/lwr_fri" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/src/kuka-robot-hardware/lwr_fri/src/FRIComponent.hpp")
endif()

