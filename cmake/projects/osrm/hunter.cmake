# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    osrm
    VERSION
    "5.3.0-rc.3-p0"
    URL
    "https://github.com/ConfusedReality/osrm-backend/archive/v5.3.0-rc.3-p0.tar.gz"
    SHA1
    f0646ec626cc7eab482566c7783071860f469f16
)

hunter_cmake_args(
    NanoMsg
    CMAKE_ARGS 
    ENABLE_LTO=ON
    SANITIZER=OFF
    COVERAGE=OFF
    ENABLE_ASSERTIONS=ON
    BUILD_COMPONENTS=OFF
    BUILD_TOOLS=OFF
    ENABLE_JSON_LOGGING=OFF
    ENABLE_CCACHE=ON
)


hunter_pick_scheme(DEFAULT url_sha1_unpack)
hunter_download(PACKAGE_NAME osrm)
