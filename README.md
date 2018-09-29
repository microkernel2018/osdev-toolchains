# osdev-toolchains

The aim of this repo is to make it easy to set up a gcc cross compiler tool chain for OS dev.

# Directories

* `release/` - downloaded source code archives from the internet.
* `src/` - extracted source code files.
* `build/${TARGET}/` - build directory for a specific target architecture
* `out/` - the `PREFIX` that the builds are installed into. `out/bin/` shall be added to your `PATH`.
* `scripts/` - a directory to tidy extra scripts into.

# Scripts

* `dl.sh` - download the source code (populates `release/`)
* `extract.sh` - extract the archives (populates `src/`)
* `scripts/i686.sh` - builds a i686 toolchain
* `scripts/x64.sh` - builds a x64 toolchain
* `scripts/arm.sh` - builds a arm toolchain
* `source.sh` - source this to get the toolchains added to your `PATH`.
