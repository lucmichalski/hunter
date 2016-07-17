# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)

hunter_cacheable(caffe2)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    caffe2
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision-cnn_caffe2/archive/0.0.1-p0.tar.gz"
    SHA1
    4b761dacf480b2dafab02f7f50060bc6c9e78dc7
)

hunter_add_version(
    PACKAGE_NAME
    caffe2
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_vision-cnn_caffe2/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)

# Download package.
# Two versions of library will be build:
#     * libexample_A.a
#     * libexample_Ad.a

hunter_download(PACKAGE_NAME caffe2)

