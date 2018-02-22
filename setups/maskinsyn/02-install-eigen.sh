#!/usr/bin/env bash
sudo apt update

# Install dependencies
sudo apt install -y \
liblapack-dev \
wget

#Install Eigen
topdir=$(pwd)

wget https://bitbucket.org/eigen/eigen/get/3.3.4.tar.gz
tar xf 3.3.4.tar.gz
mv eigen* eigen
mkdir -p ./eigen/build
cd ./eigen/build
cmake .. -DCMAKE_BUILD_TYPE=Release
cmake --build . --target blas
sudo cmake --build . --target install
cd blas
sudo cmake --build . --target install

cd ${topdir}
rm -rf eigen 3.3.4.tar.gz

