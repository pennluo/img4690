#!/usr/bin/env bash

topdir=$(pwd)
mkdir -p ./opencv/build
cd ./opencv/build

cmake .. \
-DCMAKE_BUILD_TYPE=Release \
-DOPENCV_EXTRA_MODULES_PATH="../../opencv_contrib/modules/" \
-DBUILD_DOCS=OFF \
-DBUILD_EXAMPLES=OFF \
-DBUILD_TESTS=OFF \
-DBUILD_PERF_TESTS=OFF

cmake --build . --config release -- -j8
sudo cmake --build . --target install

cd ${topdir}
#rm -rf opencv opencv_contrib
