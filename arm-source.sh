#!/bin/bash
source ./versions.sh
export VERSION
export PREFIX="$(pwd)/out"
export TARGET=arm-none-eabi
export PATH="$PREFIX/bin:$PATH"
export MAKEFLAGS="-j $(nproc --all)"

