# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    GamePlay-deps
    VERSION
    "0.0.2-develop"
    URL
    "http://localhost:1979/staging/pkg_game-engine_gameplay-deps-3804d6e.tar.gz"
    SHA1
    5f9997cecdf2415101898ea54a8f503dc9112b41
    )

hunter_add_version(
    PACKAGE_NAME
    GamePlay-deps
    VERSION
    "3.0.0-p2"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_gameplay-deps/archive/3.0.0-p2.tar.gz"
    SHA1
    8c56d3a3ed9bdb36fce429f76d7007f012c6b3fd
    )

hunter_cmake_args(
    GamePlay-deps
    CMAKE_ARGS 
    LIBRARY_OUTPUT_PATH="./output"
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(GamePlay-deps)
hunter_download(
    PACKAGE_NAME GamePlay-deps
)