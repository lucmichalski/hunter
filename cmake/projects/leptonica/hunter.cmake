# Copyright (c) 2015, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    leptonica
    VERSION
    "1.73"
     URL
     "https://github.com/hunter-packages/leptonica/archive/v1.73.tar.gz"
     SHA1
     890df98d9450b83a7f01f347e4445e0508b8d5fa
)

hunter_cmake_args(
    leptonica
    CMAKE_ARGS 
    CCV_STATIC_LIB=ON
    CCV_SHARED_LIB=OFF
    CCV_BUILD_EXAMPLES=OFF
    CCV_BUILD_BINARIES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
#hunter_cacheable(leptonica)
hunter_download(PACKAGE_NAME leptonica)