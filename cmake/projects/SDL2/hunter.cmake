# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_download)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)

hunter_add_version(
        PACKAGE_NAME
        SDL2
        VERSION
        "2.0.4-p2"
        URL
        "https://github.com/hunter-packages/SDL2/archive/2.0.4-p2.tar.gz"
        SHA1
        dfdcff72966c1b597154f21f59bf4d30964e8795
)

hunter_add_version(
        PACKAGE_NAME
        SDL2
        VERSION
        "2.0.4-p1"
        URL
        "https://github.com/hunter-packages/SDL2/archive/2.0.4-p1.tar.gz"
        SHA1
        daebe20807e166f62f3671f742e81e8d2959388b
)

#hunter_cmake_args(
#    SDL2
#    CMAKE_ARGS 
#   WITH_STATIC_LIB=ON
#   WITH_SHARED_LIB=OFF
#    BUILD_TESTING=OFF
#    BUILD_COMPILER=OFF
#   BUILD_CPP=ON
#   BUILD_C_GLIB=OFF
#   BUILD_JAVA=OFF
#   BUILD_PYTHON=OFF
#   BUILD_HASKELL=OFF
#   BUILD_LIBRARIES=ON
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(SDL2)
hunter_download(PACKAGE_NAME SDL2)
