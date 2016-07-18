# Copyright (c) 2016, Ruslan Baratov, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Dill
    VERSION
    "0.5-beta-p0"
    URL
    "https://github.com/ConfusedReality/pkg_concurrency_dill/archive/0.5-beta-p0.tar.gz"
    SHA1
    62d1b578c99896bc3680da2a001dcede3a084ac7
    )

hunter_add_version(
    PACKAGE_NAME
    Dill
    VERSION
    "develop"
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_concurrency_dill/archive/develop.tar.gz"
    SHA1
    5a86fd89e4fca43f80da18b1c1a904f0a8c26322
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Dill)
hunter_download(
    PACKAGE_NAME Dill
)



