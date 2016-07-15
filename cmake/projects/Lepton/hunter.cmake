# Copyright (c) 2016, Ruslan Baratov, David Hirvonen
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(ZLIB)

hunter_add_version(
    PACKAGE_NAME
    Lepton
    VERSION
    "1.0.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_compression_lepton/archive/1.0.0-p0.tar.gz"
    SHA1
    b3f94e32a4df4a4e8444f27118b0f56c24b0091f
    )

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Lepton)
#hunter_download(PACKAGE_NAME Lepton)

hunter_download(PACKAGE_NAME Lepton
				PACKAGE_DEPENDS_ON ZLIB)
