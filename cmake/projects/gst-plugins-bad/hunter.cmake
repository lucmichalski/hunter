# Added/Modified by Luc Michalski

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    gst-plugins-bad
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_multimedia_gst-plugins-bad-526b32d.tar.gz"
    SHA1
    78bb70a62de70a406e52ae3cd303911b66a917dc
    )

hunter_add_version(
    PACKAGE_NAME
    gst-plugins-bad
    VERSION
    "1.9.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_multimedia_gst-plugins-bad/archive/1.9.1-p0.tar.gz"
    SHA1
    67da0e1258fc38af1a52fd4c17dce3c040759f78
    )

hunter_add_version(
    PACKAGE_NAME
    gst-plugins-bad
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/pkg_multimedia_gst-plugins-bad/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_pick_scheme(DEFAULT url_sha1_gst-plugins-bad_autogen_autotools)

#hunter_cacheable(gst-plugins-bad)

hunter_download(
    PACKAGE_NAME gst-plugins-bad
)


