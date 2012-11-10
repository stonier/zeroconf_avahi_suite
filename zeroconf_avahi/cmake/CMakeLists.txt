##############################################################################
# Installs
##############################################################################

# For convenience
file(COPY FindAvahi.cmake
  DESTINATION ${CATKIN_DEVEL_PREFIX}/share/${PROJECT_NAME}/cmake
)

install(FILES FindAvahi.cmake
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}/cmake
)

