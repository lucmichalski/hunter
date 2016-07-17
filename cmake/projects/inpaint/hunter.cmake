# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

# Dependencies
hunter_add_package(OpenCV)

hunter_add_version(
    PACKAGE_NAME
    inpaint
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision_inpaint/archive/0.0.1-p0.tar.gz"
    SHA1
    "88ec225f9fb29729ed3a34f2e18b2eade3511bdf"
)

hunter_cmake_args(
    inpaint
    CMAKE_ARGS
    BUILD_STATIC=ON
    BUILD_TESTING=OFF
    BUILD_EXAMPLES=OFF
)

hunter_cacheable(inpaint)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME inpaint
                PACKAGE_DEPENDS_ON OpenCV)

