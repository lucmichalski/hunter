# Copyright (c) 2014-2015, Ruslan Baratov
# Copyright (c) 2015, Alexander Lamaison
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    webp
    VERSION
    "0.5.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_images_webp/archive/0.5.1-p0.tar.gz"
    SHA1
    3e083ca37efc461704d9af256cdf2231cae6ee9d
)

hunter_cmake_args(
    webp
    CMAKE_ARGS 
    WEBP_BUILD_CWEBP=OFF
    WEBP_BUILD_DWEBP=OFF
    WEBP_EXPERIMENTAL_FEATURES=OFF
    WEBP_FORCE_ALIGNED=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(webp)
hunter_download(PACKAGE_NAME webp)
