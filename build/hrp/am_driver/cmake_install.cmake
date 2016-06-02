# Install script for directory: /home/agneev/catkin_ws/src/hrp/am_driver

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/agneev/catkin_ws/install")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/msg" TYPE FILE FILES
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/LoopData.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/Loop.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/SensorStatus.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/WheelEncoder.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/Range.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/MultiRange.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/BeaconPositions.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/WheelCurrent.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/SlipDetection.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/WheelSpeed4.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/ConfinementStatus.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/ProbabilityInit.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/ProbabilityArray.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/AntennaDelay.msg"
    "/home/agneev/catkin_ws/src/hrp/am_driver/msg/BeaconSleepConfig.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/cmake" TYPE FILE FILES "/home/agneev/catkin_ws/build/hrp/am_driver/catkin_generated/installspace/am_driver-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/agneev/catkin_ws/devel/include/am_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/agneev/catkin_ws/devel/share/common-lisp/ros/am_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/agneev/catkin_ws/devel/lib/python2.7/dist-packages/am_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/agneev/catkin_ws/devel/lib/python2.7/dist-packages/am_driver")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/agneev/catkin_ws/build/hrp/am_driver/catkin_generated/installspace/am_driver.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/cmake" TYPE FILE FILES "/home/agneev/catkin_ws/build/hrp/am_driver/catkin_generated/installspace/am_driver-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/cmake" TYPE FILE FILES
    "/home/agneev/catkin_ws/build/hrp/am_driver/catkin_generated/installspace/am_driverConfig.cmake"
    "/home/agneev/catkin_ws/build/hrp/am_driver/catkin_generated/installspace/am_driverConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver" TYPE FILE FILES "/home/agneev/catkin_ws/src/hrp/am_driver/package.xml")
endif()

