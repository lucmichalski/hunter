# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    thread-pool-cpp
    VERSION
    "1.0.0-p1"
    URL
    https://github.com/ConfusedReality/pkg_multithreading_thread-pool-cpp/archive/v1.0.0-p1.tar.gz
    SHA1
    c004962159c59637985bccc6933499344904feed    
)

hunter_add_version(
    PACKAGE_NAME
    thread-pool-cpp
    VERSION
    "1.0.0-p0"
    URL
    https://github.com/hunter-packages/thread-pool-cpp/archive/v1.0.0-p0.tar.gz
    SHA1
    c004962159c59637985bccc6933499344904feed    
)

hunter_add_version(
    PACKAGE_NAME
    thread-pool-cpp
    VERSION
    "1.0.0"
    URL
    https://github.com/headupinclouds/thread-pool-cpp/archive/v1.0.0.tar.gz
    SHA1
    8c657d3b3f494761838cc0c42e83ede82ff31525    
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(thread-pool-cpp)
hunter_download(PACKAGE_NAME thread-pool-cpp)
