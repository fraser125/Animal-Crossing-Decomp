lbl_803CE5E8:
/* 803CE5E8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803CE5EC  7C 08 02 A6 */	mflr r0
/* 803CE5F0  38 E0 00 D7 */	li r7, 0xd7
/* 803CE5F4  90 01 00 24 */	stw r0, 0x24(r1)
/* 803CE5F8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803CE5FC  7C 9F 23 78 */	mr r31, r4
/* 803CE600  38 81 00 08 */	addi r4, r1, 8
/* 803CE604  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803CE608  7C 7E 1B 78 */	mr r30, r3
/* 803CE60C  38 7E 00 32 */	addi r3, r30, 0x32
/* 803CE610  38 BE 01 0A */	addi r5, r30, 0x10a
/* 803CE614  38 DE 00 4A */	addi r6, r30, 0x4a
/* 803CE618  4B FE 41 1D */	bl mHandbill_Load_HandbillFromRom
/* 803CE61C  80 81 00 08 */	lwz r4, 8(r1)
/* 803CE620  38 A0 00 00 */	li r5, 0
/* 803CE624  38 00 00 01 */	li r0, 1
/* 803CE628  7F C3 F3 78 */	mr r3, r30
/* 803CE62C  98 9E 00 2F */	stb r4, 0x2f(r30)
/* 803CE630  7F E4 FB 78 */	mr r4, r31
/* 803CE634  98 BE 00 2E */	stb r5, 0x2e(r30)
/* 803CE638  98 1E 00 30 */	stb r0, 0x30(r30)
/* 803CE63C  48 01 1A E5 */	bl mPr_CopyPersonalID
/* 803CE640  38 00 00 00 */	li r0, 0
/* 803CE644  38 60 1D AC */	li r3, 0x1dac
/* 803CE648  98 1E 00 14 */	stb r0, 0x14(r30)
/* 803CE64C  38 00 00 16 */	li r0, 0x16
/* 803CE650  B0 7E 00 2C */	sth r3, 0x2c(r30)
/* 803CE654  98 1E 00 31 */	stb r0, 0x31(r30)
/* 803CE658  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803CE65C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803CE660  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803CE664  7C 08 03 A6 */	mtlr r0
/* 803CE668  38 21 00 20 */	addi r1, r1, 0x20
/* 803CE66C  4E 80 00 20 */	blr 
