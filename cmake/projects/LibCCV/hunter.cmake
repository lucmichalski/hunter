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
    LibCCV
    VERSION
    "0.1-m0"
    URL
    "https://github.com/lucmichalski/ccv/archive/0.1-m0.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
    )

hunter_cmake_args(
    LibCCV
    CMAKE_ARGS 
    CCV_STATIC_LIB=ON
    CCV_SHARED_LIB=OFF
    CCV_BUILD_EXAMPLES=OFF
    CCV_BUILD_BINARIES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(LibCCV)
hunter_download(PACKAGE_NAME LibCCV)