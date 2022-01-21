.include "macros.inc"

.section .text

.org 0x800A194C

.global copysign
copysign:
/* 800A194C 0009E8AC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 800A1950 0009E8B0  D8 21 00 08 */	stfd f1, 8(r1)
/* 800A1954 0009E8B4  D8 41 00 10 */	stfd f2, 0x10(r1)
/* 800A1958 0009E8B8  80 61 00 08 */	lwz r3, 8(r1)
/* 800A195C 0009E8BC  80 01 00 10 */	lwz r0, 0x10(r1)
/* 800A1960 0009E8C0  50 60 00 7E */	rlwimi r0, r3, 0, 1, 0x1f
/* 800A1964 0009E8C4  90 01 00 08 */	stw r0, 8(r1)
/* 800A1968 0009E8C8  C8 21 00 08 */	lfd f1, 8(r1)
/* 800A196C 0009E8CC  38 21 00 20 */	addi r1, r1, 0x20
/* 800A1970 0009E8D0  4E 80 00 20 */	blr 
