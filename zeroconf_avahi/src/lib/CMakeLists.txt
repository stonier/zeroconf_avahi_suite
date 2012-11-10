###############################################################################
# Sources
###############################################################################

file(GLOB SOURCES RELATIVE ${CMAKE_CURRENT_SOURCE_DIR} *.cpp)

###############################################################################
# Library
###############################################################################

add_library(zeroconf_avahi ${SOURCES})
target_link_libraries(zeroconf_avahi ${catkin_LIBRARIES} ${Boost_LIBRARIES} ${AVAHI_LIBRARIES})

install(TARGETS zeroconf_avahi
   ARCHIVE DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
   LIBRARY DESTINATION ${CATKIN_PACKAGE_LIB_DESTINATION}
)

