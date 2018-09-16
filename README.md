# osdev-toolchains

The aim of this repo is to make it easy to set up a gcc cross compiler tool chain for OS dev.

# Directories

* `release/` - downloaded source code archives from the internet.
* `src/` - extracted source code files.
* `build/${TARGET}/` - build directory for a specific target architecture
* `out/` - the `PREFIX` that the builds are installed into. `out/bin/` shall be added to your `PATH`.

# Scripts

* `dl.sh` - download the source code (populates `release/`)
* `extract.sh` - extract the archives (populates `src/`)
* `i686.sh` - builds a i686 toolchain
* `i686-source.sh` - source this to get the toolchain added to your `PATH`.
* `build-generic.sh` - builds a toolchain based on the `$TARGET` variable.

