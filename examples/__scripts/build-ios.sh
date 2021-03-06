#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. ${DIR}/common.sh

EXAMPLE_DIR=$1

TOOLCHAIN=ios-9-3

rename_tab gatherer $TOOLCHAIN

function build_all
{
    COMMAND=(
        "--toolchain ${TOOLCHAIN}"
        "--verbose "
        "--fwd HUNTER_CONFIGURATION_TYPES=Release "
        "USE_OGLES_GPGPU=ON "
        "${GATHERER_BUILD_ARGS[*]} "
        "CMAKE_XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET=8.0 "
        "CMAKE_XCODE_ATTRIBUTE_ONLY_ACTIVE_ARCH=NO "
        "CMAKE_XCODE_ATTRIBUTE_VALID_ARCHS=armv7,arm64 "
        "CMAKE_XCODE_TARGETED_DEVICE_FAMILY=1,2 "
        "CMAKE_XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET=8.0 "
        "--config Release "
        "--jobs 8 "
        "--open "
        "--reconfig "
        "--install "
		"${EXTRA_ARGS} "
    )
    
	build.py  ${COMMAND[*]}
}

#        "--nobuild "
(cd ${DIR}/../${EXAMPLE_DIR} && build_all)




