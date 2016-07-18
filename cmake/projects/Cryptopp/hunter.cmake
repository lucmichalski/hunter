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
    Cryptopp
    VERSION
    "5.6.3-p0"
    URL
    "https://github.com/ConfusedReality/pkg_security_cryptopp/archive/5.6.3-p0.tar.gz"
    SHA1
    26a7a84cf4b47545d50a71293efab6742bf9d888
    )

hunter_add_version(
    PACKAGE_NAME
    Cryptopp
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_security_cryptopp/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_cmake_args(
    Cryptopp
    CMAKE_ARGS 
    BUILD_STATIC=ON
    BUILD_SHARED=OFF
    BUILD_TESTING=OFF
    BUILD_DOCUMENTATION=OFF
    DISABLE_ASM=OFF
    DISABLE_SSSE3=OFF
    DISABLE_AESNI=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Cryptopp)
hunter_download(PACKAGE_NAME Cryptopp)
