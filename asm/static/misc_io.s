.include "macros.inc"

.section .text

.org 0x8009D444

.global __stdio_atexit
__stdio_atexit:
/* 8009D444 0009A3A4  3C 60 80 0A */	lis r3, __close_all@ha
/* 8009D448 0009A3A8  38 03 B7 40 */	addi r0, r3, __close_all@l
/* 8009D44C 0009A3AC  90 0D 90 30 */	stw r0, __stdio_exit-_SDA_BASE_(r13)
/* 8009D450 0009A3B0  4E 80 00 20 */	blr 
