# !!! DO NOT PLACE HEADER GUARDS HERE !!!

# Load used modules
include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

# List of versions here...
hunter_add_version(
    PACKAGE_NAME
    Annoy
    VERSION
    "0.0.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_ann_annoy/archive/0.0.1-p0.tar.gz"
    SHA1
    1d3cfdde4b18547eace113cdf7ac670fb6a2c420
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)
hunter_cacheable(Annoy)
hunter_download(PACKAGE_NAME Annoy)
