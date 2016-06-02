#!/bin/sh
NDK=/home/zgwei1986/workspace/android-ndk-r11c
PREBUILT=$NDK/toolchains/arm-linux-androideabi-4.9/prebuilt
PLATFORM=$NDK/platforms/android-19/arch-arm 
PREFIX=/home/zgwei1986/android-x264
./configure --prefix=$PREFIX \
--enable-static \
--enable-pic \
--disable-asm \
--disable-cli \
--host=arm-linux \
--cross-prefix=$PREBUILT/linux-x86_64/bin/arm-linux-androideabi- \
--sysroot=$PLATFORM
