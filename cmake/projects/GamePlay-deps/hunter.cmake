# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
#include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_version(
    PACKAGE_NAME
    GamePlay-deps
    VERSION
    "3.0.0-p1"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_gameplay-deps/archive/3.0.0-p1.tar.gz"
    SHA1
    5c5f5a418be9b9e825517328965735583934e7bc
    )

#hunter_cmake_args(
#    GamePlay-deps
#    CMAKE_ARGS 
#    BUILD_CPP_TESTS=OFF
#    BUILD_LUA_LIBS=OFF
#    BUILD_JS_LIBS=OFF
#    BUILD_SHARED_LIBS=OFF
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(GamePlay-deps)
hunter_download(
    PACKAGE_NAME GamePlay-deps
)