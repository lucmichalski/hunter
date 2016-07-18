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
    Mill
    VERSION
    "1.13-p9"
    URL
    "https://github.com/ConfusedReality/pkg_concurrency_mill/archive/1.13-p9.tar.gz"
    SHA1
    fe2a859e09a02299d222828a9f8a5700091a188c
    )

hunter_add_version(
    PACKAGE_NAME
    Mill
    VERSION
    develop3
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_concurrency_mill/archive/develop.tar.gz"
    SHA1
    149644abb96cd660742e973a4976b6c9b5dc6d05
)

hunter_cmake_args(
    Mill
    CMAKE_ARGS 
    MILL_STATIC_LIB=ON
    MILL_SHARED_LIB=OFF
    MILL_PERFS=OFF
    MILL_TESTS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Mill)
hunter_download(PACKAGE_NAME Mill)
hunter_configuration_types(Mill CONFIGURATION_TYPES Release)


