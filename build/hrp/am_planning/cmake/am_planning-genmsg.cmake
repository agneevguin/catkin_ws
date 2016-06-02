# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "am_planning: 0 messages, 3 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/indigo/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/indigo/share/geometry_msgs/cmake/../msg;-Inav_msgs:/opt/ros/indigo/share/nav_msgs/cmake/../msg;-Iactionlib_msgs:/opt/ros/indigo/share/actionlib_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(genlisp REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(am_planning_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv" NAME_WE)
add_custom_target(_am_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "am_planning" "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv" "geometry_msgs/Polygon:geometry_msgs/Quaternion:geometry_msgs/PolygonStamped:geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Pose"
)

get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv" NAME_WE)
add_custom_target(_am_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "am_planning" "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv" "geometry_msgs/Point32:geometry_msgs/Polygon:geometry_msgs/PolygonStamped:std_msgs/Header"
)

get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv" NAME_WE)
add_custom_target(_am_planning_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "am_planning" "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv" "geometry_msgs/Polygon:geometry_msgs/Quaternion:geometry_msgs/PolygonStamped:geometry_msgs/Point32:std_msgs/Header:geometry_msgs/Point:geometry_msgs/PoseStamped:nav_msgs/Path:geometry_msgs/Pose"
)

#
#  langs = gencpp;genlisp;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/am_planning
)
_generate_srv_cpp(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/am_planning
)
_generate_srv_cpp(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/am_planning
)

### Generating Module File
_generate_module_cpp(am_planning
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/am_planning
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(am_planning_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(am_planning_generate_messages am_planning_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_cpp _am_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_cpp _am_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_cpp _am_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(am_planning_gencpp)
add_dependencies(am_planning_gencpp am_planning_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS am_planning_generate_messages_cpp)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/am_planning
)
_generate_srv_lisp(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/am_planning
)
_generate_srv_lisp(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/am_planning
)

### Generating Module File
_generate_module_lisp(am_planning
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/am_planning
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(am_planning_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(am_planning_generate_messages am_planning_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_lisp _am_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_lisp _am_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_lisp _am_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(am_planning_genlisp)
add_dependencies(am_planning_genlisp am_planning_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS am_planning_generate_messages_lisp)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/am_planning
)
_generate_srv_py(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/am_planning
)
_generate_srv_py(am_planning
  "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PolygonStamped.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/indigo/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/PoseStamped.msg;/opt/ros/indigo/share/nav_msgs/cmake/../msg/Path.msg;/opt/ros/indigo/share/geometry_msgs/cmake/../msg/Pose.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/am_planning
)

### Generating Module File
_generate_module_py(am_planning
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/am_planning
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(am_planning_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(am_planning_generate_messages am_planning_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathToPose.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_py _am_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PolygonsFromPolygon.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_py _am_planning_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/agneev/catkin_ws/src/hrp/am_planning/srv/PathFromPolygon.srv" NAME_WE)
add_dependencies(am_planning_generate_messages_py _am_planning_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(am_planning_genpy)
add_dependencies(am_planning_genpy am_planning_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS am_planning_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/am_planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/am_planning
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
add_dependencies(am_planning_generate_messages_cpp std_msgs_generate_messages_cpp)
add_dependencies(am_planning_generate_messages_cpp geometry_msgs_generate_messages_cpp)
add_dependencies(am_planning_generate_messages_cpp nav_msgs_generate_messages_cpp)
add_dependencies(am_planning_generate_messages_cpp am_planning_generate_messages_cpp)

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/am_planning)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/am_planning
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
add_dependencies(am_planning_generate_messages_lisp std_msgs_generate_messages_lisp)
add_dependencies(am_planning_generate_messages_lisp geometry_msgs_generate_messages_lisp)
add_dependencies(am_planning_generate_messages_lisp nav_msgs_generate_messages_lisp)
add_dependencies(am_planning_generate_messages_lisp am_planning_generate_messages_lisp)

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/am_planning)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/am_planning\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/am_planning
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
add_dependencies(am_planning_generate_messages_py std_msgs_generate_messages_py)
add_dependencies(am_planning_generate_messages_py geometry_msgs_generate_messages_py)
add_dependencies(am_planning_generate_messages_py nav_msgs_generate_messages_py)
add_dependencies(am_planning_generate_messages_py am_planning_generate_messages_py)
