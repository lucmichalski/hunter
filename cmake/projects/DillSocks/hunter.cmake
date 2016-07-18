# Copyright (c) 2016, Ruslan Baratov, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(Dill) # Dill

hunter_add_version(
    PACKAGE_NAME
    DillSocks
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_concurrency_dillsocks/archive/0.0.1-p0.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
    )

hunter_add_version(
    PACKAGE_NAME
    DillSocks
    VERSION
    "develop"
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_concurrency_dillsocks/archive/develop.tar.gz"
    SHA1
    e1e3326698eca9ef9dc7dee7301eec0c886c29de
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_download(
    PACKAGE_NAME DillSocks
    PACKAGE_DEPENDS_ON Dill
)