lbl_8063D4CC:
/* 8063D4CC  2C 05 00 01 */	cmpwi r5, 1
/* 8063D4D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063D4D4  40 82 00 20 */	bne lbl_8063D4F4
/* 8063D4D8  C0 08 08 38 */	lfs f0, 0x838(r8)
/* 8063D4DC  A8 69 00 04 */	lha r3, 4(r9)
/* 8063D4E0  FC 00 00 1E */	fctiwz f0, f0
/* 8063D4E4  D8 01 00 08 */	stfd f0, 8(r1)
/* 8063D4E8  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8063D4EC  7C 03 02 14 */	add r0, r3, r0
/* 8063D4F0  B0 09 00 04 */	sth r0, 4(r9)
lbl_8063D4F4:
/* 8063D4F4  38 60 00 01 */	li r3, 1
/* 8063D4F8  38 21 00 10 */	addi r1, r1, 0x10
/* 8063D4FC  4E 80 00 20 */	blr 
