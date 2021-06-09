# Install script for directory: /home/giel/etasl/ws/my_new_workspace/src/giel_component/src

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
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so"
         RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/giel_component:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/giel_component/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/giel_component/plugins:/home/giel/etasl/ws/my_new_workspace/install/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component" TYPE SHARED_LIBRARY FILES "/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so"
         OLD_RPATH "/opt/ros/kinetic/lib::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/giel_component:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/giel_component/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/giel_component/plugins:/home/giel/etasl/ws/my_new_workspace/install/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/giel_component/libgiel_component-gnulinux.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/orocos/giel_component" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/src/giel_component/src/giel_component.hpp")
endif()

