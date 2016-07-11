## Added/Modified by Luc Michalski - 2016

include(hunter_cacheable)
include(hunter_add_version)
include(hunter_download)
include(hunter_pick_scheme)
include(hunter_configuration_types)

hunter_add_package(Zlib) # Zlib
hunter_add_package(OpenSSL) # OpenSSL

# For hunterization purpose only
# Be careful with the local tarball approach and the real version of your package
hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    0.1-develop
    URL
    "http://localhost:1979/staging/pkg_network_curl-97d2496.tar.gz"
    SHA1
    7af37ed7c768364b5dc78b6a982a5ec4168e77aa
)

hunter_add_version(
    PACKAGE_NAME
    CURL
    VERSION
    7.49.1-p3
    URL
    "https://github.com/ConfusedReality/curl/archive/7.49.1-p3.tar.gz"
    SHA1
    072c230aa32606d54757f34e5c01b9c8de63d456
)

hunter_pick_scheme(DEFAULT url_sha1_curl_autogen_autotools)

hunter_cacheable(CURL)

hunter_download(
    PACKAGE_NAME CURL
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON Zlib OpenSSL
)


