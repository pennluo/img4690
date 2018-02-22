#!/usr/bin/env bash
sudo apt update

# Install sophus
topdir=$(pwd)

git clone https://github.com/stonier/sophus.git
mkdir -p ./sophus/build
cd ./sophus/build
cmake .. -DCMAKE_BUILD_TYPE=Release -DBUILD_TESTS=OFF
sudo cmake --build . --target install

cd ${topdir}
rm -rf sophus

