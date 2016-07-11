# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

## Warning, it is a staging package tarball, check twice the version that was attributed
hunter_add_version(
    PACKAGE_NAME
    Thrift-Facebook
    VERSION
    "0.0.1-develop"
    URL
    "http://localhost:1979/staging/pkg_serialization_fbthrift-db0b533.tar.gz"
    SHA1
    78bb70a62de70a406e52ae3cd303911b66a917dc
    )

hunter_add_version(
    PACKAGE_NAME
    Thrift-Facebook
    VERSION
    "0.31.0-p0"
    URL
    "https://github.com/ConfusedReality/pkg_serialization_fbthrift/archive/0.31.0-p0.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
    )

hunter_cmake_args(
    Thrift-Facebook
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
hunter_cacheable(Thrift-Facebook)
hunter_download(PACKAGE_NAME Thrift-Facebook)
