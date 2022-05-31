lbl_803C7E88:
/* 803C7E88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C7E8C  7C 08 02 A6 */	mflr r0
/* 803C7E90  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C7E94  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C7E98  3B E0 00 00 */	li r31, 0
/* 803C7E9C  93 C1 00 08 */	stw r30, 8(r1)
/* 803C7EA0  3B C0 00 00 */	li r30, 0
lbl_803C7EA4:
/* 803C7EA4  7F E3 FB 78 */	mr r3, r31
/* 803C7EA8  4B FF F5 81 */	bl mMmd_ArtInfo
/* 803C7EAC  2C 03 00 01 */	cmpwi r3, 1
/* 803C7EB0  41 80 00 10 */	blt lbl_803C7EC0
/* 803C7EB4  2C 03 00 05 */	cmpwi r3, 5
/* 803C7EB8  41 81 00 08 */	bgt lbl_803C7EC0
/* 803C7EBC  3B DE 00 01 */	addi r30, r30, 1
lbl_803C7EC0:
/* 803C7EC0  3B FF 00 01 */	addi r31, r31, 1
/* 803C7EC4  2C 1F 00 0F */	cmpwi r31, 0xf
/* 803C7EC8  41 80 FF DC */	blt lbl_803C7EA4
/* 803C7ECC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C7ED0  7F C3 F3 78 */	mr r3, r30
/* 803C7ED4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C7ED8  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C7EDC  7C 08 03 A6 */	mtlr r0
/* 803C7EE0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C7EE4  4E 80 00 20 */	blr 
