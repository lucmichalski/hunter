# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    LibMill
    VERSION
    "1.12-m2"
    URL
    "https://github.com/lucmichalski/libmill/archive/1.12-m2.tar.gz"
    SHA1
    c9c607caef6ec8bcc5e6c9fe804f16d264278549
    )


hunter_cmake_args(
    LibMill
    CMAKE_ARGS 
    MILL_STATIC_LIB=ON
    MILL_SHARED_LIB=OFF
    MILL_PERFS=OFF
    MILL_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(LibMill)
hunter_download(PACKAGE_NAME LibMill)
