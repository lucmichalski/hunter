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
    nanomsg
    VERSION
    "1.0.0-p6"
    URL
    "https://github.com/ConfusedReality/nanomsg/archive/1.0.0-p6.tar.gz"
    SHA1
    0da2fcab0fa0f0cedd73b58081bbdffe47203fe8
    )

hunter_add_version(
    PACKAGE_NAME
    nanomsg
    VERSION
    "1.0.0-m1"
    URL
    "https://github.com/lucmichalski/nanomsg/archive/1.0.0-m1.tar.gz"
    SHA1
    50aef0b35a725008f000bc3e93872744108107ac
    )

hunter_add_version(
    PACKAGE_NAME
    nanomsg
    VERSION
    "1.0.0"
    URL
    "https://github.com/nanomsg/nanomsg/archive/1.0.0.tar.gz"
    SHA1
    57f90778a9bb7b95a7fd73910fd41894f3ee9cab
    )

hunter_add_version(
    PACKAGE_NAME
    nanomsg
    VERSION
    "develop"
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_messaging_nanomsg/archive/develop.tar.gz"
    SHA1
    fc15120053bf5cb223ca6ff32a451252d71426c9
)

hunter_cmake_args(
    nanomsg
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
hunter_cacheable(nanomsg)
hunter_download(PACKAGE_NAME nanomsg)
hunter_configuration_types(nanomsg CONFIGURATION_TYPES Release)