#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. ${DIR}/common.sh

EXAMPLE_DIR=$1

TOOLCHAIN=ios-9-2-arm64

rename_tab gatherer $TOOLCHAIN

function build_all
{
    COMMANDS=(
        "--toolchain ${TOOLCHAIN} "
        "--verbose "
        "--fwd HUNTER_CONFIGURATION_TYPES=Release "
        "USE_OGLES_GPGPU=ON "
        "${GATHERER_BUILD_ARGS[*]} "
        "CMAKE_XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET=8.0 "
        "--config Release "
        "--jobs 8 "
        "--open "
        "--reconfig "
        "--nobuild "
        "${EXTRA_ARGS}"
    )
    
	build.py ${COMMANDS[*]}
}

(cd ${DIR}/../${EXAMPLE_DIR} && build_all)



