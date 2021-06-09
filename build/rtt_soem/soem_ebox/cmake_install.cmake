# Install script for directory: /home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox

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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/soem_ebox/msg" TYPE FILE FILES
    "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXAnalog.msg"
    "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXDigital.msg"
    "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXOut.msg"
    "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/msg/EBOXPWM.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/soem_ebox/cmake" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/build/rtt_soem/soem_ebox/catkin_generated/installspace/soem_ebox-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/giel/etasl/ws/my_new_workspace/devel/include/soem_ebox")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/giel/etasl/ws/my_new_workspace/devel/share/roseus/ros/soem_ebox")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/giel/etasl/ws/my_new_workspace/devel/share/common-lisp/ros/soem_ebox")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/giel/etasl/ws/my_new_workspace/devel/share/gennodejs/ros/soem_ebox")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python2" -m compileall "/home/giel/etasl/ws/my_new_workspace/devel/lib/python2.7/dist-packages/soem_ebox")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/giel/etasl/ws/my_new_workspace/devel/lib/python2.7/dist-packages/soem_ebox")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so")
    file(RPATH_CHECK
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so"
         RPATH "/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master/plugins:/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_ebox:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_ebox/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_ebox/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib")
  endif()
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins" TYPE SHARED_LIBRARY FILES "/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so")
  if(EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so" AND
     NOT IS_SYMLINK "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so")
    file(RPATH_CHANGE
         FILE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so"
         OLD_RPATH "/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"
         NEW_RPATH "/home/giel/etasl/ws/my_new_workspace/install/lib:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_master/plugins:/opt/ros/kinetic/lib:/opt/ros/kinetic/lib/orocos/gnulinux/rtt_roscomm/plugins:/opt/ros/kinetic/lib/orocos/gnulinux:/opt/ros/kinetic/lib/orocos/gnulinux/plugins:/opt/ros/kinetic/lib/orocos/gnulinux/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_ebox:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_ebox/types:/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_ebox/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master:/home/giel/etasl/ws/my_new_workspace/devel/lib/orocos/gnulinux/soem_master/plugins:/home/giel/etasl/ws/my_new_workspace/devel/lib")
    if(CMAKE_INSTALL_DO_STRIP)
      execute_process(COMMAND "/usr/bin/strip" "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/lib/orocos/gnulinux/soem_ebox/plugins/libsoem_ebox-gnulinux.so")
    endif()
  endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/build/rtt_soem/soem_ebox/soem_ebox-gnulinux.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(MAKE_DIRECTORY $ENV{DESTDIR}/home/giel/etasl/ws/my_new_workspace/install/lib/orocos/gnulinux/soem_ebox)
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/build/rtt_soem/soem_ebox/catkin_generated/installspace/soem_ebox.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/soem_ebox/cmake" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/build/rtt_soem/soem_ebox/catkin_generated/installspace/soem_ebox-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/soem_ebox/cmake" TYPE FILE FILES
    "/home/giel/etasl/ws/my_new_workspace/build/rtt_soem/soem_ebox/catkin_generated/installspace/soem_eboxConfig.cmake"
    "/home/giel/etasl/ws/my_new_workspace/build/rtt_soem/soem_ebox/catkin_generated/installspace/soem_eboxConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/soem_ebox" TYPE FILE FILES "/home/giel/etasl/ws/my_new_workspace/src/rtt_soem/soem_ebox/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/giel/etasl/ws/my_new_workspace/build/rtt_soem/soem_ebox/soem_ebox_typekit/cmake_install.cmake")

endif()

