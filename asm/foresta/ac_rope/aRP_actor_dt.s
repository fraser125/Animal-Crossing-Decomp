lbl_8049676C:
/* 8049676C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80496770  7C 08 02 A6 */	mflr r0
/* 80496774  90 01 00 54 */	stw r0, 0x54(r1)
/* 80496778  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 8049677C  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80496780  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80496784  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80496788  38 81 00 14 */	addi r4, r1, 0x14
/* 8049678C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80496790  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80496794  90 01 00 18 */	stw r0, 0x18(r1)
/* 80496798  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8049679C  38 61 00 20 */	addi r3, r1, 0x20
/* 804967A0  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804967A4  4B F0 ED 99 */	bl mFI_Wpos2UtCenterWpos
/* 804967A8  3C 60 80 64 */	lis r3, data_80644CC4@ha /* 0x80644CC4@ha */
/* 804967AC  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804967B0  C3 E3 4C C4 */	lfs f31, data_80644CC4@l(r3)  /* 0x80644CC4@l */
/* 804967B4  3B E0 00 00 */	li r31, 0
/* 804967B8  EC 00 F8 28 */	fsubs f0, f0, f31
/* 804967BC  D0 01 00 20 */	stfs f0, 0x20(r1)
lbl_804967C0:
/* 804967C0  80 E1 00 20 */	lwz r7, 0x20(r1)
/* 804967C4  38 61 00 08 */	addi r3, r1, 8
/* 804967C8  80 C1 00 24 */	lwz r6, 0x24(r1)
/* 804967CC  38 80 00 00 */	li r4, 0
/* 804967D0  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804967D4  38 A0 00 64 */	li r5, 0x64
/* 804967D8  90 E1 00 08 */	stw r7, 8(r1)
/* 804967DC  90 C1 00 0C */	stw r6, 0xc(r1)
/* 804967E0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804967E4  4B EF B2 B9 */	bl mCoBG_SetPlussOffset
/* 804967E8  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804967EC  3B FF 00 01 */	addi r31, r31, 1
/* 804967F0  2C 1F 00 03 */	cmpwi r31, 3
/* 804967F4  EC 00 F8 2A */	fadds f0, f0, f31
/* 804967F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804967FC  41 80 FF C4 */	blt lbl_804967C0
/* 80496800  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80496804  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80496808  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 8049680C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80496810  7C 08 03 A6 */	mtlr r0
/* 80496814  38 21 00 50 */	addi r1, r1, 0x50
/* 80496818  4E 80 00 20 */	blr 
