.include "macros.inc"

.section .text

.org 0x800A8B2C

.global GetUseSerialIO
GetUseSerialIO:
/* 800A8B2C 000A5A8C  3C 60 80 21 */	lis r3, lbl_8020D788@ha
/* 800A8B30 000A5A90  38 63 D7 88 */	addi r3, r3, lbl_8020D788@l
/* 800A8B34 000A5A94  88 63 00 00 */	lbz r3, 0(r3)
/* 800A8B38 000A5A98  4E 80 00 20 */	blr 

.global SetUseSerialIO
SetUseSerialIO:
/* 800A8B3C 000A5A9C  3C 80 80 21 */	lis r4, lbl_8020D788@ha
/* 800A8B40 000A5AA0  98 64 D7 88 */	stb r3, lbl_8020D788@l(r4)
/* 800A8B44 000A5AA4  4E 80 00 20 */	blr 
