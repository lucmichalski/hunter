# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    wsock
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_websocket_wsock/archive/1.0.0-p0.tar.gz"
    SHA1
    62d1b578c99896bc3680da2a001dcede3a084ac7
    )

#hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_pick_scheme(DEFAULT url_sha1_wsock_autogen_autotools)

hunter_cacheable(wsock)
hunter_download(
    PACKAGE_NAME wsock
)

# PACKAGE_UNRELOCATABLE_TEXT_FILES "lib/pkgconfig/wsock.pc"


