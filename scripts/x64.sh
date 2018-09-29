#!/bin/bash
set -ex

source ./scripts/x64-source.sh
source ./scripts/build-generic.sh
source ./versions.sh
export VERSION
export PREFIX="$(pwd)/out"
export TARGET=x86_64-elf
export PATH="$PREFIX/bin:$PATH"
export MAKEFLAGS="-j $(nproc --all)"

build_binutils
build_gcc
