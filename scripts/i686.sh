#!/bin/bash
set -ex

source ./versions.sh
export VERSION
export PREFIX="$(pwd)/out"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"
export MAKEFLAGS="-j $(nproc --all)"
source ./scripts/build-generic.sh

build_binutils
build_gcc
