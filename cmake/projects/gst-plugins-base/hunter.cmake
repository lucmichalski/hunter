# Added/Modified by Luc Michalski

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    gst-plugins-base
    VERSION
    "1.9.1-p0"
    URL
    "https://github.com/ConfusedReality/pkg_multimedia_gst-plugins-base/archive/1.9.1-p0.tar.gz"
    SHA1
    0ddcd9086556a30b24f0112949f731a8ea64dd54
    )

hunter_pick_scheme(DEFAULT url_sha1_gst-plugins-base_autogen_autotools)

hunter_cacheable(gst-plugins-base)
hunter_download(
    PACKAGE_NAME gst-plugins-base
)


