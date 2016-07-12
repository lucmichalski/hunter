# Copyright (c) 2013-2014, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    ARToolKit5
    VERSION
    "5.3.2R1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_augmented-reality_artoolkit5/archive/5.3.2R1-p0.tar.gz"
    SHA1
    4815e072b8abaf3837c6a218e522f92997751143
)

hunter_pick_scheme(
    DEFAULT
    url_sha1_artoolkit5
    IPHONEOS
    url_sha1_artoolkit5_ios
    WINDOWS
    url_sha1_artoolkit5_windows
)

hunter_cacheable(ARToolKit5)
hunter_download(PACKAGE_NAME ARToolKit5)
