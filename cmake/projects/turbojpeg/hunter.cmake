# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    turbojpeg
    VERSION
    "1.5.0-p2"
    URL
    "https://github.com/ConfusedReality/pkg_images_libjpeg-turbo/archive/1.5.0-p2.tar.gz"
    SHA1
    4eee74a69e5849ea0180e615afb2fbd9462040a2
    )

#hunter_pick_scheme(DEFAULT url_sha1_autotools)
hunter_pick_scheme(DEFAULT url_sha1_turbojpeg_autogen_autotools)

#hunter_cacheable(turbojpeg)
hunter_download(
    PACKAGE_NAME turbojpeg
)



