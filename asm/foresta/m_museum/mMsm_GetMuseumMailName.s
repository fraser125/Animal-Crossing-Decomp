lbl_803C6164:
/* 803C6164  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C6168  7C 08 02 A6 */	mflr r0
/* 803C616C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C6170  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803C6174  7C 7F 1B 78 */	mr r31, r3
/* 803C6178  48 01 9F 15 */	bl mPr_ClearPersonalID
/* 803C617C  3C 80 80 66 */	lis r4, data_8065A180@ha /* 0x8065A180@ha */
/* 803C6180  7F E3 FB 78 */	mr r3, r31
/* 803C6184  38 84 A1 80 */	addi r4, r4, data_8065A180@l /* 0x8065A180@l */
/* 803C6188  48 01 9D 35 */	bl mPr_CopyPlayerName
/* 803C618C  38 00 00 02 */	li r0, 2
/* 803C6190  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803C6194  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C6198  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803C619C  7C 08 03 A6 */	mtlr r0
/* 803C61A0  38 21 00 10 */	addi r1, r1, 0x10
/* 803C61A4  4E 80 00 20 */	blr 
