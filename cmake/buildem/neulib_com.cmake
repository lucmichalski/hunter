#
# Install libneurolabi from source
#

macro(INSTALL_NEULIB libname config_args depends_args)
  CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

  include (ExternalProject)
  include (ExternalSource)
  include (BuildSupport)

  external_git_repo(libneurolabi
    HEAD
    $ENV{HOME}/Work/neulib/.git
    )

  message ("Installing ${libneurolabi_NAME} into FlyEM build area: ${BUILDEM_DIR} ...")
  message ("Configure args: ${config_args}")
  ExternalProject_Add(${libneurolabi_NAME}
    PREFIX              ${BUILDEM_DIR}
    DEPENDS             ${depends_args}
    GIT_REPOSITORY      ${libneurolabi_URL}
    GIT_TAG             ${libneurolabi_TAG}
    CONFIGURE_COMMAND   git checkout master
    BUILD_COMMAND       ${BUILDEM_ENV_STRING} ${libneurolabi_SRC_DIR}/neurolabi/update_library --release ${config_args}
    BUILD_IN_SOURCE     1
    INSTALL_COMMAND     ${BUILDEM_ENV_STRING} ${libneurolabi_SRC_DIR}/neurolabi/install_library ${BUILDEM_DIR} ${libname}
    )
endmacro(INSTALL_NEULIB)
