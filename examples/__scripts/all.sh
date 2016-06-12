#!/bin/bash

# Luc Michalski - 2016

EXAMPLE_ARCH="ios"

#
# Lists of architectures
# ios-9-3
# ios-9-3 (armv7,arm64,sim-x86_64,sim-i386)
# libcxx
# xcide
# android
#

find . -depth 1 -type d | while read dir; \
   do [[ ! $prev =~ $dir ]] && \
   EXAMPLE_NAME=$(echo "${dir}" | awk '{print substr($0,3,120)}'); \
   echo "Example foldername: ${EXAMPLE_NAME}"; \
   ./__scripts/build-$EXAMPLE_ARCH.sh $EXAMPLE_NAME ; \
   prev="$dir"; \
done
