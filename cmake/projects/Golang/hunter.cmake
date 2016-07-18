# Copyright (c) 2016, Ruslan Baratov, Luc Michalski
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
#include(hunter_pick_scheme)
include(hunter_go_information)
include(hunter_test_go_compiler)
include(hunter_determine_go_compiler)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    Golang
    VERSION
    "1.6.2"
    URL
    "https://github.com/golang/go/archive/go1.6.2.tar.gz"
    SHA1
    1d3cfdde4b18547eace113cdf7ac670fb6a2c420
)

#hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Golang)
hunter_download(PACKAGE_NAME Golang)
