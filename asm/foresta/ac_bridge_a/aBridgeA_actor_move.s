lbl_805A99CC:
/* 805A99CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A99D0  7C 08 02 A6 */	mflr r0
/* 805A99D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A99D8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A99DC  7C 7F 1B 78 */	mr r31, r3
/* 805A99E0  4B FF FD 09 */	bl aBridge_player_check
/* 805A99E4  3C 60 80 65 */	lis r3, lit_533@ha /* 0x8064A5DC@ha */
/* 805A99E8  C0 1F 02 C8 */	lfs f0, 0x2c8(r31)
/* 805A99EC  38 83 A5 DC */	addi r4, r3, lit_533@l /* 0x8064A5DC@l */
/* 805A99F0  38 7F 01 78 */	addi r3, r31, 0x178
/* 805A99F4  C0 24 00 00 */	lfs f1, 0(r4)
/* 805A99F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 805A99FC  D0 1F 01 84 */	stfs f0, 0x184(r31)
/* 805A9A00  4B DC 76 15 */	bl cKF_SkeletonInfo_R_play
/* 805A9A04  3C 60 80 65 */	lis r3, lit_473@ha /* 0x8064A5A0@ha */
/* 805A9A08  C0 1F 02 CC */	lfs f0, 0x2cc(r31)
/* 805A9A0C  C0 23 A5 A0 */	lfs f1, lit_473@l(r3)  /* 0x8064A5A0@l */
/* 805A9A10  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 805A9A14  40 82 00 10 */	bne lbl_805A9A24
/* 805A9A18  D0 3F 02 CC */	stfs f1, 0x2cc(r31)
/* 805A9A1C  D0 3F 02 C8 */	stfs f1, 0x2c8(r31)
/* 805A9A20  D0 3F 01 88 */	stfs f1, 0x188(r31)
lbl_805A9A24:
/* 805A9A24  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A9A28  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A9A2C  7C 08 03 A6 */	mtlr r0
/* 805A9A30  38 21 00 10 */	addi r1, r1, 0x10
/* 805A9A34  4E 80 00 20 */	blr 
