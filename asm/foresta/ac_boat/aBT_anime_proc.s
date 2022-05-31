lbl_805A71EC:
/* 805A71EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A71F0  7C 08 02 A6 */	mflr r0
/* 805A71F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A71F8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A71FC  93 C1 00 08 */	stw r30, 8(r1)
/* 805A7200  7C 7E 1B 78 */	mr r30, r3
/* 805A7204  80 03 02 B4 */	lwz r0, 0x2b4(r3)
/* 805A7208  2C 00 00 08 */	cmpwi r0, 8
/* 805A720C  40 82 00 6C */	bne lbl_805A7278
/* 805A7210  80 7E 01 4C */	lwz r3, 0x14c(r30)
/* 805A7214  80 63 01 88 */	lwz r3, 0x188(r3)
/* 805A7218  28 03 00 00 */	cmplwi r3, 0
/* 805A721C  41 82 00 54 */	beq lbl_805A7270
/* 805A7220  80 03 07 14 */	lwz r0, 0x714(r3)
/* 805A7224  2C 00 00 7B */	cmpwi r0, 0x7b
/* 805A7228  40 82 00 48 */	bne lbl_805A7270
/* 805A722C  3B E3 01 A8 */	addi r31, r3, 0x1a8
/* 805A7230  3C 60 80 65 */	lis r3, lit_499@ha /* 0x8064A4D8@ha */
/* 805A7234  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 805A7238  C0 23 A4 D8 */	lfs f1, lit_499@l(r3)  /* 0x8064A4D8@l */
/* 805A723C  7F E3 FB 78 */	mr r3, r31
/* 805A7240  D0 1E 01 88 */	stfs f0, 0x188(r30)
/* 805A7244  4B DC 92 45 */	bl cKF_FrameControl_passCheck_now
/* 805A7248  2C 03 00 01 */	cmpwi r3, 1
/* 805A724C  41 82 00 1C */	beq lbl_805A7268
/* 805A7250  3C 80 80 65 */	lis r4, lit_500@ha /* 0x8064A4DC@ha */
/* 805A7254  7F E3 FB 78 */	mr r3, r31
/* 805A7258  C0 24 A4 DC */	lfs f1, lit_500@l(r4)  /* 0x8064A4DC@l */
/* 805A725C  4B DC 92 2D */	bl cKF_FrameControl_passCheck_now
/* 805A7260  2C 03 00 01 */	cmpwi r3, 1
/* 805A7264  40 82 00 0C */	bne lbl_805A7270
lbl_805A7268:
/* 805A7268  38 00 01 90 */	li r0, 0x190
/* 805A726C  90 1E 02 BC */	stw r0, 0x2bc(r30)
lbl_805A7270:
/* 805A7270  38 7E 01 78 */	addi r3, r30, 0x178
/* 805A7274  4B DC 9D A1 */	bl cKF_SkeletonInfo_R_play
lbl_805A7278:
/* 805A7278  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A727C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A7280  83 C1 00 08 */	lwz r30, 8(r1)
/* 805A7284  7C 08 03 A6 */	mtlr r0
/* 805A7288  38 21 00 10 */	addi r1, r1, 0x10
/* 805A728C  4E 80 00 20 */	blr 
