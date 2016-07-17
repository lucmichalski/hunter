# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_package(PNG)
hunter_add_package(Poco)
hunter_add_package(Tess2)
hunter_add_package(GLEW)
hunter_add_package(OpenSSL)
hunter_add_package(Boost)
hunter_add_package(cairo)
hunter_add_package(FreeImage)
hunter_add_package(freetype)

#hunter_add_package(cairo)
#hunter_add_package(cairo)

hunter_add_version(
    PACKAGE_NAME
    OpenFrameworks
    VERSION
    "3.1.0-m0"
    URL
    "https://github.com/lucmichalski/opencv_contrib/archive/3.1.0-m0.tar.gz"
    SHA1
    f0646ec626cc7eab482566c7783071860f469f16
)

hunter_add_version(
    PACKAGE_NAME
    OpenFrameworks
    VERSION
    develop
    URL
    "file://Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/pkg_vision_OpenFace/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)    

hunter_pick_scheme(DEFAULT url_sha1_unpack)
hunter_download(PACKAGE_NAME OpenFrameworks)
#hunter_download(PACKAGE_NAME OpenFrameworks
#				PACKAGE_DEPENDS_ON PNG Poco Tess2 GLEW OpenSSL Boost cairo FreeImage freetype)
