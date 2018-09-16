#!/bin/sh
set -e

source ./versions.sh

mkdir -p src/
pushd src
tar -xvf "../release/binutils-${BINUTILS_VERSION}.tar.xz"
tar -xvf "../release/gcc-${GCC_VERSION}.tar.xz"
popd
