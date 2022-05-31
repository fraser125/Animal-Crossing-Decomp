lbl_803E1D64:
/* 803E1D64  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E1D68  7C 08 02 A6 */	mflr r0
/* 803E1D6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E1D70  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E1D74  7C 9F 23 78 */	mr r31, r4
/* 803E1D78  93 C1 00 08 */	stw r30, 8(r1)
/* 803E1D7C  7C 7E 1B 78 */	mr r30, r3
/* 803E1D80  4B FF F7 7D */	bl mPr_SendMotherMailDate
/* 803E1D84  2C 03 00 00 */	cmpwi r3, 0
/* 803E1D88  40 82 00 10 */	bne lbl_803E1D98
/* 803E1D8C  7F C3 F3 78 */	mr r3, r30
/* 803E1D90  7F E4 FB 78 */	mr r4, r31
/* 803E1D94  4B FF FE 61 */	bl mPr_SendMotherMailNormal
lbl_803E1D98:
/* 803E1D98  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E1D9C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E1DA0  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E1DA4  7C 08 03 A6 */	mtlr r0
/* 803E1DA8  38 21 00 10 */	addi r1, r1, 0x10
/* 803E1DAC  4E 80 00 20 */	blr 
