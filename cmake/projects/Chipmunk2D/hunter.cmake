# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    Chipmunk2D
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_game-engine_Chipmunk2D-db0b533.tar.gz"
    SHA1
    78bb70a62de70a406e52ae3cd303911b66a917dc
    )

hunter_add_version(
    PACKAGE_NAME
    Chipmunk2D
    VERSION
    "3.1.2-p0"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_Chipmunk2D/archive/7.0.1-p0.tar.gz"
    SHA1
    240af314702a3f6562d0368dfba0cb98f1994a63
)

hunter_add_version(
    PACKAGE_NAME
    Chipmunk2D
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_game-engine_Chipmunk2D/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_cmake_args(
    Chipmunk2D
    CMAKE_ARGS 
    BUILD_DEMOS=OFF
    INSTALL_DEMOS=OFF
    BUILD_SHARED=OFF
    BUILD_STATIC=ON
    INSTALL_STATIC=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

#hunter_cacheable(Chipmunk2D)

hunter_download(PACKAGE_NAME Chipmunk2D)

