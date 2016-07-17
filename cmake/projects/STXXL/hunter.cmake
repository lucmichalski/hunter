# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

# Dependencies
hunter_add_package(Boost)

hunter_add_version(
    PACKAGE_NAME
    STXXL
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision_inpaint/archive/0.0.1-p0.tar.gz"
    SHA1
    "aa7524bae51f286a4f2b2c22434c1cbab71ff530"
)

hunter_cmake_args(
    STXXL
    CMAKE_ARGS
    BUILD_STATIC_LIBS=ON
    BUILD_SHARED_LIBS=OFF
    BUILD_EXAMPLES=OFF
    BUILD_TESTS=OFF
    USE_OPENMP=OFF
    TRY_COMPILE_HEADERS=OFF
    NO_CXX11=OFF
    USE_VALGRIND=OFF
    USE_MALLOC_COUNT=OFF
    USE_GCOV=OFF
    STXXL_DEBUG_ASSERTIONS=OFF
    USE_TPIE=OFF
)

hunter_cacheable(STXXL)
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_download(PACKAGE_NAME STXXL
                PACKAGE_DEPENDS_ON Boost)

