# Find Avahi. 
#
# Once done this will define
#  AVAHI_FOUND - System has Avahi
#  AVAHI_INCLUDE_DIRS - The Avahi include directories
#  AVAHI_LIBRARIES - The libraries needed to use avahi 
#
# It uses as hints for searches:
#  AVAHI_LIBDIR
#  AVAHI_LIBRARY_DIRS

find_path(AVAHI_INCLUDE_DIR avahi-common/defs.h)
find_library(AVAHI_CLIENT_LIBRARY
                  NAMES avahi-client
                  HINT ${AVAHI_LIBDIR} ${AVAHI_LIBRARY_DIRS})
find_library(AVAHI_COMMON_LIBRARY
                  NAMES avahi-common
                  HINT ${AVAHI_LIBDIR} ${AVAHI_LIBRARY_DIRS})
set(AVAHI_LIBRARIES ${AVAHI_CLIENT_LIBRARY} ${AVAHI_COMMON_LIBRARY})
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(Avahi DEFAULT_MSG
				  AVAHI_CLIENT_LIBRARY
				  AVAHI_COMMON_LIBRARY
                                  AVAHI_INCLUDE_DIR)
mark_as_advanced(AVAHI_INCLUDE_DIR AVAHI_CLIENT_LIBRARY AVAHI_COMMON_LIBRARY)


