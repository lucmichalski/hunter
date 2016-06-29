#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
. ${DIR}/common.sh

EXAMPLE_DIR=$1

TOOLCHAIN=libcxx

rename_tab gatherer $TOOLCHAIN

function build_all
{
    COMMAND=(
        "--toolchain ${TOOLCHAIN} "
        "--verbose --fwd HUNTER_CONFIGURATION_TYPES=Release "
        "${GATHERER_BUILD_ARGS[*]} "
        "--config Release "
        "--jobs 8 "
        "--clear "
        "--nobuild "
        "${EXTRA_ARGS} "
    )
    
	build.py ${COMMAND[*]}
}

(cd ${DIR}/../${EXAMPLE_DIR} && build_all)