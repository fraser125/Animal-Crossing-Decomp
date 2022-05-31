lbl_8059F360:
/* 8059F360  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8059F364  7C 08 02 A6 */	mflr r0
/* 8059F368  90 01 00 24 */	stw r0, 0x24(r1)
/* 8059F36C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059F370  3B E0 00 00 */	li r31, 0
/* 8059F374  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059F378  7C 7E 1B 78 */	mr r30, r3
/* 8059F37C  38 61 00 08 */	addi r3, r1, 8
/* 8059F380  4B E3 CE 69 */	bl mPlib_Check_DigScoop
/* 8059F384  2C 03 00 01 */	cmpwi r3, 1
/* 8059F388  40 82 00 3C */	bne lbl_8059F3C4
/* 8059F38C  C0 61 00 08 */	lfs f3, 8(r1)
/* 8059F390  3C 60 80 65 */	lis r3, lit_444@ha /* 0x8064A214@ha */
/* 8059F394  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8059F398  C0 41 00 10 */	lfs f2, 0x10(r1)
/* 8059F39C  C0 3E 00 30 */	lfs f1, 0x30(r30)
/* 8059F3A0  EC 63 00 28 */	fsubs f3, f3, f0
/* 8059F3A4  C0 03 A2 14 */	lfs f0, lit_444@l(r3)  /* 0x8064A214@l */
/* 8059F3A8  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059F3AC  EC 43 00 F2 */	fmuls f2, f3, f3
/* 8059F3B0  EC 21 00 72 */	fmuls f1, f1, f1
/* 8059F3B4  EC 22 08 2A */	fadds f1, f2, f1
/* 8059F3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059F3BC  40 80 00 08 */	bge lbl_8059F3C4
/* 8059F3C0  3B E0 00 01 */	li r31, 1
lbl_8059F3C4:
/* 8059F3C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8059F3C8  7F E3 FB 78 */	mr r3, r31
/* 8059F3CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059F3D0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059F3D4  7C 08 03 A6 */	mtlr r0
/* 8059F3D8  38 21 00 20 */	addi r1, r1, 0x20
/* 8059F3DC  4E 80 00 20 */	blr 
