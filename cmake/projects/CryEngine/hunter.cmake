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
    CryEngine
    VERSION
    "5.1.1-p1"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_cryengine/archive/5.1.1-p1.tar.gz"
    SHA1
    53a467434283d14986fb61f6d8b44ec7c323e9d6
    )


hunter_add_version(
    PACKAGE_NAME
    CryEngine
    VERSION
    "5.1.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_cryengine/archive/5.1.1-p0.tar.gz"
    SHA1
    53a467434283d14986fb61f6d8b44ec7c323e9d6
    )

hunter_add_version(
    PACKAGE_NAME
    CryEngine
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_game-engine_cryengine/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_cmake_args(
    CryEngine
    CMAKE_ARGS 
    OPTION_PROFILE=ON
    OPTION_UNITY_BUILD=OFF
    OPTION_ENABLE_BROFILER=OFF
    OPTION_ENABLE_SDK_OCULUS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(CryEngine)
hunter_download(PACKAGE_NAME CryEngine)
