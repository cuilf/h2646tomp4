#!/bin/bash


export PATH=/home/changer/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin:$PATH
export MP4V2_INSTALL_DIR=/home/changer/h264tomp4/mp4v2-2.0.0/_install

arm-linux-gnueabihf-g++ main.c MP4Encoder.cpp -o h2m -lmp4v2 -L$MP4V2_INSTALL_DIR/lib -I$MP4V2_INSTALL_DIR/include

date
ls h2m -l

