MESSAGE(STATUS "Looking for GBC Compiler for Microsoft Bond...")

find_program(GBC_EXECUTABLE
  NAMES gbc
  HINTS /usr/bin
  		/usr/local/bin/)

find_program(GBC_COMPILER
    NAMES
        gbc
    HINTS
        /usr/local/bin
        /usr/sbin
        /usr/bin
        /usr/local
        /opt/local
    PATH_SUFFIXES
        bin bin64
)

if(GBC_COMPILER)
  execute_process(COMMAND ${GBC_COMPILER} "--version" OUTPUT_VARIABLE GBC_VERSION OUTPUT_STRIP_TRAILING_WHITESPACE)
else()
  MESSAGE(STATUS "GBC was not found...")
endif()

include(FindPackageHandleStandardArgs)
FIND_PACKAGE_HANDLE_STANDARD_ARGS(gbc DEFAULT_MSG GBC_COMPILER)

mark_as_advanced(GBC_COMPILER GBC_VERSION)