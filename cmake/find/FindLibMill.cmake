# Tries to locate libmill headers and libraries.
#
# Usage:
#
#     find_package(libmill)
#
#     LIBMILL_ROOT_DIR may be defined beforehand to hint at install location.
#
# Variables defined after calling:
#
#     LIBMILL_FOUND       - whether a libmill installation is located
#     LIBMILL_INCLUDE_DIR - path to libmill headers
#     LIBMILL_LIBRARY     - path of libmill library

MESSAGE(STATUS "Looking for libmill...")

find_path(LIBMILL_ROOT_DIR
    NAMES include/libmill.h
)

find_path(LIBMILL_INCLUDE_DIR
    NAMES libmill.h
    HINTS ${LIBMILL_ROOT_DIR}/include
)

find_library(LIBMILL_LIBRARY_SHARED 
  NAMES libmill.dylib
  HINTS ${LIBMILL_ROOT_DIR}/lib
)

find_library(LIBMILL_LIBRARY_STATIC 
  NAMES libmill.a
  HINTS ${LIBMILL_ROOT_DIR}/lib
)

add_definitions(-DLIBMILL)

set(LIBMILL_LIBRARIES "${LIBMILL_LIBRARY_STATIC};${LIBMILL_LIBRARY_SHARED}")

include(FindPackageHandleStandardArgs)

find_package_handle_standard_args(libmill DEFAULT_MSG
    LIBMILL_INCLUDE_DIR
    LIBMILL_LIBRARIES
)

MESSAGE(STATUS "  LIBMILL_ROOT_DIR = ${LIBMILL_ROOT_DIR}")
MESSAGE(STATUS "  LIBMILL_INCLUDE_DIR = ${LIBMILL_INCLUDE_DIR}")
MESSAGE(STATUS "  LIBMILL_LIBRARY_STATIC = ${LIBMILL_LIBRARY_STATIC}")
MESSAGE(STATUS "  LIBMILL_LIBRARY_SHARED = ${LIBMILL_LIBRARY_SHARED}")

mark_as_advanced(
    LIBMILL_ROOT_DIR
    LIBMILL_INCLUDE_DIR
    LIBMILL_LIBRARIES
)

mark_as_advanced(LIBMILL_INCLUDE_DIR LIBMILL_LIBRARIES LIBMILL_LIBRARY_SHARED LIBMILL_LIBRARY_STATIC)