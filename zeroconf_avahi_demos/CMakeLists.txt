##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(zeroconf_avahi_demos)

set(CMAKE_VERBOSE_MAKEFILE TRUE)

##############################################################################
# Catkin
##############################################################################

find_package(catkin REQUIRED COMPONENTS zeroconf_avahi)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} ${zeroconf_avahi_DIR})
find_package(Avahi REQUIRED)
catkin_package()
include_directories(SYSTEM include ${catkin_INCLUDE_DIRS} ${AVAHI_INCLUDE_DIR})

##############################################################################
# Project
##############################################################################

add_subdirectory(src)
add_subdirectory(scripts)

##############################################################################
# Installs
##############################################################################

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)
install(DIRECTORY param
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

