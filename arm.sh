#!/bin/bash
set -ex

source ./arm-source.sh
source ./build-generic.sh

build_binutils
build_gcc
