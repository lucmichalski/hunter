# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_version(
    PACKAGE_NAME
    dlib-opencv
    VERSION
    "1.1-nonfree-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision_dlib-opencv/archive/v1.1-nonfree-p0.tar.gz"
    SHA1
    8cf63c6a3310e8c926ed432998ec0d53dbe272d8
)

hunter_cmake_args(
    dlib-opencv
    CMAKE_ARGS 
    BUILD_DUtils=ON
    BUILD_DUtilsCV=OFF
    BUILD_DVision=OFF
)


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(dlib-opencv)
hunter_download(PACKAGE_NAME dlib-opencv)
hunter_configuration_types(dlib-opencv CONFIGURATION_TYPES Release)
