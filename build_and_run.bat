echo off
rem Simple hello world app for ARM Cortex-M3
rem Author Skywalker a.k.a. Jörgen karlsson<j.karlsson@retrocoder.se>
rem Copyright (c) 2021 Skywalker

rem Clean
rmdir /Q /S bin
mkdir bin

rem Build
echo *** Building kernel binary for ARM Cortex-M3 ***

rem Compiling / Assembling
arm-none-eabi-gcc -O1 -c -mcpu=cortex-m3 -mthumb hello.c -o bin/hello.o

rem Linking
arm-none-eabi-ld -T hello.ld bin/hello.o -o bin/hello.elf
arm-none-eabi-objcopy -O binary bin/hello.elf bin/hello.bin

rem Run
echo *** Run image in qemu-arm ***
qemu-system-arm -cpu cortex-m3 -machine lm3s811evb -nographic -kernel bin/hello.bin


rem License
rem
rem This program is free software: you can redistribute it and/or modify it
rem under the terms of the GNU General Public License version 2 as published by
rem the Free Software Foundation.
rem
rem This program is distributed in the hope that it will be useful,
rem but WITHOUT ANY WARRANTY; without even the implied warranty of
rem MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
rem See the GNU General Public License for more details.
rem
rem You should have received a copy of the GNU General Public License along with
rem this program. If not, see <http://www.gnu.org/licenses/>
rem or write to the Free Software Foundation, Inc.,
rem 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
