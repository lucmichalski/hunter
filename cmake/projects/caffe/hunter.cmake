# Added/Modified by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cacheable)

hunter_cacheable(caffe)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    caffe
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_vision-cnn_caffe/archive/0.0.1-p0.tar.gz"
    SHA1
    4b761dacf480b2dafab02f7f50060bc6c9e78dc7
)

hunter_cmake_args(
    caffe
    CMAKE_ARGS 
    CPU_ONLY=ON
    USE_CUDNN=OFF
    BUILD_SHARED_LIBS=OFF
    BUILD_python=OFF
    BUILD_matlab=OFF
    BUILD_docs=OFF
    BUILD_python_layer=OFF
    USE_OPENCV=ON
    USE_LEVELDB=ON
    USE_LMDB=ON
    ALLOW_LMDB_NOLOCK=OFF
)

# Pick a download scheme
hunter_pick_scheme(DEFAULT url_sha1_cmake)

# Download package.
# Two versions of library will be build:
#     * libexample_A.a
#     * libexample_Ad.a
hunter_download(PACKAGE_NAME caffe)
