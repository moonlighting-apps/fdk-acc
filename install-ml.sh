#!/bin/bash

make clean
make distclean
autoreconf -fiv
./configure --enable-shared --prefix=/usr
make -j$(nproc)
sudo checkinstall --pkgname=fdk-aac --pkgversion="$(date +%Y%m%d%H%M)-git" --backup=no \
    --deldoc=yes --fstrans=no --default
