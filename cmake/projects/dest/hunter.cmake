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
    "0.8.0-p1"
    URL
    "https://github.com/headupinclouds/dest/archive/v0.8.0-p1.tar.gz"
    SHA1
    f79d242f32d42f6b1c6b4162c76e6fa68456547c
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(dest)
hunter_download(PACKAGE_NAME dest)
