# Copyright (c) 2016, Ruslan Baratov, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(OpenCV) # OpenCV
#hunter_add_package(OpenMP) # OpenMP

hunter_add_version(
    PACKAGE_NAME
    PolAR
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_augmented-reality_polAR/archive/0.0.1-p0.tar.gz"
    SHA1
    b34e7a087513b579368927642e576722cbe067e8
    )

hunter_add_version(
    PACKAGE_NAME
    PolAR
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_augmented-reality_polAR/archive/develop.tar.gz"
    SHA1
    c50d5816bb3dd9a5f08a6885568b3f2820b589ea
)  

hunter_cmake_args(
    Aruco
    CMAKE_ARGS 
	BUILD_SHARED_LIBS=OFF
    BUILD_TESTS=OFF
	BUILD_UTILS=OFF
    BUILD_GLSAMPLES=OFF
    INSTALL_DOC=OFF
    WARNINGS_ARE_ERRORS=OFF
    WHOLE_PROGRAM_OPTIMIZATION=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
#hunter_cacheable(Aruco)
#hunter_download(PACKAGE_NAME Aruco)

hunter_download(
    PACKAGE_NAME PolAR
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON OpenCV OpenMP
)
