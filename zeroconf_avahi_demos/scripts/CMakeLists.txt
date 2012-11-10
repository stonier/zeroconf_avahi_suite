###############################################################################
# Files
###############################################################################

#file(GLOB SCRIPTS RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *)

set(SCRIPTS
  add_collision
  add_concert
  add_concert_listener
  add_ros
  add_rosette
  add_ros_listener
  list_discovered_concert_services
  list_discovered_ros_services
  list_discovered_services
  list_published_concert_services
  list_published_ros_services
  list_published_services
)

###############################################################################
# Installs
###############################################################################

# For convenience
file(COPY ${SCRIPTS}
  DESTINATION ${CATKIN_DEVEL_PREFIX}/lib/${PROJECT_NAME}
)
install(PROGRAMS ${SCRIPTS}
   DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

