## Added/Modified by Luc Michalski - 2016

#include(hunter_cacheable)
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

# hunter_add_package(Zlib) # Zlib
# hunter_add_package(OpenSSL) # OpenSSL

# For hunterization purpose only
# Be careful with the local tarball approach and the real version of your package
hunter_add_version(
    PACKAGE_NAME
    curl
    VERSION
    0.2-develop
    URL
    "http://localhost:1979/staging/pkg_network_curl-16dfb41.tar.gz"
    SHA1
    7af37ed7c768364b5dc78b6a982a5ec4168e77aa
)

hunter_add_version(
    PACKAGE_NAME
    curl
    VERSION
    7.49.1-p5
    URL
    "https://github.com/ConfusedReality/curl/archive/7.49.1-p5.tar.gz"
    SHA1
    c930e758c27e3124da33f5561a8928a88c4c383a
)

#if(MSVC)
#    hunter_pick_scheme(DEFAULT url_sha1_curl_autogen_autotools)
#else()
    hunter_pick_scheme(DEFAULT url_sha1_curl_autogen_autotools)
#endif()

#hunter_cacheable(curl)

hunter_download(
    PACKAGE_NAME curl
)

hunter_configuration_types(curl CONFIGURATION_TYPES Release)


