# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    jpeg-turbo
    VERSION
    "1.5.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_images_libjpeg-turbo/archive/1.5.0-p0.tar.gz"
    SHA1
    15fc16e85162b5316b0547f3f92b1a2684bab183
    )

hunter_pick_scheme(DEFAULT url_sha1_autotools)
#hunter_cacheable(jpeg-turbo)
hunter_download(
    PACKAGE_NAME jpeg-turbo
    PACKAGE_UNRELOCATABLE_TEXT_FILES "libturbojpeg.pc"
)



