# Added/Modified by Luc Michalski

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    gst-plugins-base
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_multimedia_gst-plugins-base-db0b533.tar.gz"
    SHA1
    6b8d9a19ca63ab3afa534fc96c3218847ee759b4
    )

hunter_add_version(
    PACKAGE_NAME
    gst-plugins-base
    VERSION
    "1.9.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_multimedia_gst-plugins-base/archive/1.9.1-p0.tar.gz"
    SHA1
    0ddcd9086556a30b24f0112949f731a8ea64dd54
    )

hunter_add_version(
    PACKAGE_NAME
    gst-plugins-base
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/pkg_multimedia_gst-plugins-base/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_pick_scheme(DEFAULT url_sha1_gst-plugins-base_autogen_autotools)

#hunter_cacheable(gst-plugins-base)

hunter_download(
    PACKAGE_NAME gst-plugins-base
)


