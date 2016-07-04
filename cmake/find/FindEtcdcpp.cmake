# Tries to locate etcdcpp headers and libraries.
#
# Usage:
#
#     find_package(etcdcpp)
#
#     ETCDCPP_ROOT_DIR may be defined beforehand to hint at install location.
#
# Variables defined after calling:
#
#     ETCDCPP_FOUND       - whether a etcdcpp installation is located
#     ETCDCPP_INCLUDE_DIR - path to etcdcpp headers
#     ETCDCPP_LIBRARY     - path of etcdcpp library

MESSAGE(STATUS "Looking for etcdcpp...")

find_path(ETCDCPP_ROOT_DIR
    NAMES include/etcdcpp/etcdcpp.h
)

find_path(ETCDCPP_INCLUDE_DIR
    NAMES etcdcpp/etcdcpp.h
    HINTS ${ETCDCPP_ROOT_DIR}/include
)

find_library(ETCDCPP_LIBRARY
    NAMES etcdcpp
    HINTS ${ETCDCPP_ROOT_DIR}/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(etcdcpp DEFAULT_MSG
    ETCDCPP_INCLUDE_DIR
    ETCDCPP_LIBRARY
)

mark_as_advanced(
    ETCDCPP_ROOT_DIR
    ETCDCPP_INCLUDE_DIR
    ETCDCPP_LIBRARY
)