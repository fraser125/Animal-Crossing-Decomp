lbl_803BCBB0:
/* 803BCBB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803BCBB4  7C 08 02 A6 */	mflr r0
/* 803BCBB8  7C 87 23 78 */	mr r7, r4
/* 803BCBBC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803BCBC0  38 81 00 08 */	addi r4, r1, 8
/* 803BCBC4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803BCBC8  7C 7F 1B 78 */	mr r31, r3
/* 803BCBCC  38 7F 00 32 */	addi r3, r31, 0x32
/* 803BCBD0  38 BF 01 0A */	addi r5, r31, 0x10a
/* 803BCBD4  38 DF 00 4A */	addi r6, r31, 0x4a
/* 803BCBD8  4B FF 5B 5D */	bl mHandbill_Load_HandbillFromRom
/* 803BCBDC  80 01 00 08 */	lwz r0, 8(r1)
/* 803BCBE0  98 1F 00 2F */	stb r0, 0x2f(r31)
/* 803BCBE4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803BCBE8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803BCBEC  7C 08 03 A6 */	mtlr r0
/* 803BCBF0  38 21 00 20 */	addi r1, r1, 0x20
/* 803BCBF4  4E 80 00 20 */	blr 
