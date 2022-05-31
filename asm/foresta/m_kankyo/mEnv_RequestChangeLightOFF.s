lbl_803B8A60:
/* 803B8A60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803B8A64  7C 08 02 A6 */	mflr r0
/* 803B8A68  90 01 00 24 */	stw r0, 0x24(r1)
/* 803B8A6C  DB E1 00 10 */	stfd f31, 0x10(r1)
/* 803B8A70  F3 E1 00 18 */	psq_st f31, 24(r1), 0, 0 /* qr0 */
/* 803B8A74  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803B8A78  93 C1 00 08 */	stw r30, 8(r1)
/* 803B8A7C  FF E0 08 90 */	fmr f31, f1
/* 803B8A80  7C 7E 1B 78 */	mr r30, r3
/* 803B8A84  7C 9F 23 78 */	mr r31, r4
/* 803B8A88  48 02 E7 B1 */	bl mRmTp_NowSceneLightSwitchOFF
/* 803B8A8C  2C 03 00 00 */	cmpwi r3, 0
/* 803B8A90  41 82 00 5C */	beq lbl_803B8AEC
/* 803B8A94  3C 60 80 64 */	lis r3, lit_544@ha /* 0x80642448@ha */
/* 803B8A98  3C 80 81 17 */	lis r4, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8A9C  C0 03 24 48 */	lfs f0, lit_544@l(r3)  /* 0x80642448@l */
/* 803B8AA0  38 64 9B A0 */	addi r3, r4, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8AA4  93 E3 00 1C */	stw r31, 0x1c(r3)
/* 803B8AA8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 803B8AAC  4C 41 13 82 */	cror 2, 1, 2
/* 803B8AB0  40 82 00 0C */	bne lbl_803B8ABC
/* 803B8AB4  FC 00 F8 90 */	fmr f0, f31
/* 803B8AB8  48 00 00 08 */	b lbl_803B8AC0
lbl_803B8ABC:
/* 803B8ABC  FC 00 F8 50 */	fneg f0, f31
lbl_803B8AC0:
/* 803B8AC0  3C 60 81 17 */	lis r3, data_81169BA0@ha /* 0x81169BA0@ha */
/* 803B8AC4  2C 1F 00 00 */	cmpwi r31, 0
/* 803B8AC8  38 63 9B A0 */	addi r3, r3, data_81169BA0@l /* 0x81169BA0@l */
/* 803B8ACC  D0 03 00 20 */	stfs f0, 0x20(r3)
/* 803B8AD0  40 82 00 14 */	bne lbl_803B8AE4
/* 803B8AD4  7F C3 F3 78 */	mr r3, r30
/* 803B8AD8  48 02 0B 69 */	bl get_player_actor_withoutCheck
/* 803B8ADC  38 60 00 17 */	li r3, 0x17
/* 803B8AE0  48 27 52 25 */	bl sAdo_SysTrgStart
lbl_803B8AE4:
/* 803B8AE4  38 60 00 01 */	li r3, 1
/* 803B8AE8  48 00 00 08 */	b lbl_803B8AF0
lbl_803B8AEC:
/* 803B8AEC  38 60 00 00 */	li r3, 0
lbl_803B8AF0:
/* 803B8AF0  E3 E1 00 18 */	psq_l f31, 24(r1), 0, 0 /* qr0 */
/* 803B8AF4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803B8AF8  CB E1 00 10 */	lfd f31, 0x10(r1)
/* 803B8AFC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803B8B00  83 C1 00 08 */	lwz r30, 8(r1)
/* 803B8B04  7C 08 03 A6 */	mtlr r0
/* 803B8B08  38 21 00 20 */	addi r1, r1, 0x20
/* 803B8B0C  4E 80 00 20 */	blr 
