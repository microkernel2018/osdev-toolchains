#!/bin/bash
set -ex

source ./scripts/i686-source.sh
source ./scripts/build-generic.sh
source ./versions.sh
export VERSION
export PREFIX="$(pwd)/out"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"
export MAKEFLAGS="-j $(nproc --all)"

build_binutils
build_gcc
