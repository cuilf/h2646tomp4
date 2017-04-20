#!/bin/bash

export PATH=/home/changer/gcc-linaro-arm-linux-gnueabihf-4.7-2013.03-20130313_linux/bin:$PATH

if [ "$1" == "" ]; then
	INSTALL_PATH=`pwd`/_install
else
	if [ -d $1 ]; then
		INSTALL_PATH=$1
	else
		exit 1
	fi
fi

if [ ! -d $INSTALL_PATH ]; then
	mkdir -p $INSTALL_PATH
fi
if [ -f config.log ]; then
	make distclean
fi

./configure --prefix=$INSTALL_PATH \
			--host=arm-linux-gnueabihf \
			--build=i686-linux-gnu \
			--disable-option-checking \
			--disable-debug \
			--enable-optimize \
			--disable-fvsibility \
			--disable-gch \
			--disable-largefile \
			--enable-util \
			--disable-cygwin-win32 \
			--disable-mingw-threads \
			--disable-dependency-tracking \
			--enable-shared=yes \
			--enable-static=no \
			--enable-fast-instll=yes \
			--disable-libtool-lock \
			--with-gnu-ld

if [[ $? -eq 0 ]]; then
	#statements
	make
	if [[ $? -eq 0 ]]; then
		#statements
		make install
		exit 0
	fi
fi



