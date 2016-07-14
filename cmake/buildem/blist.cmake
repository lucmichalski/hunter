#
# Install blist library from source
#

if (NOT blist_NAME)

CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include (ExternalProject)
include (ExternalSource)
include (BuildSupport)

include (python)

external_source (blist
    1.3.4
    blist-1.3.4.tar.gz
    02e8bf33cffec9cc802f4567f39ffa6f
    http://pypi.python.org/packages/source/b/blist)

message ("Installing ${blist_NAME} into FlyEM build area: ${BUILDEM_DIR} ...")
ExternalProject_Add(${blist_NAME}
    DEPENDS             ${python_NAME}
    PREFIX              ${BUILDEM_DIR}
    URL                 ${blist_URL}
    URL_MD5             ${blist_MD5}
    UPDATE_COMMAND      ""
    PATCH_COMMAND       ""
    CONFIGURE_COMMAND   ""
    BUILD_COMMAND       ${BUILDEM_ENV_STRING} ${PYTHON_EXE} setup.py install
    BUILD_IN_SOURCE     1
    TEST_COMMAND        ${BUILDEM_ENV_STRING} ${PYTHON_EXE} setup.py test
    INSTALL_COMMAND     ""
)

set_target_properties(${blist_NAME} PROPERTIES EXCLUDE_FROM_ALL ON)

endif (NOT blist_NAME)
