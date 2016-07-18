# Copyright (c) 2016, Ruslan Baratov, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(OpenCV) # OpenCV
hunter_add_package(Boost) # Boost
hunter_add_package(Eigen) # Boost
hunter_add_package(cereal) # cereal

hunter_add_version(
    PACKAGE_NAME
    eos
    VERSION
    "0.7.0-p1"
    URL
    "https://github.com/ConfusedReality/pkg_face-reconstruction_eos/archive/v0.7.0-p1.tar.gz"
    SHA1
    1dad8d1a66ff6dc2b1cc7c7eefee8b20bd3ba321
    )

hunter_add_version(
    PACKAGE_NAME
    eos
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_face-reconstruction_eos/archive/develop.tar.gz"
    SHA1
    af8acdf7abf9a53d1a575daccbbfeb8eae2bc5d7
)

hunter_cmake_args(
    eos
    CMAKE_ARGS 
	BUILD_EXAMPLES=OFF
    BUILD_DOCUMENTATION=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(eos)
#hunter_download(PACKAGE_NAME eos)

hunter_download(
    PACKAGE_NAME eos
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON OpenCV Boost Eigen cereal
)
