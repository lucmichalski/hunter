# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_cmake_args)

hunter_add_package(CURL)

hunter_add_version(
    PACKAGE_NAME
    curlpp
    VERSION
    "0.7.3-p0"
    URL
    "https://github.com/ConfusedReality/pkg_network_curlpp/archive/v0.7.3-p0.tar.gz"
    SHA1
    fcd6777d6139e5135bb8c01157e115c7ebd3dc64
)

hunter_add_version(
    PACKAGE_NAME
    curlpp
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_network_curlpp/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

hunter_cmake_args(
    curlpp
    CMAKE_ARGS 
    BUILD_STATIC=ON
    BUILD_EXAMPLES=OFF
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(curlpp)
hunter_download(PACKAGE_NAME curlpp
				PACKAGE_DEPENDS_ON CURL)

