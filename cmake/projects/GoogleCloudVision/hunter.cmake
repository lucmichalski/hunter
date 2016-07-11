# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_package(PocoCpp) # GamePlay dependencies

hunter_add_version(
    PACKAGE_NAME
    GoogleCloudVision
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_gameplay/archive/3.0.0-p0.tar.gz"
    SHA1
    6b8d9a19ca63ab3afa534fc96c3218847ee759b4
    )

#hunter_cmake_args(
#    GoogleCloudVision
#    CMAKE_ARGS 
#    BUILD_SAMPLES=OFF
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(GoogleCloudVision)
hunter_download(
    PACKAGE_NAME GoogleCloudVision
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON PocoCpp
)
