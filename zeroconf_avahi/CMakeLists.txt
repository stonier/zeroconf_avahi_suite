##############################################################################
# CMake
##############################################################################

cmake_minimum_required(VERSION 2.8.3)
project(zeroconf_avahi)

set(CMAKE_VERBOSE_MAKEFILE TRUE)
set(CMAKE_MODULE_PATH ${CMAKE_MODULE_PATH} "${CMAKE_CURRENT_SOURCE_DIR}/cmake")

##############################################################################
# Catkin
##############################################################################

find_package(catkin REQUIRED COMPONENTS roscpp rosconsole zeroconf_msgs)
find_package(Boost REQUIRED COMPONENTS thread)
find_package(Avahi REQUIRED)
catkin_package(
  INCLUDE_DIRS include
  LIBRARIES ${PROJECT_NAME}
  CATKIN_DEPENDS rosconsole roscpp zeroconf_msgs 
  DEPENDS Boost
)
include_directories(SYSTEM include ${catkin_INCLUDE_DIRS} ${Boost_INCLUDES} ${AVAHI_INCLUDE_DIR})

##############################################################################
# Project
##############################################################################

add_subdirectory(src)
add_subdirectory(cmake)

##############################################################################
# Installs
##############################################################################

install(DIRECTORY include/${PROJECT_NAME}/
   DESTINATION ${CATKIN_PACKAGE_INCLUDE_DESTINATION}
   FILES_MATCHING PATTERN "*.hpp"
   PATTERN ".svn" EXCLUDE)

install(DIRECTORY launch
        DESTINATION ${CATKIN_PACKAGE_SHARE_DESTINATION}
)

