lbl_804E049C:
/* 804E049C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804E04A0  7C 08 02 A6 */	mflr r0
/* 804E04A4  90 01 00 54 */	stw r0, 0x54(r1)
/* 804E04A8  39 61 00 50 */	addi r11, r1, 0x50
/* 804E04AC  4B BB AA 29 */	bl func_8009AED4
/* 804E04B0  7C 7E 1B 78 */	mr r30, r3
/* 804E04B4  7C 9F 23 78 */	mr r31, r4
/* 804E04B8  A8 03 00 DE */	lha r0, 0xde(r3)
/* 804E04BC  54 1D 04 3E */	clrlwi r29, r0, 0x10
/* 804E04C0  7F A3 EB 78 */	mr r3, r29
/* 804E04C4  4B B7 E3 9D */	bl sins
/* 804E04C8  7C 63 07 34 */	extsh r3, r3
/* 804E04CC  3C 00 43 30 */	lis r0, 0x4330
/* 804E04D0  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804E04D4  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804E04D8  90 61 00 34 */	stw r3, 0x34(r1)
/* 804E04DC  3C 60 80 64 */	lis r3, lit_5799@ha /* 0x80647D70@ha */
/* 804E04E0  C0 23 7D 70 */	lfs f1, lit_5799@l(r3)  /* 0x80647D70@l */
/* 804E04E4  7F A3 EB 78 */	mr r3, r29
/* 804E04E8  90 01 00 30 */	stw r0, 0x30(r1)
/* 804E04EC  C8 64 6A 54 */	lfd f3, lit_1627@l(r4)  /* 0x80646A54@l */
/* 804E04F0  C8 41 00 30 */	lfd f2, 0x30(r1)
/* 804E04F4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 804E04F8  EC 42 18 28 */	fsubs f2, f2, f3
/* 804E04FC  EC 21 00 B2 */	fmuls f1, f1, f2
/* 804E0500  EC 00 08 2A */	fadds f0, f0, f1
/* 804E0504  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804E0508  4B B7 CC 55 */	bl coss
/* 804E050C  7C 63 07 34 */	extsh r3, r3
/* 804E0510  3C 00 43 30 */	lis r0, 0x4330
/* 804E0514  6C 63 80 00 */	xoris r3, r3, 0x8000
/* 804E0518  3C 80 80 64 */	lis r4, lit_1627@ha /* 0x80646A54@ha */
/* 804E051C  90 61 00 3C */	stw r3, 0x3c(r1)
/* 804E0520  38 C4 6A 54 */	addi r6, r4, lit_1627@l /* 0x80646A54@l */
/* 804E0524  3C 80 80 64 */	lis r4, lit_5799@ha /* 0x80647D70@ha */
/* 804E0528  C8 26 00 00 */	lfd f1, 0(r6)
/* 804E052C  90 01 00 38 */	stw r0, 0x38(r1)
/* 804E0530  38 A4 7D 70 */	addi r5, r4, lit_5799@l /* 0x80647D70@l */
/* 804E0534  3C 60 80 64 */	lis r3, lit_604@ha /* 0x80646568@ha */
/* 804E0538  C0 45 00 00 */	lfs f2, 0(r5)
/* 804E053C  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 804E0540  38 83 65 68 */	addi r4, r3, lit_604@l /* 0x80646568@l */
/* 804E0544  38 61 00 14 */	addi r3, r1, 0x14
/* 804E0548  EC 60 08 28 */	fsubs f3, f0, f1
/* 804E054C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E0550  C0 1E 00 30 */	lfs f0, 0x30(r30)
/* 804E0554  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804E0558  EC 42 00 F2 */	fmuls f2, f2, f3
/* 804E055C  80 81 00 20 */	lwz r4, 0x20(r1)
/* 804E0560  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E0564  90 81 00 14 */	stw r4, 0x14(r1)
/* 804E0568  EC 00 10 2A */	fadds f0, f0, f2
/* 804E056C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E0570  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804E0574  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804E0578  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804E057C  4B EA F2 A5 */	bl mCoBG_GetBgY_OnlyCenter_FromWpos
/* 804E0580  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 804E0584  38 61 00 08 */	addi r3, r1, 8
/* 804E0588  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 804E058C  80 81 00 24 */	lwz r4, 0x24(r1)
/* 804E0590  80 01 00 28 */	lwz r0, 0x28(r1)
/* 804E0594  90 A1 00 08 */	stw r5, 8(r1)
/* 804E0598  90 81 00 0C */	stw r4, 0xc(r1)
/* 804E059C  90 01 00 10 */	stw r0, 0x10(r1)
/* 804E05A0  4B EC 6E 91 */	bl mFI_GetUnitFG
/* 804E05A4  C0 01 00 20 */	lfs f0, 0x20(r1)
/* 804E05A8  28 03 00 00 */	cmplwi r3, 0
/* 804E05AC  C0 21 00 28 */	lfs f1, 0x28(r1)
/* 804E05B0  D0 1E 13 98 */	stfs f0, 0x1398(r30)
/* 804E05B4  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804E05B8  D0 3E 13 A0 */	stfs f1, 0x13a0(r30)
/* 804E05BC  D0 1E 13 9C */	stfs f0, 0x139c(r30)
/* 804E05C0  41 82 00 10 */	beq lbl_804E05D0
/* 804E05C4  A0 03 00 00 */	lhz r0, 0(r3)
/* 804E05C8  B0 1E 13 94 */	sth r0, 0x1394(r30)
/* 804E05CC  48 00 00 0C */	b lbl_804E05D8
lbl_804E05D0:
/* 804E05D0  38 00 00 00 */	li r0, 0
/* 804E05D4  B0 1E 13 94 */	sth r0, 0x1394(r30)
lbl_804E05D8:
/* 804E05D8  7F C3 F3 78 */	mr r3, r30
/* 804E05DC  7F E4 FB 78 */	mr r4, r31
/* 804E05E0  4B FF FC 9D */	bl Player_actor_check_nextgoto
/* 804E05E4  3C 60 00 01 */	lis r3, 0x0001 /* 0x00008000@ha */
/* 804E05E8  38 63 80 00 */	addi r3, r3, 0x8000 /* 0x00008000@l */
/* 804E05EC  4B EB 59 25 */	bl chkTrigger
/* 804E05F0  2C 03 00 00 */	cmpwi r3, 0
/* 804E05F4  41 82 00 10 */	beq lbl_804E0604
/* 804E05F8  38 00 00 01 */	li r0, 1
/* 804E05FC  90 1E 13 8C */	stw r0, 0x138c(r30)
/* 804E0600  48 00 00 0C */	b lbl_804E060C
lbl_804E0604:
/* 804E0604  38 00 00 00 */	li r0, 0
/* 804E0608  90 1E 13 8C */	stw r0, 0x138c(r30)
lbl_804E060C:
/* 804E060C  39 61 00 50 */	addi r11, r1, 0x50
/* 804E0610  4B BB A9 11 */	bl func_8009AF20
/* 804E0614  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804E0618  7C 08 03 A6 */	mtlr r0
/* 804E061C  38 21 00 50 */	addi r1, r1, 0x50
/* 804E0620  4E 80 00 20 */	blr 
