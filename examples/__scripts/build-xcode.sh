#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. ${DIR}/common.sh

EXAMPLE_DIR=$1

TOOLCHAIN=xcode

rename_tab gatherer $TOOLCHAIN

function build_all
{
    COMMANDS=(
	    "--toolchain ${TOOLCHAIN} "
        "--verbose "
        "--fwd HUNTER_CONFIGURATION_TYPES=Release "
        "${GATHERER_BUILD_ARGS[*]} "
        "CMAKE_XCODE_ATTRIBUTE_OSX_DEPLOYMENT_TARGET=10.11 "
        "CMAKE_OSX_DEPLOYMENT_TARGET=10.11 "
        "--config Release "
        "--jobs 8 "
        "--clear "
        "--nobuild "
        "${EXTRA_ARGS} "
    )

     build.py ${COMMANDS[*]}
}

# "--open "

(cd ${DIR}/../${EXAMPLE_DIR} && build_all)

