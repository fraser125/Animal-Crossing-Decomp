lbl_8059D938:
/* 8059D938  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8059D93C  7C 08 02 A6 */	mflr r0
/* 8059D940  90 01 00 34 */	stw r0, 0x34(r1)
/* 8059D944  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 8059D948  7C 7F 1B 78 */	mr r31, r3
/* 8059D94C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 8059D950  7C 9E 23 78 */	mr r30, r4
/* 8059D954  4B FF F9 41 */	bl aIKR_calc_move_scale
/* 8059D958  3C 80 80 65 */	lis r4, lit_445@ha /* 0x8064A148@ha */
/* 8059D95C  3C 60 80 65 */	lis r3, lit_459@ha /* 0x8064A150@ha */
/* 8059D960  C0 5F 02 44 */	lfs f2, 0x244(r31)
/* 8059D964  C0 24 A1 48 */	lfs f1, lit_445@l(r4)  /* 0x8064A148@l */
/* 8059D968  C0 03 A1 50 */	lfs f0, lit_459@l(r3)  /* 0x8064A150@l */
/* 8059D96C  EC 22 08 28 */	fsubs f1, f2, f1
/* 8059D970  D0 3F 02 44 */	stfs f1, 0x244(r31)
/* 8059D974  C0 3F 02 44 */	lfs f1, 0x244(r31)
/* 8059D978  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8059D97C  4C 40 13 82 */	cror 2, 0, 2
/* 8059D980  40 82 00 8C */	bne lbl_8059DA0C
/* 8059D984  4B AB F3 71 */	bl fqrand
/* 8059D988  3C 80 80 65 */	lis r4, lit_585@ha /* 0x8064A164@ha */
/* 8059D98C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8059D990  C0 44 A1 64 */	lfs f2, lit_585@l(r4)  /* 0x8064A164@l */
/* 8059D994  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8059D998  3C 63 00 02 */	addis r3, r3, 2
/* 8059D99C  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 8059D9A0  EC 02 00 72 */	fmuls f0, f2, f1
/* 8059D9A4  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 8059D9A8  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 8059D9AC  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 8059D9B0  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 8059D9B4  7F C7 F3 78 */	mr r7, r30
/* 8059D9B8  EC 02 00 2A */	fadds f0, f2, f0
/* 8059D9BC  90 81 00 08 */	stw r4, 8(r1)
/* 8059D9C0  38 81 00 08 */	addi r4, r1, 8
/* 8059D9C4  38 60 00 54 */	li r3, 0x54
/* 8059D9C8  90 01 00 0C */	stw r0, 0xc(r1)
/* 8059D9CC  38 A0 00 02 */	li r5, 2
/* 8059D9D0  FC 00 00 1E */	fctiwz f0, f0
/* 8059D9D4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 8059D9D8  39 20 00 00 */	li r9, 0
/* 8059D9DC  90 01 00 10 */	stw r0, 0x10(r1)
/* 8059D9E0  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 8059D9E4  81 86 00 00 */	lwz r12, 0(r6)
/* 8059D9E8  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 8059D9EC  A8 DF 00 DE */	lha r6, 0xde(r31)
/* 8059D9F0  60 00 40 00 */	ori r0, r0, 0x4000
/* 8059D9F4  7C 0A 07 34 */	extsh r10, r0
/* 8059D9F8  7D 89 03 A6 */	mtctr r12
/* 8059D9FC  4E 80 04 21 */	bctrl 
/* 8059DA00  3C 60 80 65 */	lis r3, lit_586@ha /* 0x8064A168@ha */
/* 8059DA04  C0 03 A1 68 */	lfs f0, lit_586@l(r3)  /* 0x8064A168@l */
/* 8059DA08  D0 1F 02 44 */	stfs f0, 0x244(r31)
lbl_8059DA0C:
/* 8059DA0C  38 7F 00 DC */	addi r3, r31, 0xdc
/* 8059DA10  38 80 70 00 */	li r4, 0x7000
/* 8059DA14  38 A0 03 00 */	li r5, 0x300
/* 8059DA18  4B E1 D1 2D */	bl chase_angle
/* 8059DA1C  7F E3 FB 78 */	mr r3, r31
/* 8059DA20  38 BF 00 28 */	addi r5, r31, 0x28
/* 8059DA24  38 80 00 45 */	li r4, 0x45
/* 8059DA28  48 09 05 1D */	bl sAdo_OngenPos
/* 8059DA2C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8059DA30  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 8059DA34  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 8059DA38  7C 08 03 A6 */	mtlr r0
/* 8059DA3C  38 21 00 30 */	addi r1, r1, 0x30
/* 8059DA40  4E 80 00 20 */	blr 
