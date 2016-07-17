# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    utfcpp
    VERSION
    "2.3.4-p0"
    URL
    "https://github.com/ConfusedReality/pkg_encoding_utfcpp/archive/2.3.4-p0.tar.gz"
    SHA1
    fcd6777d6139e5135bb8c01157e115c7ebd3dc64
)

hunter_cmake_args(
    utfcpp
    CMAKE_ARGS 
    BUILD_STATIC=ON
    BUILD_EXAMPLES=OFF
)

hunter_cacheable(utfcpp)
hunter_pick_scheme(DEFAULT url_sha1_unpack)
hunter_download(PACKAGE_NAME utfcpp)
