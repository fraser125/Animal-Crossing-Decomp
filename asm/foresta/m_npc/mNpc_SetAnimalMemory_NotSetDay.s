lbl_803CBCAC:
/* 803CBCAC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803CBCB0  7C 08 02 A6 */	mflr r0
/* 803CBCB4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803CBCB8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803CBCBC  7C BF 2B 79 */	or. r31, r5, r5
/* 803CBCC0  93 C1 00 08 */	stw r30, 8(r1)
/* 803CBCC4  7C 7E 1B 78 */	mr r30, r3
/* 803CBCC8  41 82 00 44 */	beq lbl_803CBD0C
/* 803CBCCC  7C 83 23 78 */	mr r3, r4
/* 803CBCD0  48 00 9F D9 */	bl mNpc_CheckIslandAnimalID
/* 803CBCD4  2C 03 00 00 */	cmpwi r3, 0
/* 803CBCD8  40 82 00 14 */	bne lbl_803CBCEC
/* 803CBCDC  7F E3 FB 78 */	mr r3, r31
/* 803CBCE0  38 80 00 01 */	li r4, 1
/* 803CBCE4  4B FF F9 D1 */	bl mNpc_ClearAnimalMemory
/* 803CBCE8  48 00 00 10 */	b lbl_803CBCF8
lbl_803CBCEC:
/* 803CBCEC  7F E3 FB 78 */	mr r3, r31
/* 803CBCF0  38 80 00 01 */	li r4, 1
/* 803CBCF4  4B FF FA 7D */	bl mNpc_ClearIslandAnimalMemory
lbl_803CBCF8:
/* 803CBCF8  7F E3 FB 78 */	mr r3, r31
/* 803CBCFC  7F C4 F3 78 */	mr r4, r30
/* 803CBD00  48 01 44 21 */	bl mPr_CopyPersonalID
/* 803CBD04  38 00 00 01 */	li r0, 1
/* 803CBD08  98 1F 00 30 */	stb r0, 0x30(r31)
lbl_803CBD0C:
/* 803CBD0C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803CBD10  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803CBD14  83 C1 00 08 */	lwz r30, 8(r1)
/* 803CBD18  7C 08 03 A6 */	mtlr r0
/* 803CBD1C  38 21 00 10 */	addi r1, r1, 0x10
/* 803CBD20  4E 80 00 20 */	blr 
