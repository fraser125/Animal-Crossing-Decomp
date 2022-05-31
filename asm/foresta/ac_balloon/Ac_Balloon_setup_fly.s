lbl_80413DC4:
/* 80413DC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80413DC8  7C 08 02 A6 */	mflr r0
/* 80413DCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 80413DD0  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80413DD4  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80413DD8  39 61 00 20 */	addi r11, r1, 0x20
/* 80413DDC  4B C8 70 F5 */	bl func_8009AED0
/* 80413DE0  7C 7F 1B 78 */	mr r31, r3
/* 80413DE4  38 80 00 01 */	li r4, 1
/* 80413DE8  90 83 04 48 */	stw r4, 0x448(r3)
/* 80413DEC  38 00 00 00 */	li r0, 0
/* 80413DF0  80 63 04 54 */	lwz r3, 0x454(r3)
/* 80413DF4  90 7F 04 4C */	stw r3, 0x44c(r31)
/* 80413DF8  80 BF 04 54 */	lwz r5, 0x454(r31)
/* 80413DFC  2C 05 00 00 */	cmpwi r5, 0
/* 80413E00  41 80 00 10 */	blt lbl_80413E10
/* 80413E04  2C 05 00 08 */	cmpwi r5, 8
/* 80413E08  40 80 00 08 */	bge lbl_80413E10
/* 80413E0C  7C 80 23 78 */	mr r0, r4
lbl_80413E10:
/* 80413E10  2C 00 00 00 */	cmpwi r0, 0
/* 80413E14  41 82 00 18 */	beq lbl_80413E2C
/* 80413E18  3C 60 80 66 */	lis r3, data_8065FB58@ha /* 0x8065FB58@ha */
/* 80413E1C  54 A0 10 3A */	slwi r0, r5, 2
/* 80413E20  38 63 FB 58 */	addi r3, r3, data_8065FB58@l /* 0x8065FB58@l */
/* 80413E24  7C 63 00 2E */	lwzx r3, r3, r0
/* 80413E28  48 00 00 08 */	b lbl_80413E30
lbl_80413E2C:
/* 80413E2C  38 60 00 17 */	li r3, 0x17
lbl_80413E30:
/* 80413E30  3C 80 80 64 */	lis r4, data_80643A74@ha /* 0x80643A74@ha */
/* 80413E34  C3 FF 04 60 */	lfs f31, 0x460(r31)
/* 80413E38  C0 04 3A 74 */	lfs f0, data_80643A74@l(r4)  /* 0x80643A74@l */
/* 80413E3C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80413E40  40 80 00 0C */	bge lbl_80413E4C
/* 80413E44  3B C0 00 1F */	li r30, 0x1f
/* 80413E48  48 00 00 08 */	b lbl_80413E50
lbl_80413E4C:
/* 80413E4C  3B C0 00 20 */	li r30, 0x20
lbl_80413E50:
/* 80413E50  3B BF 01 74 */	addi r29, r31, 0x174
/* 80413E54  4B FC 4E 35 */	bl mPlib_Get_Item_DataPointer
/* 80413E58  7C 60 1B 78 */	mr r0, r3
/* 80413E5C  7F C3 F3 78 */	mr r3, r30
/* 80413E60  7C 1E 03 78 */	mr r30, r0
/* 80413E64  4B FC 4E 25 */	bl mPlib_Get_Item_DataPointer
/* 80413E68  7C 60 1B 78 */	mr r0, r3
/* 80413E6C  7F A3 EB 78 */	mr r3, r29
/* 80413E70  7C 1C 03 78 */	mr r28, r0
/* 80413E74  7F C4 F3 78 */	mr r4, r30
/* 80413E78  38 DF 01 E4 */	addi r6, r31, 0x1e4
/* 80413E7C  38 FF 02 14 */	addi r7, r31, 0x214
/* 80413E80  38 A0 00 00 */	li r5, 0
/* 80413E84  4B F5 CC 11 */	bl cKF_SkeletonInfo_R_ct
/* 80413E88  3C 60 80 64 */	lis r3, lit_459@ha /* 0x80643A78@ha */
/* 80413E8C  FC 20 F8 90 */	fmr f1, f31
/* 80413E90  38 83 3A 78 */	addi r4, r3, lit_459@l /* 0x80643A78@l */
/* 80413E94  7F A3 EB 78 */	mr r3, r29
/* 80413E98  C0 44 00 00 */	lfs f2, 0(r4)
/* 80413E9C  7F 84 E3 78 */	mr r4, r28
/* 80413EA0  38 A0 00 00 */	li r5, 0
/* 80413EA4  FC 60 10 90 */	fmr f3, f2
/* 80413EA8  4B F5 D9 7D */	bl cKF_SkeletonInfo_R_init_standard_repeat_setframeandspeedandmorph
/* 80413EAC  7F A3 EB 78 */	mr r3, r29
/* 80413EB0  4B F5 D1 65 */	bl cKF_SkeletonInfo_R_play
/* 80413EB4  38 60 00 1F */	li r3, 0x1f
/* 80413EB8  4B FC 4D D1 */	bl mPlib_Get_Item_DataPointer
/* 80413EBC  3C E0 80 64 */	lis r7, data_80643A74@ha /* 0x80643A74@ha */
/* 80413EC0  3C C0 80 64 */	lis r6, lit_460@ha /* 0x80643A7C@ha */
/* 80413EC4  3C A0 80 64 */	lis r5, lit_461@ha /* 0x80643A80@ha */
/* 80413EC8  C0 27 3A 74 */	lfs f1, data_80643A74@l(r7)  /* 0x80643A74@l */
/* 80413ECC  C0 65 3A 80 */	lfs f3, lit_461@l(r5)  /* 0x80643A80@l */
/* 80413ED0  7C 64 1B 78 */	mr r4, r3
/* 80413ED4  C0 46 3A 7C */	lfs f2, lit_460@l(r6)  /* 0x80643A7C@l */
/* 80413ED8  7F A3 EB 78 */	mr r3, r29
/* 80413EDC  38 A0 00 00 */	li r5, 0
/* 80413EE0  4B F5 D9 45 */	bl cKF_SkeletonInfo_R_init_standard_repeat_setframeandspeedandmorph
/* 80413EE4  80 1F 04 58 */	lwz r0, 0x458(r31)
/* 80413EE8  3C 60 80 64 */	lis r3, lit_459@ha /* 0x80643A78@ha */
/* 80413EEC  38 83 3A 78 */	addi r4, r3, lit_459@l /* 0x80643A78@l */
/* 80413EF0  90 1F 00 DC */	stw r0, 0xdc(r31)
/* 80413EF4  3C 60 80 64 */	lis r3, lit_462@ha /* 0x80643A84@ha */
/* 80413EF8  C0 24 00 00 */	lfs f1, 0(r4)
/* 80413EFC  38 00 FF FF */	li r0, -1
/* 80413F00  A0 9F 04 5C */	lhz r4, 0x45c(r31)
/* 80413F04  C0 03 3A 84 */	lfs f0, lit_462@l(r3)  /* 0x80643A84@l */
/* 80413F08  B0 9F 00 E0 */	sth r4, 0xe0(r31)
/* 80413F0C  D0 3F 00 6C */	stfs f1, 0x6c(r31)
/* 80413F10  C0 3F 04 64 */	lfs f1, 0x464(r31)
/* 80413F14  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 80413F18  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 80413F1C  80 9F 04 68 */	lwz r4, 0x468(r31)
/* 80413F20  80 7F 04 6C */	lwz r3, 0x46c(r31)
/* 80413F24  90 9F 00 28 */	stw r4, 0x28(r31)
/* 80413F28  90 7F 00 2C */	stw r3, 0x2c(r31)
/* 80413F2C  80 7F 04 70 */	lwz r3, 0x470(r31)
/* 80413F30  90 7F 00 30 */	stw r3, 0x30(r31)
/* 80413F34  90 1F 04 50 */	stw r0, 0x450(r31)
/* 80413F38  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80413F3C  39 61 00 20 */	addi r11, r1, 0x20
/* 80413F40  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80413F44  4B C8 6F D9 */	bl func_8009AF1C
/* 80413F48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80413F4C  7C 08 03 A6 */	mtlr r0
/* 80413F50  38 21 00 30 */	addi r1, r1, 0x30
/* 80413F54  4E 80 00 20 */	blr 
