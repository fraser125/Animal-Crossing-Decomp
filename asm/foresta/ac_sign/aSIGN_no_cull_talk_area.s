lbl_804A1354:
/* 804A1354  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A1358  7C 08 02 A6 */	mflr r0
/* 804A135C  7C 83 23 78 */	mr r3, r4
/* 804A1360  7C A4 2B 78 */	mr r4, r5
/* 804A1364  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A1368  7C C0 33 78 */	mr r0, r6
/* 804A136C  7C 65 1B 78 */	mr r5, r3
/* 804A1370  7C E6 3B 78 */	mr r6, r7
/* 804A1374  7C 07 03 78 */	mr r7, r0
/* 804A1378  38 61 00 08 */	addi r3, r1, 8
/* 804A137C  4B F0 49 79 */	bl mFI_BkandUtNum2CenterWpos
/* 804A1380  3C 60 80 64 */	lis r3, lit_492@ha /* 0x80645C44@ha */
/* 804A1384  C0 21 00 08 */	lfs f1, 8(r1)
/* 804A1388  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 804A138C  C0 63 5C 44 */	lfs f3, lit_492@l(r3)  /* 0x80645C44@l */
/* 804A1390  4B ED DC 21 */	bl Camera2_CheckEnterCullingArea
/* 804A1394  7C 60 00 34 */	cntlzw r0, r3
/* 804A1398  54 03 D9 7E */	srwi r3, r0, 5
/* 804A139C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A13A0  7C 08 03 A6 */	mtlr r0
/* 804A13A4  38 21 00 20 */	addi r1, r1, 0x20
/* 804A13A8  4E 80 00 20 */	blr 
