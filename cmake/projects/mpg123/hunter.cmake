# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    mpg123
    VERSION
    "1.23.6"
    URL
    "http://www.mpg123.de/download/mpg123-1.23.6.tar.bz2"
    SHA1
    10a2377509d4edf8be0328727361e79610250182
    )

hunter_pick_scheme(DEFAULT url_sha1_mpg123_autogen_autotools)

hunter_cacheable(mpg123)
hunter_download(
    PACKAGE_NAME mpg123
)


