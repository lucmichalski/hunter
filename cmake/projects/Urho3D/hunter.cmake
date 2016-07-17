# Added by Luc Michalski - 2016

# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

# Dependencies
hunter_add_package(Box2D)
hunter_add_package(Bullet)
hunter_add_package(Civetweb)
hunter_add_package(freetype)
hunter_add_package(LZ4)
hunter_add_package(MojoShader)
hunter_add_package(Mustache)

hunter_add_package(RapidJSON)
hunter_add_package(Recast)
hunter_add_package(Detour)
hunter_add_package(SDL2)
hunter_add_package(StanHull)
hunter_add_package(SQLite)
hunter_add_package(LibCpuId)
hunter_add_package(GLEW)
hunter_add_package(PugiXml)
hunter_add_package(AngelScript)
hunter_add_package(kNet)

hunter_add_version(
    PACKAGE_NAME
    Urho3D
    VERSION
    "1.5-p0"
    URL
    "https://github.com/ConfusedReality/pkg_game-engine_Urho3D/archive/1.5-p0.tar.gz"
    SHA1
    4d1ba78eff2929397b7c6717be16f3e53bfe378d
    )

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
#hunter_download(PACKAGE_NAME Urho3D)

hunter_download(PACKAGE_NAME inpaint
                PACKAGE_DEPENDS_ON Box2D Bullet Civetweb freetype LZ4 MojoShader Mustache SDL2 Detour Recast RapidJSON StanHull SQLite LibCpuId GLEW PugiXml AngelScript kNet)
