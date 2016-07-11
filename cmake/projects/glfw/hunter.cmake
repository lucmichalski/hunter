# Copyright (c) 2016, Ruslan Baratov
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_cmake_args)

hunter_add_version(
    PACKAGE_NAME
    glfw
    VERSION
    "3.1.2-p0"
    URL
    "https://github.com/ConfusedReality/pkg_opengl_glfw/archive/3.1.2-p0.tar.gz"
    SHA1
    240af314702a3f6562d0368dfba0cb98f1994a63
)

hunter_cmake_args(
    glfw
    CMAKE_ARGS 
    BUILD_SHARED_LIBS=OFF
    GLFW_BUILD_EXAMPLES=OFF
    GLFW_BUILD_TESTS=OFF
    GLFW_BUILD_DOCS=OFF
    GLFW_INSTALL=OFF
    GLFW_DOCUMENT_INTERNALS=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(glfw)
hunter_download(PACKAGE_NAME glfw)