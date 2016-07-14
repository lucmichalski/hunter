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
    ogles_gpgpu
    VERSION
    "1.0.0-p1"
    URL
    "https://github.com/ConfusedReality/pkg_ogles_gpgpu/archive/1.0.0-p1.tar.gz"
    SHA1
    218ad65ac5ebee897fa192634c9f2d0d2ba2df51
    )

hunter_add_version(
    PACKAGE_NAME
    ogles_gpgpu
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_ogles_gpgpu/archive/1.0.0-p0.tar.gz"
    SHA1
    218ad65ac5ebee897fa192634c9f2d0d2ba2df51
    )

hunter_cmake_args(
    ogles_gpgpu
    CMAKE_ARGS 
    BUILD_SHARED_LIBS=OFF
    OGLES_GPGPU_BUILD_EXAMPLES=OFF
    OGLES_GPGPU_INSTALL=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(ogles_gpgpu)
hunter_download(PACKAGE_NAME ogles_gpgpu)
