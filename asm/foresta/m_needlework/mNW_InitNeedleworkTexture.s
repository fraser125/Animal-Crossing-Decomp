lbl_803C9A44:
/* 803C9A44  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9A48  7C 08 02 A6 */	mflr r0
/* 803C9A4C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C9A50  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9A54  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9A58  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 803C9A5C  93 C1 00 08 */	stw r30, 8(r1)
/* 803C9A60  3B C0 00 00 */	li r30, 0
lbl_803C9A64:
/* 803C9A64  57 C0 07 7E */	clrlwi r0, r30, 0x1d
/* 803C9A68  7F C4 F3 78 */	mr r4, r30
/* 803C9A6C  1C 00 02 20 */	mulli r0, r0, 0x220
/* 803C9A70  7C 7F 02 14 */	add r3, r31, r0
/* 803C9A74  3C 63 00 02 */	addis r3, r3, 2
/* 803C9A78  38 63 14 20 */	addi r3, r3, 0x1420
/* 803C9A7C  4B FF FF 79 */	bl mNW_CopyNeedleworkDefaultTexture
/* 803C9A80  3B DE 00 01 */	addi r30, r30, 1
/* 803C9A84  2C 1E 00 08 */	cmpwi r30, 8
/* 803C9A88  41 80 FF DC */	blt lbl_803C9A64
/* 803C9A8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9A90  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9A94  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C9A98  7C 08 03 A6 */	mtlr r0
/* 803C9A9C  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9AA0  4E 80 00 20 */	blr 
