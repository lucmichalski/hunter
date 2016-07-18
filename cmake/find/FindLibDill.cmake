# Tries to locate libdill headers and libraries.
#
# Usage:
#
#     find_package(libdill)
#
#     LIBDILL_ROOT_DIR may be defined beforehand to hint at install location.
#
# Variables defined after calling:
#
#     LIBDILL_FOUND       - whether a libdill installation is located
#     LIBDILL_INCLUDE_DIR - path to libdill headers
#     LIBDILL_LIBRARY     - path of libdill library

MESSAGE(STATUS "Looking for libdill...")

find_path(LIBDILL_ROOT_DIR
    NAMES include/libdill.h
)

find_path(LIBDILL_INCLUDE_DIR
    NAMES libdill.h
    HINTS ${LIBDILL_ROOT_DIR}/include
)

find_library(LIBDILL_LIBRARY_SHARED NAMES libdill.dylib 
  PATHS /usr/local/lib
  DOC   "Path to libdill.dylib."
)

find_library(LIBDILL_LIBRARY_STATIC NAMES libdill.a
  PATHS /usr/local/lib
  DOC   "Path to libdill.a."
)

if(LIBDILL_INCLUDE_DIR AND LIBDILL_LIBRARY_SHARED AND LIBDILL_LIBRARY_STATIC)
  set(LIBDILL_FOUND true)
elseif(LIBMILL_INCLUDE_DIR AND LIBMILLLIBRARY_STATIC)
  set(LIBMILL_FOUND true)
else(LIBDILL_INCLUDE_DIR AND LIBDILL_LIBRARY_SHARED AND LIBDILL_LIBRARY_STATIC)
  set(LIBDILL_FOUND false)
endif(LIBDILL_INCLUDE_DIR AND LIBDILL_LIBRARY_SHARED AND LIBDILL_LIBRARY_STATIC)

if(LIBDILL_FOUND)
  add_definitions(-DLIBDILL)
  set(LIBDILL_LIBRARIES "${LIBDILL_LIBRARY_STATIC};${LIBDILL_LIBRARY_SHARED}")
  if(NOT LIBDILL_FIND_QUIETLY)
    message(STATUS "Looking for libdill... - found ${LIBDILL_LIBRARIES}")
  endif(NOT LIBDILL_FIND_QUIETLY)
else(LIBDILL_FOUND)
  if(NOT LIBDILL_FIND_QUIETLY)
    if(LIBDILL_FIND_REQUIRED)
      message(FATAL_ERROR "Looking for libdill... - Not found")
    else(LIBDILL_FIND_REQUIRED)
      message(STATUS "Looking for libdill... - Not found")
    endif(LIBDILL_FIND_REQUIRED)
  endif(NOT LIBDILL_FIND_QUIETLY)
endif(LIBDILL_FOUND)

mark_as_advanced(LIBDILL_INCLUDE_DIR LIBDILL_LIBRARIES LIBDILL_LIBRARY_SHARED LIBDILL_LIBRARY_STATIC)