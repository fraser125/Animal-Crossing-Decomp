lbl_803BC814:
/* 803BC814  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC818  7C 08 02 A6 */	mflr r0
/* 803BC81C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC820  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC824  7C 7F 1B 78 */	mr r31, r3
/* 803BC828  38 7F 00 16 */	addi r3, r31, 0x16
/* 803BC82C  48 02 38 F5 */	bl mPr_CopyPersonalID
/* 803BC830  38 00 00 00 */	li r0, 0
/* 803BC834  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 803BC838  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC83C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC840  7C 08 03 A6 */	mtlr r0
/* 803BC844  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC848  4E 80 00 20 */	blr 
