#!/usr/bin/env bash

sudo apt update

# Install text to speach util
sudo apt install -y espeak

# Install dependencies
./01-install-opencv-dependencies.sh
./02-install-eigen.sh
./03-install-sophus.sh

# Download opencv sources
[[ ! -d opencv ]] && \
git clone -b 3.3.1 --depth 1 https://github.com/opencv/opencv.git

[[ ! -d opencv_contrib ]] && \
git clone -b 3.3.1 --depth 1 https://github.com/opencv/opencv_contrib.git

# Build OpenCV
./04-build-opencv.sh

# Export library path
sudo ldconfig

# Notify
espeak "Installation complete"

