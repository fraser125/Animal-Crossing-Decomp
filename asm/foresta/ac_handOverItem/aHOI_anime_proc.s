lbl_80426E80:
/* 80426E80  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80426E84  7C 08 02 A6 */	mflr r0
/* 80426E88  90 01 00 34 */	stw r0, 0x34(r1)
/* 80426E8C  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80426E90  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80426E94  DB C1 00 10 */	stfd f30, 0x10(r1)
/* 80426E98  F3 C1 00 18 */	psq_st f30, 24(r1), 0, 0 /* qr0 */
/* 80426E9C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80426EA0  7C 7F 1B 78 */	mr r31, r3
/* 80426EA4  3C 60 80 64 */	lis r3, lit_601@ha /* 0x80643FB8@ha */
/* 80426EA8  88 BF 01 E5 */	lbz r5, 0x1e5(r31)
/* 80426EAC  3C 80 80 68 */	lis r4, table_587@ha /* 0x80683BEC@ha */
/* 80426EB0  80 1F 01 CC */	lwz r0, 0x1cc(r31)
/* 80426EB4  38 84 3B EC */	addi r4, r4, table_587@l /* 0x80683BEC@l */
/* 80426EB8  54 A5 10 3A */	slwi r5, r5, 2
/* 80426EBC  C0 03 3F B8 */	lfs f0, lit_601@l(r3)  /* 0x80643FB8@l */
/* 80426EC0  C3 FF 01 D0 */	lfs f31, 0x1d0(r31)
/* 80426EC4  54 00 10 3A */	slwi r0, r0, 2
/* 80426EC8  7C 64 28 2E */	lwzx r3, r4, r5
/* 80426ECC  EF FF 00 2A */	fadds f31, f31, f0
/* 80426ED0  7F C3 04 2E */	lfsx f30, r3, r0
/* 80426ED4  FC 1F F0 40 */	fcmpo cr0, f31, f30
/* 80426ED8  40 81 00 08 */	ble lbl_80426EE0
/* 80426EDC  FF E0 F0 90 */	fmr f31, f30
lbl_80426EE0:
/* 80426EE0  D3 FF 01 D0 */	stfs f31, 0x1d0(r31)
/* 80426EE4  7F E3 FB 78 */	mr r3, r31
/* 80426EE8  4B FF FD C1 */	bl aHOI_calc_trans
/* 80426EEC  7F E3 FB 78 */	mr r3, r31
/* 80426EF0  4B FF FE ED */	bl aHOI_calc_scale
/* 80426EF4  C0 1F 01 E0 */	lfs f0, 0x1e0(r31)
/* 80426EF8  3C 60 80 64 */	lis r3, lit_602@ha /* 0x80643FBC@ha */
/* 80426EFC  FC 20 02 10 */	fabs f1, f0
/* 80426F00  C0 03 3F BC */	lfs f0, lit_602@l(r3)  /* 0x80643FBC@l */
/* 80426F04  FC 20 08 18 */	frsp f1, f1
/* 80426F08  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80426F0C  40 80 00 48 */	bge lbl_80426F54
/* 80426F10  FC 1F F0 00 */	fcmpu cr0, f31, f30
/* 80426F14  40 82 00 40 */	bne lbl_80426F54
/* 80426F18  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 80426F1C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 80426F20  3C 83 00 02 */	addis r4, r3, 2
/* 80426F24  80 64 60 94 */	lwz r3, 0x6094(r4)
/* 80426F28  80 03 00 10 */	lwz r0, 0x10(r3)
/* 80426F2C  28 00 00 00 */	cmplwi r0, 0
/* 80426F30  41 82 00 24 */	beq lbl_80426F54
/* 80426F34  38 00 00 00 */	li r0, 0
/* 80426F38  90 03 00 10 */	stw r0, 0x10(r3)
/* 80426F3C  80 64 60 94 */	lwz r3, 0x6094(r4)
/* 80426F40  98 03 00 0C */	stb r0, 0xc(r3)
/* 80426F44  90 1F 01 CC */	stw r0, 0x1cc(r31)
/* 80426F48  98 1F 01 E6 */	stb r0, 0x1e6(r31)
/* 80426F4C  4B F9 87 5D */	bl func_803BF6A8
/* 80426F50  4B F9 9D FD */	bl mMsg_Unset_LockContinue
lbl_80426F54:
/* 80426F54  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80426F58  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80426F5C  E3 C1 00 18 */	psq_l f30, 24(r1), 0, 0 /* qr0 */
/* 80426F60  CB C1 00 10 */	lfd f30, 0x10(r1)
/* 80426F64  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80426F68  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80426F6C  7C 08 03 A6 */	mtlr r0
/* 80426F70  38 21 00 30 */	addi r1, r1, 0x30
/* 80426F74  4E 80 00 20 */	blr 
