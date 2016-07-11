include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

# For hunterization purpose only
hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    develop
    URL
    "http://localhost:1979/pkg_network_curl.tar.gz"
    SHA1
    072c230aa32606d54757f34e5c01b9c8de63d456
)

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    7.49.1-p3
    URL
    "https://github.com/ConfusedReality/curl/archive/7.49.1-p3.tar.gz"
    SHA1
    072c230aa32606d54757f34e5c01b9c8de63d456
)

hunter_cmake_args(
    CURL
    CMAKE_ARGS
        CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP=TRUE
        BUILD_CURL_EXE=OFF
        CURL_STATICLIB=ON
        ENABLE_ARES=OFF
        ENABLE_THREADED_RESOLVER=OFF
        ENABLE_DEBUG=OFF
        ENABLE_CURLDEBUG=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(CURL)
hunter_download(PACKAGE_NAME CURL)
