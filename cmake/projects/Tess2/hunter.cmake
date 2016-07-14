# Copyright (c) 2016, Luc Michalski, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_download)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)

hunter_add_version(
    PACKAGE_NAME
    Tess2
    VERSION
    "1.0.2"
    URL
    "https://github.com/lucmichalski/libtess2/archive/v1.0.2.tar.gz"
    SHA1
    600924f20ec4f0d89c72b17bc16bc8ed281f7329
)

hunter_add_version(
    PACKAGE_NAME
    Tess2
    VERSION
    "1.0.1-p7"
    URL
    "https://github.com/lucmichalski/libtess2/archive/v1.0.1-p7.tar.gz"
    SHA1
    5fbf30b486edba72987da87956b5fd5d96a0e8e8
)

hunter_cmake_args(
    Tess2
    CMAKE_ARGS 
	BUILD_TESTS=OFF
	BUILD_SHARED_LIBRARIES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_cacheable(Tess2)
hunter_download(
    PACKAGE_NAME Tess2
)
