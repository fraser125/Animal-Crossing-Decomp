lbl_8059C634:
/* 8059C634  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059C638  7C 08 02 A6 */	mflr r0
/* 8059C63C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059C640  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8059C644  7C 9F 23 78 */	mr r31, r4
/* 8059C648  93 C1 00 08 */	stw r30, 8(r1)
/* 8059C64C  7C 7E 1B 78 */	mr r30, r3
/* 8059C650  4B E4 20 1D */	bl mPlib_Check_stung_mosquito
/* 8059C654  2C 03 00 00 */	cmpwi r3, 0
/* 8059C658  40 82 00 14 */	bne lbl_8059C66C
/* 8059C65C  7F C3 F3 78 */	mr r3, r30
/* 8059C660  7F E5 FB 78 */	mr r5, r31
/* 8059C664  38 80 00 00 */	li r4, 0
/* 8059C668  48 00 01 59 */	bl aIKA_setupAction
lbl_8059C66C:
/* 8059C66C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059C670  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8059C674  83 C1 00 08 */	lwz r30, 8(r1)
/* 8059C678  7C 08 03 A6 */	mtlr r0
/* 8059C67C  38 21 00 10 */	addi r1, r1, 0x10
/* 8059C680  4E 80 00 20 */	blr 
