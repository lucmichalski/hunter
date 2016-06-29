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
    irrXML
    VERSION
    "1.2"
    URL
    "https://github.com/hunter-packages/irrXML/archive/1.2.tar.gz"
    SHA1
    726c1461d51fda1908b4050603682de680925b44
    )

#hunter_cmake_args(
#    irrXML
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
hunter_cacheable(irrXML)
hunter_download(PACKAGE_NAME irrXML)
