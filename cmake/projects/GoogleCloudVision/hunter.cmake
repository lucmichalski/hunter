# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_package(PocoCpp) # GamePlay dependencies

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    GoogleCloudVision
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_vision_google-cloud-vision-526b32d.tar.gz"
    SHA1
    78bb70a62de70a406e52ae3cd303911b66a917dc
    )

hunter_add_version(
    PACKAGE_NAME
    GoogleCloudVision
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision_google-cloud-vision/archive/0.0.1-p0.tar.gz"
    SHA1
    6b8d9a19ca63ab3afa534fc96c3218847ee759b4
    )

hunter_add_version(
    PACKAGE_NAME
    GoogleCloudVision
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/pkg_vision_google-cloud-vision/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)

#hunter_cmake_args(
#    GoogleCloudVision
#    CMAKE_ARGS 
#    BUILD_SAMPLES=OFF
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

#hunter_cacheable(GoogleCloudVision)

hunter_download(
    PACKAGE_NAME GoogleCloudVision
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON PocoCpp
)

