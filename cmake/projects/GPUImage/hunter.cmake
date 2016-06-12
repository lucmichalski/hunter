# Copyright (c) 2016, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)



hunter_add_version(
    PACKAGE_NAME
    GPUImage
    VERSION
    "0.1.7-m7"
    URL
    "https://github.com/lucmichalski/GPUImage/archive/0.1.7-m7.tar.gz"
    SHA1
    f88955f47167cd8cdd960ddf1d386c22b4b3c2e4
    )



hunter_add_version(
    PACKAGE_NAME
    GPUImage
    VERSION
    "0.1.7-m3"
    URL
    "https://github.com/lucmichalski/GPUImage/archive/0.1.7-m3.tar.gz"
    SHA1
    f35ce21f39bbdceaeb69dde939212eed7ce93f52
    )

hunter_add_version(
    PACKAGE_NAME
    GPUImage
    VERSION
    "0.1.7-m2"
    URL
    "https://github.com/lucmichalski/GPUImage/archive/0.1.7-m2.tar.gz"
    SHA1
    f35ce21f39bbdceaeb69dde939212eed7ce93f52
    )

hunter_add_version(
    PACKAGE_NAME
    GPUImage
    VERSION
    "0.1.7-m0"
    URL
    "https://github.com/lucmichalski/GPUImage/archive/0.1.7-m0.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
    )

hunter_add_version(
    PACKAGE_NAME
    GPUImage
    VERSION
    "0.1.6-p5"
    URL
    "https://github.com/hunter-packages/GPUImage/archive/v0.1.6-p5.tar.gz"
    SHA1
    463564d96442c214d21faa28a3ca229962ca086c
	)

  hunter_add_version(
    PACKAGE_NAME
    GPUImage
    VERSION
    "0.1.6-p6"
    URL
    "https://github.com/headupinclouds/GPUImage/archive/v0.1.6-p6.tar.gz"
    SHA1
	230f9f9ba0fe1cce96827ea0cfc944b6df05ec34
	)

hunter_cmake_args(
    GPUImage
    CMAKE_ARGS GPUIMAGE_BUILD_EXAMPLES=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(GPUImage)
hunter_download(PACKAGE_NAME GPUImage)
