#!/bin/sh
# Simple hello world app for ARM Cortex-M3
# Author Skywalker a.k.a. Jörgen karlsson<j.karlsson@retrocoder.se>
# Copyright (c) 2021 Skywalker

# Clean
rm -r bin
mkdir bin

# Build
echo "*** Building kernel binary for ARM Cortex-M3 ***"

# Compiling / Assembling
arm-none-eabi-gcc -O1 -c -mcpu=cortex-m3 -mthumb hello.c -o bin/hello.o

# Linking
arm-none-eabi-ld -T hello.ld bin/hello.o -o bin/hello.elf
arm-none-eabi-objcopy -O binary bin/hello.elf bin/hello.bin

# Run
echo '*** Run image in qemu-arm ***'
qemu-system-arm -cpu cortex-m3 -machine lm3s811evb -nographic -kernel bin/hello.bin


# License
# 
# This program is free software: you can redistribute it and/or modify it
# under the terms of the GNU General Public License version 2 as published by
# the Free Software Foundation.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
# See the GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License along with
# this program. If not, see <http://www.gnu.org/licenses/>
# or write to the Free Software Foundation, Inc.,
# 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
