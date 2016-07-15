# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    swiftpp
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_bridge_swiftpp/archive/0.0.1-p0.tar.gz"
    SHA1
    f0646ec626cc7eab482566c7783071860f469f16
)


hunter_pick_scheme(DEFAULT url_sha1_unpack)
hunter_download(PACKAGE_NAME swiftpp)
