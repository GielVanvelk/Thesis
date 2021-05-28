# Install script for directory: /home/giel/etasl/ws/my_new_workspace/src/viz_marker/src

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so"
         RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_ros/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_ros/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_visualization_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_geometry_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/viz_marker:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/viz_marker/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/viz_marker/plugins:/home/giel/etasl/ws/my_new_workspace/install/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker" TYPE SHARED_LIBRARY FILES "/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_ros/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_ros/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_visualization_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_geometry_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_ros/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_ros/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_visualization_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_geometry_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_std_msgs/types:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/viz_marker:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/viz_marker/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/viz_marker/plugins:/home/giel/etasl/ws/my_new_workspace/install/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/viz_marker/libviz_marker-gnulinux.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orocos/viz_marker" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/src/viz_marker/src/viz_marker-component.hpp")
endif()

