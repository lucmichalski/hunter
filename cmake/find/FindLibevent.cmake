# find LibEvent
# an event notification library (http://libevent.org/)
#
# Usage: 
# LIBEVENT_INCLUDE_DIRS, where to find LibEvent headers
# LIBEVENT_LIBRARIES, LibEvent libraries
# Libevent_FOUND, If false, do not try to use libevent

MESSAGE(STATUS "Looking for LibEvent...")

set(LibEvent_EXTRA_PREFIXES /usr/local /opt/local "$ENV{HOME}")
foreach(prefix ${LibEvent_EXTRA_PREFIXES})
  list(APPEND LibEvent_INCLUDE_PATHS "${prefix}/include")
  list(APPEND LibEvent_LIBRARIES_PATHS "${prefix}/lib")
endforeach()

find_path(LIBEVENT_INCLUDE_DIRS event.h PATHS ${LibEvent_INCLUDE_PATHS})
find_library(LIBEVENT_LIBRARIES NAMES event PATHS ${LibEvent_LIBRARIES_PATHS})

if (LIBEVENT_LIBRARIES AND LIBEVENT_INCLUDE_DIRS)
  set(Libevent_FOUND TRUE)
  set(LIBEVENT_LIBRARIES ${LIBEVENT_LIBRARIES})
else ()
  set(Libevent_FOUND FALSE)
endif ()

if (Libevent_FOUND)
  if (NOT Libevent_FIND_QUIETLY)
    message(STATUS "Found libevent: ${LIBEVENT_LIBRARIES}")
  endif ()
else ()
  if (LibEvent_FIND_REQUIRED)
    message(FATAL_ERROR "Could NOT find libevent.")
  endif ()
  message(STATUS "libevent NOT found.")
endif ()

mark_as_advanced(
    LIBEVENT_LIBRARIES
    LIBEVENT_INCLUDE_DIRS
  )