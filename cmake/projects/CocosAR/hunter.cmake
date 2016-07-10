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
    CocosAR
    VERSION
    "0.0.1-p1"
    URL
    "https://github.com/ConfusedReality/pkg_augmentedreality_CocosAR/archive/0.0.1-p1.tar.gz"
    SHA1
    faee75dc68d80f3f30ebccd4393720b61c08796d
)

hunter_cmake_args(
    CocosAR
    CMAKE_ARGS 
    BUILD_CPP_TESTS=OFF
    BUILD_LUA_LIBS=OFF
    BUILD_JS_LIBS=OFF
    BUILD_SHARED_LIBS=OFF
)


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(CocosAR)
hunter_download(PACKAGE_NAME CocosAR)
hunter_configuration_types(CocosAR CONFIGURATION_TYPES Release)
