.include "macros.inc"

.section .text

.org 0x80060D7C

.global osContSetCh
osContSetCh:
/* 80060D7C 0005DCDC  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 80060D80 0005DCE0  38 80 00 04 */	li r4, 4
/* 80060D84 0005DCE4  28 00 00 04 */	cmplwi r0, 4
/* 80060D88 0005DCE8  41 81 00 08 */	bgt lbl_80060D90
/* 80060D8C 0005DCEC  7C 64 1B 78 */	mr r4, r3
lbl_80060D90:
/* 80060D90 0005DCF0  98 8D 8B 0C */	stb r4, lbl_8021868C-_SDA_BASE_(r13)
/* 80060D94 0005DCF4  38 60 00 00 */	li r3, 0
/* 80060D98 0005DCF8  4E 80 00 20 */	blr 
