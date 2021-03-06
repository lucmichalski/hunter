include(hunter_add_version)
include(hunter_cmake_args)
include(hunter_pick_scheme)
include(hunter_cacheable)
include(hunter_download)

hunter_add_package(OpenSSL) # GamePlay dependencies

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    poco-1.7.3-p3
    URL
    "https://github.com/ConfusedReality/poco/archive/poco-1.7.3-p3.tar.gz"
    SHA1
    fe57a54de8b881bcf04435276b87eb23a162f7fd
)

hunter_add_version(
    PACKAGE_NAME
    Poco
    VERSION
    develop
    URL
    "file:///Volumes/HardDrive/go/src/github.com/lucmichalski/wormz/shared/git/packages/pkg_network_poco/archive/develop.tar.gz"
    SHA1
    f8cbbdcbaf758da584de2d2388fd8818c236c682
)  

hunter_cmake_args(
    Poco
    CMAKE_ARGS
        CMAKE_INSTALL_SYSTEM_RUNTIME_LIBS_SKIP=TRUE
        POCO_STATIC=ON
        POCO_UNBUNDLED=OFF
        POCO_MT=OFF
        ENABLE_CPPUNIT=OFF
        ENABLE_MONGODB=OFF
        ENABLE_PAGECOMPILER=OFF
        ENABLE_PAGECOMPILER_FILE2PAGE=OFF
        ENABLE_REDIS=OFF
        ENABLE_XML=ON
        ENABLE_JSON=ON
        ENABLE_PDF=OFF
        ENABLE_UTIL=ON
        ENABLE_NET=ON
        ENABLE_NETSSL=ON
        ENABLE_NETSSL_WIN=OFF
        ENABLE_CRYPTO=ON
        ENABLE_DATA=ON
        ENABLE_DATA_SQLITE=ON
        ENABLE_DATA_MYSQL=OFF
        ENABLE_DATA_POSTGRESQL=OFF
        ENABLE_DATA_ODBC=OFF
        ENABLE_SEVENZIP=OFF
        ENABLE_ZIP=ON
        ENABLE_APACHECONNECTOR=OFF
        ENABLE_CPPPARSER=OFF
        ENABLE_POCODOC=OFF
        ENABLE_PAGECOMPILER=OFF
        ENABLE_PAGECOMPILER_FILE2PAGE=OFF
        ENABLE_REDIS=OFF
        ENABLE_TESTS=OFF
        ENABLE_SAMPLES=OFF
        ENABLE_MSVC_MP=OFF
        FORCE_OPENSSL=OFF
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Poco)

hunter_download(
    PACKAGE_NAME Poco
    # Explicit dependencies since LLVM is not hunterized
    PACKAGE_DEPENDS_ON OpenSSL
)

