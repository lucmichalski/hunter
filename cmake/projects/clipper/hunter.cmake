# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    clipper
    VERSION
    "22.0.0-p0"
    URL
    "https://github.com/hunter-packages/clipper/archive/v22.0.0-p0.tar.gz"
    SHA1
    b7f4efcd1a914050a324b5f87bbfa6aa1801a00b
    )

#hunter_cmake_args(
#    clipper
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
hunter_cacheable(clipper)
hunter_download(PACKAGE_NAME clipper)
