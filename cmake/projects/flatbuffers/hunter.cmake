# Copyright (c) 2016, Ruslan Baratov, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    flatbuffers
    VERSION
    "1.3.0-p2"
    URL
    "https://github.com/headupinclouds/flatbuffers/archive/v1.3.0-p2.tar.gz"
    SHA1
    aa2e5f32a80903ee2454fb7c511059948adcf212
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(flatbuffers)
hunter_download(PACKAGE_NAME flatbuffers)
