# Copyright (c) 2016, Ruslan Baratov, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    "1.3.0-p0"
    URL
    "https://github.com/lucmichalski/flatbuffers/archive/v1.3.0-p0.tar.gz"
    SHA1
    77f1fc72ab136e9407bd63e2fa7bdcc1a9763e21
    )

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    "1.3.0-p2"
    URL
    "https://github.com/headupinclouds/flatbuffers/archive/v1.3.0-p2.tar.gz"
    SHA1
    aa2e5f32a80903ee2454fb7c511059948adcf212
    )

hunter_cmake_args(
    flatbuffers
    CMAKE_ARGS 
    FLATBUFFERS_CODE_COVERAGE=OFF
    FLATBUFFERS_BUILD_TESTS=OFF
    FLATBUFFERS_INSTALL=OFF
    FLATBUFFERS_BUILD_FLATLIB=ON
    FLATBUFFERS_BUILD_FLATC=OFF
    FLATBUFFERS_BUILD_FLATHASH=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(flatbuffers)
hunter_download(PACKAGE_NAME flatbuffers)