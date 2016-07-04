# Tries to locate QHttp headers and libraries.
#
# Usage:
#
#     find_package(QHttp)
#
#     QHTTP_ROOT_DIR may be defined beforehand to hint at install location.
#
# Variables defined after calling:
#
#     QHTTP_FOUND       - whether a QHttp installation is located
#     QHTTP_INCLUDE_DIR - path to QHttp headers
#     QHTTP_LIBRARY     - path of QHttp library

MESSAGE(STATUS "Looking for QHttp Librairies...")

find_path(QHTTP_ROOT_DIR
    NAMES include/qhttp/qhttpserver.hpp
)

find_path(QHTTP_INCLUDE_DIR
    NAMES qhttp/qhttpserver.hpp
    HINTS ${QHTTP_ROOT_DIR}/include
)

find_library(QHTTP_LIBRARY
    NAMES qhttp
    HINTS ${QHTTP_ROOT_DIR}/lib
)

include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(qhttp DEFAULT_MSG
    QHTTP_INCLUDE_DIR
    QHTTP_LIBRARY
)

mark_as_advanced(
    QHTTP_ROOT_DIR
    QHTTP_INCLUDE_DIR
    QHTTP_LIBRARY
)