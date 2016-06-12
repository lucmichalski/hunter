# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_package(ZLIB)

hunter_add_version(
    PACKAGE_NAME
    Thrift
    VERSION
    "0.9.3-m0"
    URL
    "https://github.com/lucmichalski/thrift/archive/0.9.3-m0.tar.gz"
    SHA1
    773c348b6ed83c8c73ad2fef51a23cbe09d7c43a
    )

hunter_cmake_args(
    Thrift
    CMAKE_ARGS 
	WITH_STATIC_LIB=ON
	WITH_SHARED_LIB=OFF
    BUILD_TESTING=OFF
    BUILD_COMPILER=OFF
	BUILD_CPP=ON
	BUILD_C_GLIB=OFF
	BUILD_JAVA=OFF
	BUILD_PYTHON=OFF
	BUILD_HASKELL=OFF
	BUILD_LIBRARIES=ON
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Thrift)
hunter_download(
    PACKAGE_NAME Thrift
    PACKAGE_DEPENDS_ON Boost ZLIB LibEvent
)