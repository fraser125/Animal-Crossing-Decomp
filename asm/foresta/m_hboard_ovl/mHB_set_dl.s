lbl_805E1084:
/* 805E1084  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805E1088  7C 08 02 A6 */	mflr r0
/* 805E108C  90 01 00 44 */	stw r0, 0x44(r1)
/* 805E1090  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805E1094  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805E1098  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 805E109C  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 805E10A0  39 61 00 20 */	addi r11, r1, 0x20
/* 805E10A4  4B AB 9E 2D */	bl func_8009AED0
/* 805E10A8  7C DF 33 78 */	mr r31, r6
/* 805E10AC  7C 9D 23 78 */	mr r29, r4
/* 805E10B0  C3 E6 00 18 */	lfs f31, 0x18(r6)
/* 805E10B4  7C 7C 1B 78 */	mr r28, r3
/* 805E10B8  C3 C6 00 1C */	lfs f30, 0x1c(r6)
/* 805E10BC  7C BE 2B 78 */	mr r30, r5
/* 805E10C0  FC 20 F8 90 */	fmr f1, f31
/* 805E10C4  7F A3 EB 78 */	mr r3, r29
/* 805E10C8  FC 40 F0 90 */	fmr f2, f30
/* 805E10CC  7F E4 FB 78 */	mr r4, r31
/* 805E10D0  4B FF FB 1D */	bl mHB_set_frame_dl
/* 805E10D4  80 9C 00 2C */	lwz r4, 0x2c(r28)
/* 805E10D8  3C A0 80 65 */	lis r5, lit_540@ha /* 0x8064B3C0@ha */
/* 805E10DC  38 E5 B3 C0 */	addi r7, r5, lit_540@l /* 0x8064B3C0@l */
/* 805E10E0  3C C0 80 65 */	lis r6, lit_541@ha /* 0x8064B3C4@ha */
/* 805E10E4  80 A4 09 84 */	lwz r5, 0x984(r4)
/* 805E10E8  7F 83 E3 78 */	mr r3, r28
/* 805E10EC  C0 06 B3 C4 */	lfs f0, lit_541@l(r6)  /* 0x8064B3C4@l */
/* 805E10F0  7F E4 FB 78 */	mr r4, r31
/* 805E10F4  C0 27 00 00 */	lfs f1, 0(r7)
/* 805E10F8  7F C6 F3 78 */	mr r6, r30
/* 805E10FC  81 85 01 18 */	lwz r12, 0x118(r5)
/* 805E1100  EC 40 F0 28 */	fsubs f2, f0, f30
/* 805E1104  EC 21 F8 2A */	fadds f1, f1, f31
/* 805E1108  7F A5 EB 78 */	mr r5, r29
/* 805E110C  7D 89 03 A6 */	mtctr r12
/* 805E1110  4E 80 04 21 */	bctrl 
/* 805E1114  80 7C 00 2C */	lwz r3, 0x2c(r28)
/* 805E1118  80 03 09 8C */	lwz r0, 0x98c(r3)
/* 805E111C  28 00 00 00 */	cmplwi r0, 0
/* 805E1120  41 82 00 1C */	beq lbl_805E113C
/* 805E1124  FC 20 F8 90 */	fmr f1, f31
/* 805E1128  7F 83 E3 78 */	mr r3, r28
/* 805E112C  FC 40 F0 90 */	fmr f2, f30
/* 805E1130  7F A4 EB 78 */	mr r4, r29
/* 805E1134  7F C5 F3 78 */	mr r5, r30
/* 805E1138  4B FF FD CD */	bl mHB_set_dl_sub
lbl_805E113C:
/* 805E113C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805E1140  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805E1144  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 805E1148  39 61 00 20 */	addi r11, r1, 0x20
/* 805E114C  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 805E1150  4B AB 9D CD */	bl func_8009AF1C
/* 805E1154  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805E1158  7C 08 03 A6 */	mtlr r0
/* 805E115C  38 21 00 40 */	addi r1, r1, 0x40
/* 805E1160  4E 80 00 20 */	blr 
