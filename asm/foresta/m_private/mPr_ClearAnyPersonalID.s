lbl_803E00D0:
/* 803E00D0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803E00D4  7C 08 02 A6 */	mflr r0
/* 803E00D8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803E00DC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803E00E0  7C 9F 23 78 */	mr r31, r4
/* 803E00E4  93 C1 00 08 */	stw r30, 8(r1)
/* 803E00E8  7C 7E 1B 78 */	mr r30, r3
/* 803E00EC  48 00 00 14 */	b lbl_803E0100
lbl_803E00F0:
/* 803E00F0  7F C3 F3 78 */	mr r3, r30
/* 803E00F4  4B FF FF 99 */	bl mPr_ClearPersonalID
/* 803E00F8  3B DE 00 14 */	addi r30, r30, 0x14
/* 803E00FC  3B FF FF FF */	addi r31, r31, -1
lbl_803E0100:
/* 803E0100  2C 1F 00 00 */	cmpwi r31, 0
/* 803E0104  40 82 FF EC */	bne lbl_803E00F0
/* 803E0108  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803E010C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803E0110  83 C1 00 08 */	lwz r30, 8(r1)
/* 803E0114  7C 08 03 A6 */	mtlr r0
/* 803E0118  38 21 00 10 */	addi r1, r1, 0x10
/* 803E011C  4E 80 00 20 */	blr 
