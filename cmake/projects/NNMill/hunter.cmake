# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(nanomsg) # nanomsg
hunter_add_package(Mill) # Mill
hunter_add_package(libsodium) # libsodium

hunter_add_version(
    PACKAGE_NAME
    NNMill
    VERSION
    "0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_concurrency_nnmill/archive/0.1-p0.tar.gz"
    SHA1
    62d1b578c99896bc3680da2a001dcede3a084ac7
    )

hunter_add_version(
    PACKAGE_NAME
    NNMill
    VERSION
    "develop2"
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_concurrency_nnmill/archive/develop.tar.gz"
    SHA1
    efead72d1f7568ed9e81837960148f61607da669
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_download(
    PACKAGE_NAME NNMill
    PACKAGE_DEPENDS_ON Mill nanomsg libsodium
)

hunter_cacheable(NNMill)


