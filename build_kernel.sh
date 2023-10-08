#!/bin/bash

export ARCH=arm
export CROSS_COMPILE=$(pwd)/arm-eabi-4.8/bin/arm-eabi-

mkdir output

make -C $(pwd) O=output VARIANT_DEFCONFIG=msm8916_sec_grandmax_koropen_defconfig msm8916_sec_defconfig SELINUX_DEFCONFIG=selinux_defconfig
make -j32 -C $(pwd) O=output

cp output/arch/arm/boot/Image $(pwd)/arch/arm/boot/zImage
