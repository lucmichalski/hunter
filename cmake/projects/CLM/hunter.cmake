# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_package(Boost) # Boost
hunter_add_package(OpenCV) # OpenCV
hunter_add_package(dlib) # dlib

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    CLM
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_vision_CLM-framework-db0b533.tar.gz"
    SHA1
    78bb70a62de70a406e52ae3cd303911b66a917dc
    )

hunter_add_version(
    PACKAGE_NAME
    CLM
    VERSION
    "1.4.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision_CLM-framework/archive/1.4.0-p0.tar.gz"
    SHA1
    57f90778a9bb7b95a7fd73910fd41894f3ee9cab
    )

#hunter_cmake_args(
#    CLM
#    CMAKE_ARGS 
#    CLM_STATIC_LIB=ON
#    CLM_SHARED_LIB=OFF
#    CLM_ENABLE_DOC=OFF
#    CLM_TESTS=ON
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

#hunter_cacheable(CLM)

hunter_download(
    PACKAGE_NAME CLM
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON Boost dlib OpenCV Boost 
)

