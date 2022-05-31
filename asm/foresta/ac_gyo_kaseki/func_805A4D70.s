lbl_805A4D70:
/* 805A4D70  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A4D74  7C 08 02 A6 */	mflr r0
/* 805A4D78  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A4D7C  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A4D80  7C 7F 1B 78 */	mr r31, r3
/* 805A4D84  38 61 00 14 */	addi r3, r1, 0x14
/* 805A4D88  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805A4D8C  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A4D90  90 81 00 14 */	stw r4, 0x14(r1)
/* 805A4D94  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A4D98  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A4D9C  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A4DA0  4B DE B4 A5 */	bl mCoBG_Wpos2BgAttribute_Original
/* 805A4DA4  4B DE F5 29 */	bl mCoBG_CheckWaterAttribute
/* 805A4DA8  2C 03 00 01 */	cmpwi r3, 1
/* 805A4DAC  40 82 00 28 */	bne lbl_805A4DD4
/* 805A4DB0  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805A4DB4  38 61 00 08 */	addi r3, r1, 8
/* 805A4DB8  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A4DBC  90 81 00 08 */	stw r4, 8(r1)
/* 805A4DC0  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A4DC4  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A4DC8  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A4DCC  48 00 08 29 */	bl aGKK_Get_water_surface_position_y
/* 805A4DD0  D0 3F 00 2C */	stfs f1, 0x2c(r31)
lbl_805A4DD4:
/* 805A4DD4  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A4DD8  3C A0 80 6C */	lis r5, data_806C3FA8@ha /* 0x806C3FA8@ha */
/* 805A4DDC  3C 60 80 65 */	lis r3, data_8064A444@ha /* 0x8064A444@ha */
/* 805A4DE0  3C 80 80 65 */	lis r4, lit_455@ha /* 0x8064A448@ha */
/* 805A4DE4  54 00 18 38 */	slwi r0, r0, 3
/* 805A4DE8  38 A5 3F A8 */	addi r5, r5, data_806C3FA8@l /* 0x806C3FA8@l */
/* 805A4DEC  7C 05 02 AE */	lhax r0, r5, r0
/* 805A4DF0  38 C3 A4 44 */	addi r6, r3, data_8064A444@l /* 0x8064A444@l */
/* 805A4DF4  3C 60 80 6C */	lis r3, aGKK_shadow_scale@ha /* 0x806C4180@ha */
/* 805A4DF8  38 A4 A4 48 */	addi r5, r4, lit_455@l /* 0x8064A448@l */
/* 805A4DFC  B0 1F 01 DC */	sth r0, 0x1dc(r31)
/* 805A4E00  38 00 00 00 */	li r0, 0
/* 805A4E04  C0 06 00 00 */	lfs f0, 0(r6)
/* 805A4E08  38 83 41 80 */	addi r4, r3, aGKK_shadow_scale@l /* 0x806C4180@l */
/* 805A4E0C  90 1F 01 E0 */	stw r0, 0x1e0(r31)
/* 805A4E10  7F E3 FB 78 */	mr r3, r31
/* 805A4E14  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A4E18  D0 1F 02 1C */	stfs f0, 0x21c(r31)
/* 805A4E1C  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A4E20  54 00 10 3A */	slwi r0, r0, 2
/* 805A4E24  7C 04 04 2E */	lfsx f0, r4, r0
/* 805A4E28  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A4E2C  48 00 00 D1 */	bl aGKK_set_scale
/* 805A4E30  7F E3 FB 78 */	mr r3, r31
/* 805A4E34  48 00 00 B5 */	bl aGKK_speed_reset
/* 805A4E38  3C 80 80 5A */	lis r4, aGKK_actor_move@ha /* 0x805A6BA0@ha */
/* 805A4E3C  7F E3 FB 78 */	mr r3, r31
/* 805A4E40  38 04 6B A0 */	addi r0, r4, aGKK_actor_move@l /* 0x805A6BA0@l */
/* 805A4E44  90 1F 01 64 */	stw r0, 0x164(r31)
/* 805A4E48  48 00 07 81 */	bl aGKK_Get_flow_angle_rv
/* 805A4E4C  7C 64 1B 78 */	mr r4, r3
/* 805A4E50  7F E3 FB 78 */	mr r3, r31
/* 805A4E54  48 00 00 B9 */	bl aGKK_set_angle
/* 805A4E58  38 00 00 00 */	li r0, 0
/* 805A4E5C  98 1F 01 08 */	stb r0, 0x108(r31)
/* 805A4E60  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A4E64  2C 00 00 07 */	cmpwi r0, 7
/* 805A4E68  40 82 00 0C */	bne lbl_805A4E74
/* 805A4E6C  38 80 00 05 */	li r4, 5
/* 805A4E70  48 00 00 34 */	b lbl_805A4EA4
lbl_805A4E74:
/* 805A4E74  88 7F 00 08 */	lbz r3, 8(r31)
/* 805A4E78  88 9F 00 09 */	lbz r4, 9(r31)
/* 805A4E7C  7C 63 07 74 */	extsb r3, r3
/* 805A4E80  7C 84 07 74 */	extsb r4, r4
/* 805A4E84  4B E0 14 65 */	bl mFI_BkNum2BlockKind
/* 805A4E88  54 63 02 52 */	rlwinm r3, r3, 0, 9, 9
/* 805A4E8C  3C 03 FF C0 */	addis r0, r3, 0xffc0
/* 805A4E90  28 00 00 00 */	cmplwi r0, 0
/* 805A4E94  40 82 00 0C */	bne lbl_805A4EA0
/* 805A4E98  38 80 00 05 */	li r4, 5
/* 805A4E9C  48 00 00 08 */	b lbl_805A4EA4
lbl_805A4EA0:
/* 805A4EA0  38 80 00 04 */	li r4, 4
lbl_805A4EA4:
/* 805A4EA4  7F E3 FB 78 */	mr r3, r31
/* 805A4EA8  48 00 1C B1 */	bl aGKK_setupAction
/* 805A4EAC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A4EB0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A4EB4  7C 08 03 A6 */	mtlr r0
/* 805A4EB8  38 21 00 30 */	addi r1, r1, 0x30
/* 805A4EBC  4E 80 00 20 */	blr 
