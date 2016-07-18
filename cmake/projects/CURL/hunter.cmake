# Copyright (c) 2015, David Hirvonen, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules



include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)


hunter_add_package(OpenSSL)
hunter_add_package(ZLIB)
hunter_add_package(LibSSH2)
# List of versions here...

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    "7.49.1-v3"
    URL
    "https://github.com/hunter-packages/curl/archive/hunter-7.49.1-v3.tar.gz"
    SHA1
    9905952494867076fd136a7ee9fce482d80c451c
)

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    "7.49.1-p6"
    URL
    "https://github.com/ConfusedReality/pkg_network_curl/archive/v7.49.1-p6.tar.gz"
    SHA1
    fd72a153ca60fe85b57a2ac4eadedcfb38c3066d
)

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    "7.49.1-DEV"
    URL
    "https://github.com/hunter-packages/curl/archive/hunter-7.49.1-v0.zip"
    SHA1
    fd72a153ca60fe85b57a2ac4eadedcfb38c3066d
)

hunter_add_version(
    PACKAGE_NAME
    cocos2d-x
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_game-engine_cocos2d-x/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

if(BUILD_SHARED_LIBS)
    SET(BUILD_CURL_STATIC OFF)
else()
    SET(BUILD_CURL_STATIC ON)
endif()


hunter_cmake_args(
    CURL
    CMAKE_ARGS
        BUILD_CURL_TESTS=OFF
        BUILD_CURL_EXE=OFF
        CMAKE_USE_OPENSSL=ON
        CMAKE_USE_LIBSSH2=ON
        ENABLE_THREADED_RESOLVER=ON
        ENABLE_SHARED=OFF
        DARWINSSL_ENABLED=ON
        CURL_DISABLE_VERBOSE_STRINGS=OFF
        ENABLE_IPV6=ON
        CURL_STATICLIB=${BUILD_CURL_STATIC}
 )



# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(CURL)
hunter_download(PACKAGE_NAME CURL
PACKAGE_DEPENDS_ON OpenSSL ZLIB LibSSH2)
