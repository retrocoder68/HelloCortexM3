/* Simple hello world app for ARM Cortex-M3
 * Author Skywalker a.k.a. Jörgen karlsson<j.karlsson@retrocoder.se>
 * Copyright (c) 2021 Skywalker
 */

ENTRY(reset)
SECTIONS {
    . = 0x0;
    .vectors         : { *(.vectors) }
    . = 0x100;
    .text            : { *(.text) }
    .data   ALIGN(4) : { *(.data) }
    .rodata ALIGN(4) : { *(.rodata) }
}

/* License
 * 
 * This program is free software: you can redistribute it and/or modify it
 * under the terms of the GNU General Public License version 2 as published by
 * the Free Software Foundation.
 * 
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
 * See the GNU General Public License for more details.
 * 
 * You should have received a copy of the GNU General Public License along with
 * this program. If not, see <http://www.gnu.org/licenses/>
 * or write to the Free Software Foundation, Inc.,
 * 51 Franklin Street, Fifth Floor, Boston, MA 02110-1301 USA.
 */
