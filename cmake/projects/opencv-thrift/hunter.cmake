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
    opencv-thrift
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_vision_opencv-thrift-670fdb9.tar.gz"
    SHA1
    b4889aeed221194cf7c2a1309201de00a59cb039
    )

hunter_add_version(
    PACKAGE_NAME
    opencv-thrift
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision_opencv-thrift/archive/0.0.1-p0.tar.gz"
    SHA1
    20ea56830039ae2c082711c73602c82cce6118d5
    )

hunter_cmake_args(
    opencv-thrift
    CMAKE_ARGS 
    BUILD_SHARED_LIBS=OFF
    opencv-thrift_TOOLS=OFF
    opencv-thrift_APP=OFF
    opencv-thrift_EXAMPLE=OFF
    opencv-thrift_DISABLE_DSYM=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(opencv-thrift)
hunter_download(PACKAGE_NAME opencv-thrift)
