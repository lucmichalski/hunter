# Tries to locate Served headers and libraries.
# https://github.com/datasift/served
# Usage:
#
#     find_package(Served)
#
#     SERVED_ROOT_DIR may be defined beforehand to hint at install location.
#
# Variables defined after calling:
#
#     SERVED_FOUND       - whether a Served installation is located
#     SERVED_INCLUDE_DIR - path to Served headers
#     SERVED_LIBRARY     - path of Served library

MESSAGE(STATUS "Looking for Served Librairies...")

find_path(SERVED_ROOT_DIR
    NAMES include/served/served.hpp
)

find_path(SERVED_INCLUDE_DIR
    NAMES served/served.hpp
    HINTS ${SERVED_ROOT_DIR}/include
)

find_library(SERVED_LIBRARY
    NAMES served
    HINTS ${SERVED_ROOT_DIR}/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(served DEFAULT_MSG
    SERVED_INCLUDE_DIR
    SERVED_LIBRARY
)

mark_as_advanced(
    SERVED_ROOT_DIR
    SERVED_INCLUDE_DIR
    SERVED_LIBRARY
)