# Tries to locate sox headers and libraries.
#
# Usage:
#
#     find_package(sox)
#
#     SOX_ROOT_DIR may be defined beforehand to hint at install location.
#
# Variables defined after calling:
#
#     SOX_FOUND       - whether a sox installation is located
#     SOX_INCLUDE_DIR - path to sox headers
#     SOX_LIBRARY     - path of sox library

find_path(SOX_ROOT_DIR
    NAMES include/sox.h
)

find_path(SOX_INCLUDE_DIR
    NAMES sox.h
    HINTS ${SOX_ROOT_DIR}/include
)

find_library(SOX_LIBRARY
    NAMES sox
    HINTS ${SOX_ROOT_DIR}/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(sox DEFAULT_MSG
    SOX_INCLUDE_DIR
    SOX_LIBRARY
)

mark_as_advanced(
    SOX_ROOT_DIR
    SOX_INCLUDE_DIR
    SOX_LIBRARY
)