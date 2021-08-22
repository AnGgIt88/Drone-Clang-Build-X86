#!/usr/bin/env bash

# Set a directory
DIR="$(pwd ...)"

git clone https://gitlab.kitware.com/cmake/cmake.git $(pwd)/cmake
chmod +x cmake* && cd cmake* && chmod +x bootstrap && ./bootstrap && make -j$(nproc --all) && make install
