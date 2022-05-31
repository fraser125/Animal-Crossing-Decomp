lbl_804A4358:
/* 804A4358  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A435C  7C 08 02 A6 */	mflr r0
/* 804A4360  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A4364  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A4368  7C BF 2B 78 */	mr r31, r5
/* 804A436C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804A4370  7C 9E 23 78 */	mr r30, r4
/* 804A4374  38 81 00 08 */	addi r4, r1, 8
/* 804A4378  80 C3 00 28 */	lwz r6, 0x28(r3)
/* 804A437C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 804A4380  90 C1 00 08 */	stw r6, 8(r1)
/* 804A4384  90 01 00 0C */	stw r0, 0xc(r1)
/* 804A4388  80 03 00 30 */	lwz r0, 0x30(r3)
/* 804A438C  7F C3 F3 78 */	mr r3, r30
/* 804A4390  90 01 00 10 */	stw r0, 0x10(r1)
/* 804A4394  4B EE B6 C1 */	bl mCoBG_GetBgNorm_FromWpos
/* 804A4398  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804A439C  C0 5E 00 00 */	lfs f2, 0(r30)
/* 804A43A0  4B F6 7C 61 */	bl atans_table
/* 804A43A4  7C 1F 18 50 */	subf r0, r31, r3
/* 804A43A8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A43AC  7C 03 07 34 */	extsh r3, r0
/* 804A43B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A43B4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804A43B8  7C 08 03 A6 */	mtlr r0
/* 804A43BC  38 21 00 20 */	addi r1, r1, 0x20
/* 804A43C0  4E 80 00 20 */	blr 
