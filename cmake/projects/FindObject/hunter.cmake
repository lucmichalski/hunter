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
    FindObject
    VERSION
    "0.6.3-p14"
    URL
    "https://github.com/ConfusedReality/pkg_vision_findobject/archive/0.6.3-p14.tar.gz"
    SHA1
    5e45f2e5a41ce27b42dc624332f4b1354f49a786
    )

hunter_cmake_args(
    FindObject
    CMAKE_ARGS 
    BUILD_SHARED_LIBS=OFF
    FINDOBJECT_TOOLS=OFF
    FINDOBJECT_APP=OFF
    FINDOBJECT_EXAMPLE=OFF
    FINDOBJECT_DISABLE_DSYM=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(FindObject)
hunter_download(PACKAGE_NAME FindObject)
