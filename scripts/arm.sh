#!/bin/bash
set -ex

source ./versions.sh
export PREFIX="$(pwd)/out"
export TARGET=arm-none-eabi
export PATH="$PREFIX/bin:$PATH"
export MAKEFLAGS="-j $(nproc --all)"
source ./scripts/build-generic.sh

build_binutils
build_gcc
