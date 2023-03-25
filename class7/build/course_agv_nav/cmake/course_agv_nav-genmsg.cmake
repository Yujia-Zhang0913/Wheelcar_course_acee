# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "course_agv_nav: 0 messages, 1 services")

set(MSG_I_FLAGS "-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(course_agv_nav_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv" NAME_WE)
add_custom_target(_course_agv_nav_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "course_agv_nav" "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(course_agv_nav
  "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/course_agv_nav
)

### Generating Module File
_generate_module_cpp(course_agv_nav
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/course_agv_nav
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(course_agv_nav_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(course_agv_nav_generate_messages course_agv_nav_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv" NAME_WE)
add_dependencies(course_agv_nav_generate_messages_cpp _course_agv_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(course_agv_nav_gencpp)
add_dependencies(course_agv_nav_gencpp course_agv_nav_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS course_agv_nav_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(course_agv_nav
  "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/course_agv_nav
)

### Generating Module File
_generate_module_eus(course_agv_nav
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/course_agv_nav
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(course_agv_nav_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(course_agv_nav_generate_messages course_agv_nav_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv" NAME_WE)
add_dependencies(course_agv_nav_generate_messages_eus _course_agv_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(course_agv_nav_geneus)
add_dependencies(course_agv_nav_geneus course_agv_nav_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS course_agv_nav_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(course_agv_nav
  "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/course_agv_nav
)

### Generating Module File
_generate_module_lisp(course_agv_nav
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/course_agv_nav
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(course_agv_nav_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(course_agv_nav_generate_messages course_agv_nav_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv" NAME_WE)
add_dependencies(course_agv_nav_generate_messages_lisp _course_agv_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(course_agv_nav_genlisp)
add_dependencies(course_agv_nav_genlisp course_agv_nav_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS course_agv_nav_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(course_agv_nav
  "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/course_agv_nav
)

### Generating Module File
_generate_module_nodejs(course_agv_nav
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/course_agv_nav
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(course_agv_nav_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(course_agv_nav_generate_messages course_agv_nav_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv" NAME_WE)
add_dependencies(course_agv_nav_generate_messages_nodejs _course_agv_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(course_agv_nav_gennodejs)
add_dependencies(course_agv_nav_gennodejs course_agv_nav_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS course_agv_nav_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(course_agv_nav
  "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/course_agv_nav
)

### Generating Module File
_generate_module_py(course_agv_nav
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/course_agv_nav
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(course_agv_nav_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(course_agv_nav_generate_messages course_agv_nav_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/gaga/wheel/class7/src/course_agv_nav/srv/Plan.srv" NAME_WE)
add_dependencies(course_agv_nav_generate_messages_py _course_agv_nav_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(course_agv_nav_genpy)
add_dependencies(course_agv_nav_genpy course_agv_nav_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS course_agv_nav_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/course_agv_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/course_agv_nav
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(course_agv_nav_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/course_agv_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/course_agv_nav
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(course_agv_nav_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/course_agv_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/course_agv_nav
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(course_agv_nav_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/course_agv_nav)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/course_agv_nav
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(course_agv_nav_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/course_agv_nav)
  install(CODE "execute_process(COMMAND \"/home/gaga/anaconda3/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/course_agv_nav\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/course_agv_nav
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(course_agv_nav_generate_messages_py std_msgs_generate_messages_py)
endif()
