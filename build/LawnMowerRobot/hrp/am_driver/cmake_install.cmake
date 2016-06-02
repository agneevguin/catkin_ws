# Install script for directory: /home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver

# Set the install prefix
IF(NOT DEFINED CMAKE_INSTALL_PREFIX)
  SET(CMAKE_INSTALL_PREFIX "/home/agneev/catkin_ws/install")
ENDIF(NOT DEFINED CMAKE_INSTALL_PREFIX)
STRING(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
IF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  IF(BUILD_TYPE)
    STRING(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  ELSE(BUILD_TYPE)
    SET(CMAKE_INSTALL_CONFIG_NAME "")
  ENDIF(BUILD_TYPE)
  MESSAGE(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
ENDIF(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)

# Set the component getting installed.
IF(NOT CMAKE_INSTALL_COMPONENT)
  IF(COMPONENT)
    MESSAGE(STATUS "Install component: \"${COMPONENT}\"")
    SET(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  ELSE(COMPONENT)
    SET(CMAKE_INSTALL_COMPONENT)
  ENDIF(COMPONENT)
ENDIF(NOT CMAKE_INSTALL_COMPONENT)

# Install shared libraries without execute permission?
IF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  SET(CMAKE_INSTALL_SO_NO_EXE "1")
ENDIF(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/msg" TYPE FILE FILES
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/LoopData.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/Loop.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/SensorStatus.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/WheelEncoder.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/Range.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/MultiRange.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/BeaconPositions.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/WheelCurrent.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/SlipDetection.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/WheelSpeed4.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/ConfinementStatus.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/ProbabilityInit.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/ProbabilityArray.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/AntennaDelay.msg"
    "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/msg/BeaconSleepConfig.msg"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/cmake" TYPE FILE FILES "/home/agneev/catkin_ws/build/LawnMowerRobot/hrp/am_driver/catkin_generated/installspace/am_driver-msg-paths.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/agneev/catkin_ws/devel/include/am_driver")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/agneev/catkin_ws/devel/share/common-lisp/ros/am_driver")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/agneev/catkin_ws/devel/lib/python2.7/dist-packages/am_driver")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/agneev/catkin_ws/devel/lib/python2.7/dist-packages/am_driver")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/agneev/catkin_ws/build/LawnMowerRobot/hrp/am_driver/catkin_generated/installspace/am_driver.pc")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/cmake" TYPE FILE FILES "/home/agneev/catkin_ws/build/LawnMowerRobot/hrp/am_driver/catkin_generated/installspace/am_driver-msg-extras.cmake")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver/cmake" TYPE FILE FILES
    "/home/agneev/catkin_ws/build/LawnMowerRobot/hrp/am_driver/catkin_generated/installspace/am_driverConfig.cmake"
    "/home/agneev/catkin_ws/build/LawnMowerRobot/hrp/am_driver/catkin_generated/installspace/am_driverConfig-version.cmake"
    )
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

IF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  FILE(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/am_driver" TYPE FILE FILES "/home/agneev/catkin_ws/src/LawnMowerRobot/hrp/am_driver/package.xml")
ENDIF(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")

