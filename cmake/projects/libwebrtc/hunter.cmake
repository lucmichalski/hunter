# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
#include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

#hunter_add_package(GamePlay-deps) # GamePlay dependencies

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    libwebrtc
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_game-engine_gameplay-db0b533.tar.gz"
    SHA1
    6b8d9a19ca63ab3afa534fc96c3218847ee759b4
    )

hunter_add_version(
    PACKAGE_NAME
    libwebrtc
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_multimedia_libwebrtc/archive/0.0.1-p0.tar.gz"
    SHA1
    c6fbf99b802350ef801227a7ae4775fa1573aa0f
    )

hunter_cmake_args(
    GamePlay
    CMAKE_ARGS 
    WEBRTC_DOC=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

#hunter_cacheable(libwebrtc)

hunter_download(
    PACKAGE_NAME libwebrtc
)
