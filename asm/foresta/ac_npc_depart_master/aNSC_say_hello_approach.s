lbl_8054F7F8:
/* 8054F7F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F7FC  7C 08 02 A6 */	mflr r0
/* 8054F800  3C A0 80 65 */	lis r5, lit_1355@ha /* 0x80649528@ha */
/* 8054F804  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F808  C0 05 95 28 */	lfs f0, lit_1355@l(r5)  /* 0x80649528@l */
/* 8054F80C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054F810  7C 7F 1B 78 */	mr r31, r3
/* 8054F814  93 C1 00 08 */	stw r30, 8(r1)
/* 8054F818  7C 9E 23 78 */	mr r30, r4
/* 8054F81C  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 8054F820  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8054F824  40 81 00 14 */	ble lbl_8054F838
/* 8054F828  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 8054F82C  38 A0 00 02 */	li r5, 2
/* 8054F830  48 00 30 05 */	bl aNSC_setupAction
/* 8054F834  48 00 00 3C */	b lbl_8054F870
lbl_8054F838:
/* 8054F838  7F E4 FB 78 */	mr r4, r31
/* 8054F83C  38 60 00 08 */	li r3, 8
/* 8054F840  4B E4 AA 25 */	bl mDemo_Check
/* 8054F844  2C 03 00 00 */	cmpwi r3, 0
/* 8054F848  40 82 00 28 */	bne lbl_8054F870
/* 8054F84C  7F E4 FB 78 */	mr r4, r31
/* 8054F850  38 60 00 07 */	li r3, 7
/* 8054F854  4B E4 AA 11 */	bl mDemo_Check
/* 8054F858  2C 03 00 00 */	cmpwi r3, 0
/* 8054F85C  40 82 00 14 */	bne lbl_8054F870
/* 8054F860  7F E3 FB 78 */	mr r3, r31
/* 8054F864  7F C4 F3 78 */	mr r4, r30
/* 8054F868  38 A0 00 02 */	li r5, 2
/* 8054F86C  48 00 2F C9 */	bl aNSC_setupAction
lbl_8054F870:
/* 8054F870  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F874  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054F878  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054F87C  7C 08 03 A6 */	mtlr r0
/* 8054F880  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F884  4E 80 00 20 */	blr 
