# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    assimp
    VERSION
    "3.2-p1"
    URL
    "https://github.com/hunter-packages/assimp/archive/v3.2-p1.tar.gz"
    SHA1
    018ce1cc19f0cf89dd5157cfbfa1c2925eab6926
    )

hunter_add_version(
    PACKAGE_NAME
    assimp
    VERSION
    "3.2"
    URL
    "https://github.com/hunter-packages/assimp/archive/v3.2.tar.gz"
    SHA1
    b811a9fc366f8ddd16ea767585f3f0080c17c447
    )

#hunter_cmake_args(
#    assimp
#    CMAKE_ARGS 
#	WITH_STATIC_LIB=ON
#	WITH_SHARED_LIB=OFF
#    BUILD_TESTING=OFF
#    BUILD_COMPILER=OFF
#	BUILD_CPP=ON
#	BUILD_C_GLIB=OFF
#	BUILD_JAVA=OFF
#	BUILD_PYTHON=OFF
#	BUILD_HASKELL=OFF
#	BUILD_LIBRARIES=ON
#)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(assimp)
hunter_download(PACKAGE_NAME assimp)
