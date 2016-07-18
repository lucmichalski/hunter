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
    cpp-restify
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_network_cpp-restify/archive/0.0.1-p0.tar.gz"
    SHA1
    80402947928caa5a5e9415b444c2e0135dbf9d4a
    )

hunter_add_version(
    PACKAGE_NAME
    cpp-restify
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_network_cpp-restify/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_cmake_args(
    cpp-restify
    CMAKE_ARGS 
    CPPRESTIFY_WITH_CURL=OFF
    CPPRESTIFY_SHARED=OFF
    CPPRESTIFY_CXX_STANDARD_14=OFF
    CPPRESTIFY_WITH_MONGOOSE=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cpp-restify)
hunter_download(PACKAGE_NAME cpp-restify)
