# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    GLEW
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/GLEW/archive/v1.0.0.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
    )

#hunter_cmake_args(
#    GLEW
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
hunter_cacheable(GLEW)
hunter_download(PACKAGE_NAME GLEW)
