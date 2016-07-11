## Luc Michalski - 2016

# Copyright (c) 2015, Damien Buhl 
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_pick_scheme)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    Cordova
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/apps_cordova_vuforia-example/archive/0.0.1-p0.tar.gz"
    SHA1
    7e05bd78572c9088b03b1207a0ad5aba38490684
)

hunter_pick_scheme(DEFAULT url_sha1_cordova)
hunter_download(PACKAGE_NAME Cordova)

