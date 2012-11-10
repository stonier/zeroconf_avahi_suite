###############################################################################
# Executables
###############################################################################

add_executable(zeroconf zeroconf.cpp)
target_link_libraries(zeroconf zeroconf_avahi)

install(TARGETS zeroconf
   RUNTIME DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION}
)

