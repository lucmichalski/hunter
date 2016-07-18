# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

# Dependencies
hunter_add_package(OpenCV)
hunter_add_package(Eigen)

hunter_add_version(
    PACKAGE_NAME
    superviseddescent
    VERSION
    "0.4.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_machine-learning_superviseddescent/archive/v0.4.1-p0.tar.gz"
    SHA1
    "aa7524bae51f286a4f2b2c22434c1cbab71ff530"
)


hunter_add_version(
    PACKAGE_NAME
    superviseddescent
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_machine-learning_superviseddescent/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)  

hunter_cmake_args(
    superviseddescent
    CMAKE_ARGS
    BUILD_APPS=ON
    BUILD_TESTS=OFF
    BUILD_EXAMPLES=OFF
    BUILD_TESTS=OFF
    BUILD_DOCUMENTATION=OFF
)

#hunter_cacheable(superviseddescent)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME superviseddescent
                PACKAGE_DEPENDS_ON OpenCV Eigen)

