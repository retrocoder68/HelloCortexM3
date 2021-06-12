/* Simple hello world app for ARM Cortex-M3
 * Author Skywalker a.k.a. Jörgen karlsson<j.karlsson@retrocoder.se>
 * Copyright (c) 2021 Skywalker
 */

/* LM3S811 Memory map (not complete)
 *  - Start -   - End -     - Size -   - Comment -
 * 0x0000.0000 0x0000.FFFF 64 kb      On-chip Flash
 * 0x2000.0000 0x2000.1FFF  8 kb      On-chip SRAM
 * 0x4000.C000 0x4000.CFFF            UART0
 */
#define STACK_SIZE 0x400
#define STACK_TOP 0x2000000 + STACK_SIZE

/* UART Register Map (not complete)
 * - Offset -   - Name -        - Type -   - Reset -    - Description
 * 0x000        UARTDR          R/W        0x0000.0000   UART Data
 */
char *uart0 = (char*)0x4000C000;

void reset();
void main();

__attribute__((section(".vectors")))
void *vectors[] = {
    (void *)STACK_TOP,      /* Initial SP */
    reset,                  /* Reset */
};

void reset() {
    main();
    while(1);
}

void main() {
    char *s = "Hello, world!!\n";
    while(*s != '\0') {
        *uart0 = *s;
        s++;
    }
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
