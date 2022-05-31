lbl_8056E4D4:
/* 8056E4D4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056E4D8  7C 08 02 A6 */	mflr r0
/* 8056E4DC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8056E4E0  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8056E4E4  2C 00 00 01 */	cmpwi r0, 1
/* 8056E4E8  40 82 00 0C */	bne lbl_8056E4F4
/* 8056E4EC  88 A3 09 99 */	lbz r5, 0x999(r3)
/* 8056E4F0  48 00 07 E1 */	bl aPMAN_setupAction
lbl_8056E4F4:
/* 8056E4F4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8056E4F8  7C 08 03 A6 */	mtlr r0
/* 8056E4FC  38 21 00 10 */	addi r1, r1, 0x10
/* 8056E500  4E 80 00 20 */	blr 
