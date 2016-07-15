# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)

hunter_cacheable(deepdetect)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    deepdetect
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision-cnn_deepdetect/archive/0.0.1-p0.tar.gz"
    SHA1
    4b761dacf480b2dafab02f7f50060bc6c9e78dc7
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)

# Download package.
# Two versions of library will be build:
#     * libexample_A.a
#     * libexample_Ad.a

hunter_download(PACKAGE_NAME deepdetect)

