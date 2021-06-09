# Install script for directory: /opt/ros/kinetic/share/rtt_roscomm/src/templates/typekit

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so"
         RPATH "/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master/plugins:/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types" TYPE SHARED_LIBRARY FILES "/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master/plugins:/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-typekit-gnulinux.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so"
         RPATH "/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master/plugins:/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types" TYPE SHARED_LIBRARY FILES "/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so"
         OLD_RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master/plugins:/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_beckhoff_drivers/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_beckhoff_drivers/types/librtt-soem_beckhoff_drivers-ros-transport-gnulinux.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orocos" TYPE DIRECTORY FILES "/home/giel/etasl/ws/my_new_workspace/devel/include/orocos/soem_beckhoff_drivers")
endif()

