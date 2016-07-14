# Copyright (c) 2015, Ruslan Baratov, Alexandre Pretyman
# All rights reserved.

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_download)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)

hunter_add_version(
    PACKAGE_NAME
    LibEvent
    VERSION
    "2.1.5-beta-m0"
    URL
    "https://github.com/lucmichalski/libevent/archive/release-2.1.5-beta-m0.tar.gz"
    SHA1
    3be07e7702abf8adcbe7736f372ef9980cec1003
)

hunter_cmake_args(
    LibEvent
    CMAKE_ARGS 
	EVENT__BUILD_SHARED_LIBRARIES=OFF
    EVENT__DISABLE_DEBUG_MODE=OFF
    EVENT__ENABLE_VERBOSE_DEBUG=OFF
	EVENT__DISABLE_MM_REPLACEMENT=OFF
	EVENT__DISABLE_THREAD_SUPPORT=OFF
	EVENT__DISABLE_OPENSSL=OFF
	EVENT__DISABLE_BENCHMARK=OFF
	EVENT__DISABLE_TESTS=OFF
	EVENT__DISABLE_REGRESS=OFF
	EVENT__DISABLE_SAMPLES=OFF
	EVENT__FORCE_KQUEUE_CHECK=OFF
	EVENT__COVERAGE=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_cacheable(LibEvent)
hunter_download(
    PACKAGE_NAME LibEvent
    PACKAGE_DEPENDS_ON Boost OpenSSL
)
