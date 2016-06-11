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
    "1.3.0-p0"
    URL
    "https://github.com/headupinclouds/flatbuffers/archive/v1.3.0-p0.tar.gz"
    SHA1
    ab6107981a4f8b670f03a8d85b8680b3a8a980d9
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(flatbuffers)
hunter_download(PACKAGE_NAME flatbuffers)
