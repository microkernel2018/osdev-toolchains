#!/bin/bash
source ./versions.sh
export PREFIX="$(pwd)/out"
export TARGET=x86_64-efi-pe
export PATH="$PREFIX/bin:$PATH"
export MAKEFLAGS="-j $(nproc --all)"
