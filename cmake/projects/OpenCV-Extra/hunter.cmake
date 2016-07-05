# Copyright (c) 2015, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "3.1.1-p4"
    URL
    "https://github.com/lucmichalski/opencv_contrib/archive/3.1.1-p4.tar.gz"
    SHA1
    0c492e0fb38b71ecb511b1d7fb7708407e6768db
)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "3.1.0-m7"
    URL
    "https://github.com/lucmichalski/opencv_contrib/archive/3.1.0-m7.tar.gz"
    SHA1
    3b8396a10a21d7a5b75e4b6b297ca36c31f2281d
)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "3.1.0-m6"
    URL
    "https://github.com/lucmichalski/opencv_contrib/archive/3.1.0-m6.tar.gz"
    SHA1
    d45f7ae709ce4d209c229a5cb00a8571dae4a7cd
)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "3.1.0-m5"
    URL
    "https://github.com/lucmichalski/opencv_contrib/archive/3.1.0-m5.tar.gz"
    SHA1
    a10e8d00c90907448a93f8610dbd310f0132d89a
)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "3.1.0-m0"
    URL
    "https://github.com/lucmichalski/opencv_contrib/archive/3.1.0-m0.tar.gz"
    SHA1
    f0646ec626cc7eab482566c7783071860f469f16
)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "3.1.0"
    URL
    "https://github.com/Itseez/opencv_contrib/archive/3.1.0.tar.gz"
    SHA1
    bb04e27a8c6d963e002205d25d31a627ad7b3ffb
)

hunter_add_version(
    PACKAGE_NAME
    OpenCV-Extra
    VERSION
    "3.0.0"
    URL
    "https://github.com/Itseez/opencv_contrib/archive/3.0.0.tar.gz"
    SHA1
    6301ce49ec0c851837b62aed8592be9cd9309f79
)

hunter_pick_scheme(DEFAULT url_sha1_unpack)
hunter_download(PACKAGE_NAME OpenCV-Extra)
