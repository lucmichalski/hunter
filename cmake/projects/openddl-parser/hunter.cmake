# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    openddl-parser
    VERSION
    "0.3.0-beta"
    URL
    "https://github.com/kimkulling/openddl-parser/archive/v0.3.0-beta.tar.gz"
    SHA1
    850bdae59dd6e668b4911b2f54e82567548d8b39
    )

#hunter_cmake_args(
#    openddl-parser
#    CMAKE_ARGS 
#	WITH_STATIC_LIB=ON
#	WITH_SHARED_LIB=OFF
#    BUILD_TESTING=OFF
#    BUILD_COMPILER=OFF
#	BUILD_CPP=ON
#	BUILD_C_GLIB=OFF
#	BUILD_JAVA=OFF
#	BUILD_PYTHON=OFF
#	BUILD_HASKELL=OFF
#	BUILD_LIBRARIES=ON
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(openddl-parser)
hunter_download(PACKAGE_NAME openddl-parser)
