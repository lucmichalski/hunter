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
    NanoMsg
    VERSION
    "1.0.0"
    URL
    "https://github.com/nanomsg/nanomsg/archive/1.0.0.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
    )

hunter_cmake_args(
    NanoMsg
    CMAKE_ARGS 
    NN_STATIC_LIB=ON
    NN_SHARED_LIB=OFF
    NN_ENABLE_DOC=OFF
    NN_ENABLE_GETADDRINFO_A=ON
    NN_TESTS=ON
    NN_TESTS=OFF
    NN_ENABLE_NANOCAT=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(NanoMsg)
hunter_download(PACKAGE_NAME NanoMsg)
