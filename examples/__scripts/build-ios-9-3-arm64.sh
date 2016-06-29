#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. ${DIR}/common.sh

EXAMPLE_DIR=$1

TOOLCHAIN=ios-9-3-arm64

rename_tab gatherer $TOOLCHAIN

function build_all
{
    COMMAND=(
        "--toolchain ${TOOLCHAIN}"
        "--verbose "
        "--fwd HUNTER_CONFIGURATION_TYPES=Release "
        "CMAKE_XCODE_ATTRIBUTE_IPHONEOS_DEPLOYMENT_TARGET=8.0 "
        "--config Release "
        "--jobs 8 "
        "--reconfig "
        "--nobuild "
		"${EXTRA_ARGS} "
    )
    
	build.py  ${COMMAND[*]}
}

(cd ${DIR}/../${EXAMPLE_DIR} && build_all)


