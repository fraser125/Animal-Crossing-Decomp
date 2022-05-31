lbl_803B0C3C:
/* 803B0C3C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803B0C40  7C 08 02 A6 */	mflr r0
/* 803B0C44  90 01 00 14 */	stw r0, 0x14(r1)
/* 803B0C48  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B0C4C  7C 7F 1B 78 */	mr r31, r3
/* 803B0C50  80 63 00 00 */	lwz r3, 0(r3)
/* 803B0C54  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 803B0C58  7C 63 02 14 */	add r3, r3, r0
/* 803B0C5C  88 03 00 02 */	lbz r0, 2(r3)
/* 803B0C60  90 1F 00 14 */	stw r0, 0x14(r31)
/* 803B0C64  80 7F 00 14 */	lwz r3, 0x14(r31)
/* 803B0C68  4B FF FF 6D */	bl mFontSentence_line_offset_calc
/* 803B0C6C  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 803B0C70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803B0C74  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B0C78  7C 08 03 A6 */	mtlr r0
/* 803B0C7C  38 21 00 10 */	addi r1, r1, 0x10
/* 803B0C80  4E 80 00 20 */	blr 
