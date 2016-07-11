include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    7.49.1-p0
    URL
    "https://github.com/ConfusedReality/curl/archive/7.49.1-p0.tar.gz"
    SHA1
    74bbd647f7167305651af81de1d1ae25ac79d918
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
