lbl_803C7F48:
/* 803C7F48  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7F4C  7C 08 02 A6 */	mflr r0
/* 803C7F50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7F54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7F58  3B E0 00 00 */	li r31, 0
/* 803C7F5C  93 C1 00 08 */	stw r30, 8(r1)
/* 803C7F60  3B C0 00 00 */	li r30, 0
lbl_803C7F64:
/* 803C7F64  7F E3 FB 78 */	mr r3, r31
/* 803C7F68  4B FF F5 61 */	bl mMmd_FishInfo
/* 803C7F6C  2C 03 00 01 */	cmpwi r3, 1
/* 803C7F70  41 80 00 10 */	blt lbl_803C7F80
/* 803C7F74  2C 03 00 05 */	cmpwi r3, 5
/* 803C7F78  41 81 00 08 */	bgt lbl_803C7F80
/* 803C7F7C  3B DE 00 01 */	addi r30, r30, 1
lbl_803C7F80:
/* 803C7F80  3B FF 00 01 */	addi r31, r31, 1
/* 803C7F84  2C 1F 00 28 */	cmpwi r31, 0x28
/* 803C7F88  41 80 FF DC */	blt lbl_803C7F64
/* 803C7F8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7F90  7F C3 F3 78 */	mr r3, r30
/* 803C7F94  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C7F98  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C7F9C  7C 08 03 A6 */	mtlr r0
/* 803C7FA0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7FA4  4E 80 00 20 */	blr 
