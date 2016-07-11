# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    gstreamer
    VERSION
    "1.9.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_multimedia_gstreamer/archive/1.9.1-p0.tar.gz"
    SHA1
    10a2377509d4edf8be0328727361e79610250182
    )

hunter_pick_scheme(DEFAULT url_sha1_vorbis_autogen_autotools)

hunter_cacheable(gstreamer)
hunter_download(
    PACKAGE_NAME gstreamer
)


