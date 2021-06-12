# Simple hello world app for ARM Cortex-M3

This example project shows the simplest possible C program that can be made for
an Arm Cortex-M3 SoC.
Well, that is not fully accurate. First of all it only works in Qemu and will
not work on real hardware, or at least it hasn't been tested on real hardware.
For it to run on real hardware I expect that there need to be a more complete
initialization of the UART hardware, clocks, vectors etc.

Secondly it is not really a proper C program either. Before making the jump to main all
memory areas, like data and bss, should be properly initialized.

Some of the information for this project was found in this question on stackoverflow
https://stackoverflow.com/questions/62939915/how-to-send-data-through-uart-of-lm3s811


# Prerequisites
## Arm GCC compiler
Install the Arm GCC compiler from
https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads
After installation add the bin directory to the PATH environment variable.

## Qemu
Install Qemu from https://www.qemu.org/download/#windows
After installation add the qemu directory to the PATH environment variable.


# Build and run
Open a shell and execute the build_and_run script. This script will build the binary and then run it
in qemu.

# Author and License
Author Skywalker a.k.a. Jörgen karlsson<j.karlsson@retrocoder.se>  
Copyright (c) 2021 Skywalker

This program is free software: you can redistribute it and/or modify it  
under the terms of the GNU General Public License version 2 as published by  
the Free Software Foundation.  
  
This program is distributed in the hope that it will be useful,  
but WITHOUT ANY WARRANTY; without even the implied warranty of  
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  
See the GNU General Public License for more details.  

You should have received a copy of the GNU General Public License along with  
this program. If not, see <http://www.gnu.org/licenses/>  
or write to the Free Software Foundation, Inc.,  
51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
