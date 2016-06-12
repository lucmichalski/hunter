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
    "1.12-m0"
    URL
    "https://github.com/lucmichalski/libmill/archive/1.12-m0.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
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
