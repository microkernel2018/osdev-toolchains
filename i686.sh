#!/bin/bash
set -ex

source ./i686-source.sh
source ./build-generic.sh

build_binutils
build_gcc
