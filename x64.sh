#!/bin/bash
set -ex

source ./x64-source.sh
source ./build-generic.sh

build_binutils
build_gcc
