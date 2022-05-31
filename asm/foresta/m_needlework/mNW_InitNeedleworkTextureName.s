lbl_803C9AE8:
/* 803C9AE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C9AEC  7C 08 02 A6 */	mflr r0
/* 803C9AF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803C9AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C9AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C9AFC  3B E3 85 38 */	addi r31, r3, common_data@l /* 0x81138538@l */
/* 803C9B00  93 C1 00 08 */	stw r30, 8(r1)
/* 803C9B04  3B C0 00 00 */	li r30, 0
lbl_803C9B08:
/* 803C9B08  57 C0 07 7E */	clrlwi r0, r30, 0x1d
/* 803C9B0C  38 BE 06 E7 */	addi r5, r30, 0x6e7
/* 803C9B10  1C 00 02 20 */	mulli r0, r0, 0x220
/* 803C9B14  38 80 00 10 */	li r4, 0x10
/* 803C9B18  7C 7F 02 14 */	add r3, r31, r0
/* 803C9B1C  3C 63 00 02 */	addis r3, r3, 2
/* 803C9B20  38 63 14 00 */	addi r3, r3, 0x1400
/* 803C9B24  48 02 51 A9 */	bl mString_Load_StringFromRom
/* 803C9B28  3B DE 00 01 */	addi r30, r30, 1
/* 803C9B2C  2C 1E 00 08 */	cmpwi r30, 8
/* 803C9B30  41 80 FF D8 */	blt lbl_803C9B08
/* 803C9B34  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C9B38  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C9B3C  83 C1 00 08 */	lwz r30, 8(r1)
/* 803C9B40  7C 08 03 A6 */	mtlr r0
/* 803C9B44  38 21 00 10 */	addi r1, r1, 0x10
/* 803C9B48  4E 80 00 20 */	blr 
