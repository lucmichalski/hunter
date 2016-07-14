# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    gtk
    VERSION
    "3.21.3-p0"
    URL
    "https://github.com/ConfusedReality/pkg_toolkit_gtk3/archive/3.21.3-p0.tar.gz"
    SHA1
    ebe622d8fb182cccd685acb89b0d50bf684b4190
    )

hunter_pick_scheme(DEFAULT url_sha1_gtk_autogen_autotools)

hunter_cacheable(gtk)
hunter_download(
    PACKAGE_NAME gtk
)


