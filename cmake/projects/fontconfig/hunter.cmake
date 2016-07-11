# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    fontconfig
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/fontconfig/archive/0.0.1-p0.tar.gz"
    SHA1
    62d1b578c99896bc3680da2a001dcede3a084ac7
    )

#hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_pick_scheme(DEFAULT url_sha1_fontconfig_autogen_autotools)

hunter_cacheable(fontconfig)
hunter_download(
    PACKAGE_NAME fontconfig
)



