# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

# Dependencies
hunter_add_package(OpenCV)
hunter_add_package(dlib)

hunter_add_version(
    PACKAGE_NAME
    dlib-opencv
    VERSION
    "1.1-nonfree-p6"
    URL
    "https://github.com/ConfusedReality/pkg_vision_dlib-opencv/archive/v1.1-nonfree-p6.tar.gz"
    SHA1
    5498379bcb6e1760d36416c1a7f76789e089aae2
)

hunter_cmake_args(
    dlib-opencv
    CMAKE_ARGS 
    BUILD_DUtils=ON
    BUILD_DUtilsCV=ON
    BUILD_DVision=ON
)


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(dlib-opencv)
hunter_download(PACKAGE_NAME dlib-opencv)
#hunter_configuration_types(dlib-opencv CONFIGURATION_TYPES Release)
hunter_download(PACKAGE_NAME dlib-opencv
               PACKAGE_DEPENDS_ON OpenCV dlib)
