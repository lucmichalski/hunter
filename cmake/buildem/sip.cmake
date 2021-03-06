#
# Install sip libraries from source
#

if (NOT sip_NAME)

CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

include (ExternalProject)
include (ExternalSource)
include (BuildSupport)
#include (PatchSupport)

include (python)

external_source (sip
    4.15.4
    sip-4.15.4.tar.gz
    1d5c9e92bc7fca5ac11e088a4cf6c83d    
    http://hivelocity.dl.sourceforge.net/project/pyqt/sip/sip-4.15.4)

message ("Installing ${sip_NAME} into FlyEM build area: ${BUILDEM_DIR} ...")

if (${CMAKE_SYSTEM_NAME} MATCHES "Darwin")
    set (EXTRA_SIP_CONFIG_FLAGS
        --arch=x86_64 )
endif()

ExternalProject_Add(${sip_NAME}
    DEPENDS             ${python_NAME}             
    PREFIX              ${BUILDEM_DIR}
    URL                 ${sip_URL}
    URL_MD5             ${sip_MD5}
    UPDATE_COMMAND      ""
    PATCH_COMMAND       ""
    LIST_SEPARATOR      ^^
    CONFIGURE_COMMAND   ${BUILDEM_ENV_STRING} ${PYTHON_EXE} ${sip_SRC_DIR}/configure.py 
        ${EXTRA_SIP_CONFIG_FLAGS}
        #-b ${PYTHON_PREFIX}/bin
        #-d ${PYTHON_PREFIX}/lib/python2.7/site-packages
        #-e ${PYTHON_PREFIX}/include/python2.7
        #-v ${PYTHON_PREFIX}/share/sip
        
    BUILD_COMMAND       ${BUILDEM_ENV_STRING} $(MAKE)
    INSTALL_COMMAND     ${BUILDEM_ENV_STRING} $(MAKE) install
    BUILD_IN_SOURCE     1
)

set_target_properties(${sip_NAME} PROPERTIES EXCLUDE_FROM_ALL ON)

endif (NOT sip_NAME)
