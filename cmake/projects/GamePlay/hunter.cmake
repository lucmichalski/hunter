# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_package(GamePlay-deps) # GamePlay dependencies

hunter_add_version(
    PACKAGE_NAME
    GamePlay
    VERSION
    "3.0.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_gameplay/archive/3.0.0-p0.tar.gz"
    SHA1
    6b8d9a19ca63ab3afa534fc96c3218847ee759b4
    )

hunter_cmake_args(
    GamePlay
    CMAKE_ARGS 
    BUILD_SAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(GamePlay)
hunter_download(
    PACKAGE_NAME GamePlay
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON GamePlay-deps
)
