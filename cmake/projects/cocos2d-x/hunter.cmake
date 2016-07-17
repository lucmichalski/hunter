# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_package(Zlib) # Zlib
hunter_add_package(flatbuffers) # flatbuffers
hunter_add_package(Recast) # recast
hunter_add_package(PNG) # PNG
hunter_add_package(TIFF) # TIFF
hunter_add_package(libogg) # libogg
hunter_add_package(minizip) # minizip
hunter_add_package(CURL) # Curl
hunter_add_package(Chipmunk2D) # Chipmunk
#hunter_add_package(ObjectAL) # ObjectAL

# For hunterization purpose only
# Be careful with the local tarball approach and the real version of your package
hunter_add_version(
    PACKAGE_NAME
    cocos2d-x
    VERSION
    0.1-develop
    URL
    "http://localhost:1979/staging/pkg_game-engine_cocos2d-x-27ba253.tar.gz"
    SHA1
    f265c6306e0fa2c1a249115dec050d38e5b2854d
)

hunter_add_version(
    PACKAGE_NAME
    cocos2d-x
    VERSION
    "3.12-p0"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_cocos2d-x/archive/3.12-p0.tar.gz"
    SHA1
    67d4fd859b5e585de0781310804ce002b02687a3
)

hunter_add_version(
    PACKAGE_NAME
    cocos2d-x
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/pkg_game-engine_cocos2d-x/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_cmake_args(
    cocos2d-x
    CMAKE_ARGS 
    BUILD_CPP_TESTS=OFF
    BUILD_LUA_LIBS=OFF
    BUILD_JS_LIBS=OFF
    BUILD_SHARED_LIBS=OFF
)


hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(cocos2d-x)
hunter_download(
    PACKAGE_NAME cocos2d-x
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON Zlib flatbuffers Recast TIFF PNG libogg minizip CURL Chipmunk2D 
)
hunter_configuration_types(cocos2d-x CONFIGURATION_TYPES Release)