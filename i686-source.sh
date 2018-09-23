#!/bin/bash
source ./versions.sh
export VERSION
export PREFIX="$(pwd)/out"
export TARGET=i686-elf
export PATH="$PREFIX/bin:$PATH"
export MAKEFLAGS="-j $(nproc --all)"
