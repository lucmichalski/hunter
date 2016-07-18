# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_package(Zlib) # Zlib
hunter_add_package(flatbuffers) # flatbuffers
hunter_add_package(Recast) # recast
hunter_add_package(poly2tri) # poly2tri
hunter_add_package(PNG) # PNG
hunter_add_package(TIFF) # TIFF
hunter_add_package(SDL2) # SDL2
hunter_add_package(StanHull) # StanHull
hunter_add_package(libogg) # libogg
hunter_add_package(minizip) # minizip
hunter_add_package(Curl) # Curl

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    CocosAR
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_augmentedreality_CocosAR-db0b533.tar.gz"
    SHA1
    78bb70a62de70a406e52ae3cd303911b66a917dc
    )

hunter_add_version(
    PACKAGE_NAME
    CocosAR
    VERSION
    "0.0.1-p2"
    URL
    "https://github.com/ConfusedReality/pkg_augmentedreality_CocosAR/archive/0.0.1-p2.tar.gz"
    SHA1
    67d4fd859b5e585de0781310804ce002b02687a3
)

hunter_cmake_args(
    CocosAR
    CMAKE_ARGS 
    BUILD_CPP_TESTS=OFF
    BUILD_LUA_LIBS=OFF
    BUILD_JS_LIBS=OFF
    BUILD_SHARED_LIBS=OFF
)


hunter_add_version(
    PACKAGE_NAME
    CocosAR
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_augmentedreality_CocosAR/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

#hunter_cacheable(CocosAR)

hunter_download(
    PACKAGE_NAME CocosAR
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON Zlib flatbuffers Recast SDL2 TIFF PNG poly2tri StanHull libogg minizip Curl
)

