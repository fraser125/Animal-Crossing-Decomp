lbl_8056035C:
/* 8056035C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80560360  7C 08 02 A6 */	mflr r0
/* 80560364  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560368  80 03 01 98 */	lwz r0, 0x198(r3)
/* 8056036C  2C 00 00 01 */	cmpwi r0, 1
/* 80560370  40 82 00 0C */	bne lbl_8056037C
/* 80560374  38 A0 00 0D */	li r5, 0xd
/* 80560378  48 00 0A 79 */	bl aNM2_setupAction
lbl_8056037C:
/* 8056037C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80560380  7C 08 03 A6 */	mtlr r0
/* 80560384  38 21 00 10 */	addi r1, r1, 0x10
/* 80560388  4E 80 00 20 */	blr 
