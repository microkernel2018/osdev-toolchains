#!/bin/sh
set -e

source ./versions.sh

mkdir -p release/
pushd release
wget -nc https://ftp.gnu.org/gnu/binutils/binutils-${BINUTILS_VERSION}.tar.xz
wget -nc https://ftp.gnu.org/gnu/gcc/gcc-${GCC_VERSION}/gcc-${GCC_VERSION}.tar.xz
popd

sha256sum -c sha256sums.txt
