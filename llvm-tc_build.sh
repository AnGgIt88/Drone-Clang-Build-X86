#!/usr/bin/env bash

git clone https://gitlab.kitware.com/cmake/cmake $(pwd)/cmake
cd $(pwd)/cmake
chmod +x bootstrap && ./bootstrap && make -j$(nproc --all) && make install
git clone https://github.com/AnGgIt86/llvmTC $(pwd)/llvmTC -b llvm-tc
cd $(pwd)/llvmTC
bash build-tc.sh
