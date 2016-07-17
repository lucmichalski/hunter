# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    MojoShader
    VERSION
    "1.0.0"
    URL
    "https://github.com/headupinclouds/MojoShader/archive/v1.0.0.tar.gz"
    SHA1
    120e6a25a7ef5063ef319d1d33af814b55a00a25
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(MojoShader)
hunter_download(PACKAGE_NAME MojoShader)

