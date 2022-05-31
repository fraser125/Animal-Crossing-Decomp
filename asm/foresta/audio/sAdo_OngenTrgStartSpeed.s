lbl_8062E490:
/* 8062E490  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8062E494  7C 08 02 A6 */	mflr r0
/* 8062E498  90 01 00 34 */	stw r0, 0x34(r1)
/* 8062E49C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 8062E4A0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 8062E4A4  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8062E4A8  FF E0 08 90 */	fmr f31, f1
/* 8062E4AC  7C 7F 1B 78 */	mr r31, r3
/* 8062E4B0  7C 85 23 78 */	mr r5, r4
/* 8062E4B4  38 61 00 0C */	addi r3, r1, 0xc
/* 8062E4B8  38 81 00 08 */	addi r4, r1, 8
/* 8062E4BC  4B FF F7 A9 */	bl sAdo_Calc_MicPosition_forTrig
/* 8062E4C0  FC 40 F8 90 */	fmr f2, f31
/* 8062E4C4  A0 81 00 08 */	lhz r4, 8(r1)
/* 8062E4C8  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8062E4CC  7F E3 FB 78 */	mr r3, r31
/* 8062E4D0  4B 9E 52 59 */	bl Na_OngenTrgStartSpeed
/* 8062E4D4  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 8062E4D8  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8062E4DC  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 8062E4E0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8062E4E4  7C 08 03 A6 */	mtlr r0
/* 8062E4E8  38 21 00 30 */	addi r1, r1, 0x30
/* 8062E4EC  4E 80 00 20 */	blr 
