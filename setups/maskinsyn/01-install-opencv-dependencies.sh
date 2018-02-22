#!/usr/bin/env bash
sudo apt update

# Install compiler
sudo apt install -y build-essential

# Install required
sudo apt install -y \
cmake \
cmake-qt-gui \
git \
libavcodec-dev \
libavformat-dev \
libgtk2.0-dev \
libswscale-dev \
pkg-config

# Install optional
sudo apt install -y \
python-dev \
python-numpy \
libdc1394-22-dev \
libjasper-dev \
libjpeg-dev \
libpng-dev \
libtbb2 \
libtbb-dev \
libtiff-dev \
libvtk6-dev

# Install boost
sudo apt install -y \
libboost-all-dev

