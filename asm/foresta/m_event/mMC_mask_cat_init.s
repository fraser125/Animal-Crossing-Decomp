lbl_8039F20C:
/* 8039F20C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F210  7C 08 02 A6 */	mflr r0
/* 8039F214  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F218  38 80 02 40 */	li r4, 0x240
/* 8039F21C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F220  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F224  38 A0 00 00 */	li r5, 0
/* 8039F228  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039F22C  3F E3 00 02 */	addis r31, r3, 2
/* 8039F230  93 C1 00 08 */	stw r30, 8(r1)
/* 8039F234  8B DF 41 41 */	lbz r30, 0x4141(r31)
/* 8039F238  3B FF 3F 20 */	addi r31, r31, 0x3f20
/* 8039F23C  7F E3 FB 78 */	mr r3, r31
/* 8039F240  48 01 B8 09 */	bl mem_clear
/* 8039F244  7F E3 FB 78 */	mr r3, r31
/* 8039F248  48 04 0E 45 */	bl mPr_ClearPersonalID
/* 8039F24C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8039F250  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8039F254  3C 63 00 02 */	addis r3, r3, 2
/* 8039F258  9B C3 41 41 */	stb r30, 0x4141(r3)
/* 8039F25C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039F260  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039F264  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F268  7C 08 03 A6 */	mtlr r0
/* 8039F26C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F270  4E 80 00 20 */	blr 
