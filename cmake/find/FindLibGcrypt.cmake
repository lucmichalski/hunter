if( LIBGCRYPT_INCLUDE_DIR AND LIBGCRYPT_LIBRARY )
	# in cache already
	set(libgcrypt_FIND_QUIETLY TRUE)
endif( LIBGCRYPT_INCLUDE_DIR AND LIBGCRYPT_LIBRARY )

if( UNIX AND NOT( APPLE OR CYGWIN ) )
	find_package( PkgConfig QUIET )
	pkg_check_modules( PC_LIBGCRYPT QUIET libgcrypt )
	if( PC_LIBGCRYPT_FOUND )
		set( LIBGCRYPT_DEFINITIONS ${PC_LIBGCRYPT_CFLAGS} )
	endif( PC_LIBGCRYPT_FOUND )
endif( UNIX AND NOT( APPLE OR CYGWIN ) )

if( WIN32 )
	FIND_PROGRAM(LIBGCRYPTCONFIG_EXECUTABLE NAMES libgcrypt-config PATHS ${LIBGCRYPT_ROOT}/bin)
	IF(LIBGCRYPTCONFIG_EXECUTABLE)
		execute_process(COMMAND sh "${LIBGCRYPTCONFIG_EXECUTABLE}" --prefix OUTPUT_VARIABLE PREFIX)
		set(LIBGCRYPT_LIB_HINT "${PREFIX}/lib")
		set(LIBGCRYPT_INCLUDE_HINT "${PREFIX}/include")
	ENDIF(LIBGCRYPTCONFIG_EXECUTABLE)
endif( WIN32 )

set( LIBGCRYPT_ROOT "" CACHE STRING "Path to libgcrypt library" )

find_path(
	LIBGCRYPT_INCLUDE_DIR gcrypt.h
	HINTS
	${LIBGCRYPT_ROOT}/include
	${PC_LIBGCRYPT_INCLUDEDIR}
	${PC_LIBGCRYPT_INCLUDE_DIRS}
	${LIBGCRYPT_INCLUDE_HINT}
)

find_library(
	LIBGCRYPT_LIBRARY
	NAMES gcrypt libgcrypt gcrypt-11 libgcrypt-11
	HINTS 
	${PC_LIBGCRYPT_LIBDIR}
	${PC_LIBGCRYPT_LIBRARY_DIRS}
	${LIBGCRYPT_LIB_HINT}
	${LIBGCRYPT_ROOT}/lib
	${LIBGCRYPT_ROOT}/bin
)
include(FindPackageHandleStandardArgs)
find_package_handle_standard_args(
				LibGcrypt
				DEFAULT_MSG
				LIBGCRYPT_LIBRARY
				LIBGCRYPT_INCLUDE_DIR
)
if( LIBGCRYPT_FOUND )
	set( LIBGCRYPT_LIBRARIES ${LIBGCRYPT_LIBRARY} )
	set( LIBGCRYPT_INCLUDE_DIRS ${LIBGCRYPT_INCLUDE_DIR} )
endif( LIBGCRYPT_FOUND )
mark_as_advanced( LIBGCRYPT_INCLUDE_DIR LIBGCRYPT_LIBRARY )