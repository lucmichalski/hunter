# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    Urho3D
    VERSION
    "1.32-m0"
    URL
    "https://github.com/lucmichalski/Urho3D/archive/1.32-m0.tar.gz"
    SHA1
    4d1ba78eff2929397b7c6717be16f3e53bfe378d
    )

hunter_cmake_args(
    Urho3D
    CMAKE_ARGS 
	IOS=1
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Urho3D)
hunter_download(PACKAGE_NAME Urho3D)
