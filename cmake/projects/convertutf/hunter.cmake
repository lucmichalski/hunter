# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    convertutf
    VERSION
    "1.0.1"
    URL
    "https://github.com/hunter-packages/convertutf/archive/v1.0.1.tar.gz"
    SHA1
    83c1f454b3d6789d5048e1198577092f1a77c7a2
)

hunter_add_version(
    PACKAGE_NAME
    convertutf
    VERSION
    "1.0.0"
    URL
    "https://github.com/hunter-packages/convertutf/archive/v1.0.0.tar.gz"
    SHA1
    757b75fff721260620050bc54096150ffd335672
    )

#hunter_cmake_args(
#    convertutf
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
hunter_cacheable(convertutf)
hunter_download(PACKAGE_NAME convertutf)
