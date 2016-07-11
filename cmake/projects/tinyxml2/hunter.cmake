include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

# For hunterization purpose only
# Be careful with the local tarball approach and the real version of your package
hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    0.1-develop
    URL
    "http://localhost:1979/staging/pkg_parser_tinyxml2-27ba253.tar.gz"
    SHA1
    f265c6306e0fa2c1a249115dec050d38e5b2854d
)

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
