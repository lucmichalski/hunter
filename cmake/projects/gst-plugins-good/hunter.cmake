# Copyright (c) 2016, Ruslan Baratov, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    gst-plugins-good
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_multimedia_gst-plugins-good-db0b533.tar.gz"
    SHA1
    6b8d9a19ca63ab3afa534fc96c3218847ee759b4
    )

hunter_add_version(
    PACKAGE_NAME
    gst-plugins-good
    VERSION
    "1.9.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_multimedia_gst-plugins-good/archive/1.9.1-p0.tar.gz"
    SHA1
    750ce5e7db88e95079c69864c264cbde96704737
    )

hunter_add_version(
    PACKAGE_NAME
    gst-plugins-good
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_multimedia_gst-plugins-good/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_pick_scheme(DEFAULT url_sha1_gst-plugins-good_autogen_autotools)

#hunter_cacheable(gst-plugins-good)

hunter_download(
    PACKAGE_NAME gst-plugins-good
)


