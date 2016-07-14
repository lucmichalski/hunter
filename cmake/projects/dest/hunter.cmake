# Copyright (c) 2016, Ruslan Baratov, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    dest
    VERSION
    "0.8.0-p2"
    URL
    "https://github.com/headupinclouds/dest/archive/v0.8.0-p2.tar.gz"
    SHA1
    6e127ba2874248b1cff640453a5289d3388ad657
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(dest)
hunter_download(PACKAGE_NAME dest)

