lbl_805A095C:
/* 805A095C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805A0960  7C 08 02 A6 */	mflr r0
/* 805A0964  90 01 00 24 */	stw r0, 0x24(r1)
/* 805A0968  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805A096C  7C 7F 1B 78 */	mr r31, r3
/* 805A0970  3C 60 80 65 */	lis r3, lit_407@ha /* 0x8064A2C4@ha */
/* 805A0974  80 BF 00 28 */	lwz r5, 0x28(r31)
/* 805A0978  38 83 A2 C4 */	addi r4, r3, lit_407@l /* 0x8064A2C4@l */
/* 805A097C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A0980  38 61 00 08 */	addi r3, r1, 8
/* 805A0984  C0 24 00 00 */	lfs f1, 0(r4)
/* 805A0988  90 A1 00 08 */	stw r5, 8(r1)
/* 805A098C  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A0990  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A0994  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A0998  4B DE EE 89 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 805A099C  C0 5F 02 44 */	lfs f2, 0x244(r31)
/* 805A09A0  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 805A09A4  EC 22 08 2A */	fadds f1, f2, f1
/* 805A09A8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805A09AC  40 81 00 10 */	ble lbl_805A09BC
/* 805A09B0  3C 60 80 65 */	lis r3, lit_475@ha /* 0x8064A2E0@ha */
/* 805A09B4  C0 03 A2 E0 */	lfs f0, lit_475@l(r3)  /* 0x8064A2E0@l */
/* 805A09B8  48 00 00 0C */	b lbl_805A09C4
lbl_805A09BC:
/* 805A09BC  3C 60 80 65 */	lis r3, lit_476@ha /* 0x8064A2E4@ha */
/* 805A09C0  C0 03 A2 E4 */	lfs f0, lit_476@l(r3)  /* 0x8064A2E4@l */
lbl_805A09C4:
/* 805A09C4  D0 1F 00 7C */	stfs f0, 0x7c(r31)
/* 805A09C8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805A09CC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 805A09D0  7C 08 03 A6 */	mtlr r0
/* 805A09D4  38 21 00 20 */	addi r1, r1, 0x20
/* 805A09D8  4E 80 00 20 */	blr 
