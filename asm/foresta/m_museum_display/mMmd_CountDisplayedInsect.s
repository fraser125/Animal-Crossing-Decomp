lbl_803C7EE8:
/* 803C7EE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7EEC  7C 08 02 A6 */	mflr r0
/* 803C7EF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7EF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7EF8  3B E0 00 00 */	li r31, 0
/* 803C7EFC  93 C1 00 08 */	stw r30, 8(r1)
/* 803C7F00  3B C0 00 00 */	li r30, 0
lbl_803C7F04:
/* 803C7F04  7F E3 FB 78 */	mr r3, r31
/* 803C7F08  4B FF F5 71 */	bl mMmd_InsectInfo
/* 803C7F0C  2C 03 00 01 */	cmpwi r3, 1
/* 803C7F10  41 80 00 10 */	blt lbl_803C7F20
/* 803C7F14  2C 03 00 05 */	cmpwi r3, 5
/* 803C7F18  41 81 00 08 */	bgt lbl_803C7F20
/* 803C7F1C  3B DE 00 01 */	addi r30, r30, 1
lbl_803C7F20:
/* 803C7F20  3B FF 00 01 */	addi r31, r31, 1
/* 803C7F24  2C 1F 00 28 */	cmpwi r31, 0x28
/* 803C7F28  41 80 FF DC */	blt lbl_803C7F04
/* 803C7F2C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7F30  7F C3 F3 78 */	mr r3, r30
/* 803C7F34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C7F38  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C7F3C  7C 08 03 A6 */	mtlr r0
/* 803C7F40  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7F44  4E 80 00 20 */	blr 
