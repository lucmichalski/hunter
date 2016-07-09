# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    dlib
    VERSION
    "19.0-p9"
    URL
    "https://github.com/ConfusedReality/pkg_toolkit_dlib/archive/v19.0-p9.tar.gz"
    SHA1
    8cf63c6a3310e8c926ed432998ec0d53dbe272d8
)


hunter_add_version(
    PACKAGE_NAME
    dlib
    VERSION
    "19.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_toolkit_dlib/archive/v19.0-p0.tar.gz"
    SHA1
    db231e197300e3cd94d7a5f85e755043a4162de9
)

hunter_add_version(
    PACKAGE_NAME
    dlib
    VERSION
    "18.14-p1"
    URL
    "https://github.com/hunter-packages/dlib/archive/v18.14-p1.tar.gz"
    SHA1
    bf73cd97ab81162e085d06f1b4595902abe5a436
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(dlib)
hunter_download(PACKAGE_NAME dlib)

