lbl_8060D0E8:
/* 8060D0E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8060D0EC  7C 08 02 A6 */	mflr r0
/* 8060D0F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8060D0F4  A8 03 00 00 */	lha r0, 0(r3)
/* 8060D0F8  2C 00 00 38 */	cmpwi r0, 0x38
/* 8060D0FC  40 82 00 10 */	bne lbl_8060D10C
/* 8060D100  38 83 00 10 */	addi r4, r3, 0x10
/* 8060D104  38 60 00 2C */	li r3, 0x2c
/* 8060D108  48 02 0E A1 */	bl sAdo_OngenTrgStart
lbl_8060D10C:
/* 8060D10C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8060D110  7C 08 03 A6 */	mtlr r0
/* 8060D114  38 21 00 10 */	addi r1, r1, 0x10
/* 8060D118  4E 80 00 20 */	blr 
