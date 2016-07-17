# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    OpenMP
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/openmp/archive/0.0.1-p0.tar.gz"
    SHA1
    "aa7524bae51f286a4f2b2c22434c1cbab71ff530"
)

hunter_add_version(
    PACKAGE_NAME
    OpenMP
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/openmp/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
) 

hunter_cmake_args(
    OpenMP
    CMAKE_ARGS
    LIBOMP_ENABLE_SHARED=OFF
    LIBOMP_USE_DEBUGGER=OFF
    LIBOMP_USE_STDCPPLIB=OFF
    LIBOMP_USE_ADAPTIVE_LOCKS=OFF
    LIBOMP_STATS=OFF
    LIBOMP_OMPT_DEBUG=OFF
    LIBOMP_OMPT_SUPPORT=OFF
    LIBOMP_OMPT_BLAME=OFF
    LIBOMP_OMPT_TRACE=OFF
)

hunter_cacheable(OpenMP)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME OpenMP)

