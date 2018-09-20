#!/bin/bash
set -uex

mkdir -p build/${TARGET}

rm -rf "build/${TARGET}/build-binutils"
mkdir -p "build/${TARGET}/build-binutils"
pushd "build/${TARGET}/build-binutils"
../../../src/binutils-${BINUTILS_VERSION}/configure --target=$TARGET --prefix="$PREFIX" --with-sysroot --disable-nls --disable-werror
make
make install
popd

rm -rf "build/${TARGET}/build-gcc"
mkdir -p "build/${TARGET}/build-gcc"
pushd "build/${TARGET}/build-gcc"
../../../src/gcc-${GCC_VERSION}/configure --target=$TARGET --prefix="$PREFIX" --disable-nls --enable-languages=c --without-headers
make all-gcc
make all-target-libgcc
make install-gcc
make install-target-libgcc
popd
