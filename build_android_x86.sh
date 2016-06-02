#!/bin/bash
NDK=/home/zgwei1986/workspace/webrtc201512/src/chromium/src/third_party/android_tools/ndk
PLATFORM=$NDK/platforms/android-19/arch-x86
TOOLCHAIN=$NDK/toolchains/x86-4.8/prebuilt/linux-x86_64
PREFIX=./android/x86

function build_one
{
  ./configure \
  --prefix=$PREFIX \
  --enable-static \
  --enable-pic \
  --host=i686-linux \
  --cross-prefix=$TOOLCHAIN/bin/i686-linux-android- \
  --sysroot=$PLATFORM

  make clean
  make
  make install
}

build_one

echo Android x86 builds finished
