include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    tinyxml2
    VERSION
    3.0.0-p5
    URL
    "https://github.com/ConfusedReality/pkg_parser_tinyxml2/archive/3.0.0-p5.tar.gz"
    SHA1
    83f3267e15e87e6914e3c239ad77bc41763ab018
)

hunter_cmake_args(
    tinyxml2
    CMAKE_ARGS
    BUILD_SHARED_LIBS=OFF
    BUILD_STATIC_LIBS=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(tinyxml2)
hunter_download(PACKAGE_NAME tinyxml2)
