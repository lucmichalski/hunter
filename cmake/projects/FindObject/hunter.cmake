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
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_vision_findobject-670fdb9.tar.gz"
    SHA1
    b4889aeed221194cf7c2a1309201de00a59cb039
    )

hunter_add_version(
    PACKAGE_NAME
    FindObject
    VERSION
    "0.6.3-p16"
    URL
    "https://github.com/ConfusedReality/pkg_vision_findobject/archive/0.6.3-p16.tar.gz"
    SHA1
    20ea56830039ae2c082711c73602c82cce6118d5
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
