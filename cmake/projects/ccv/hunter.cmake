# Copyright (c) 2015, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)


hunter_add_version(
    PACKAGE_NAME
    ccv
    VERSION
    "0.7-p7"
     URL
     "https://github.com/ConfusedReality/pkg_vision_ccv/archive/0.7-p7.tar.gz"
     SHA1
     6fdcc8fe0e31a169a3fb26df7c694873208ccc44
)

hunter_add_version(
    PACKAGE_NAME
    ccv
    VERSION
    "0.7-p6"
     URL
     "https://github.com/hunter-packages/ccv/archive/v0.7-p6.tar.gz"
     SHA1
     6fdcc8fe0e31a169a3fb26df7c694873208ccc44
)

hunter_add_version(
    PACKAGE_NAME
    ccv
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_vision_ccv/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_cmake_args(
    ccv
    CMAKE_ARGS 
    CCV_STATIC_LIB=ON
    CCV_SHARED_LIB=OFF
    CCV_BUILD_EXAMPLES=OFF
    CCV_BUILD_BINARIES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(ccv)
hunter_download(PACKAGE_NAME ccv)