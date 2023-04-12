#!/bin/bash

GCC=arm-linux-gnueabihf-gcc

# 用arm-linux-gnueabihf-gcc 将iplusf.c编译成arm汇编代码iplusf.arm.s
${GCC} -S -static -o iplusf.arm.s iplusf.c
# 再次用arm-linux-gnueabihf-gcc 汇编iplusf.arm.s，同时连接SysY2022的运行时库sylib.a，生成arm的可执行代码iplusf.arm
${GCC} iplusf.arm.s sylib.a -static -o iplusf.arm
# 用qemu-arm运行iplusf.arm
qemu-arm -L /usr/${GCC} ./iplusf.arm
