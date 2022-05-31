lbl_805A2DC0:
/* 805A2DC0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805A2DC4  7C 08 02 A6 */	mflr r0
/* 805A2DC8  90 01 00 34 */	stw r0, 0x34(r1)
/* 805A2DCC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 805A2DD0  7C 7F 1B 78 */	mr r31, r3
/* 805A2DD4  38 61 00 14 */	addi r3, r1, 0x14
/* 805A2DD8  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805A2DDC  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A2DE0  90 81 00 14 */	stw r4, 0x14(r1)
/* 805A2DE4  90 01 00 18 */	stw r0, 0x18(r1)
/* 805A2DE8  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A2DEC  90 01 00 1C */	stw r0, 0x1c(r1)
/* 805A2DF0  4B DE D4 55 */	bl mCoBG_Wpos2BgAttribute_Original
/* 805A2DF4  4B DF 14 D9 */	bl mCoBG_CheckWaterAttribute
/* 805A2DF8  2C 03 00 01 */	cmpwi r3, 1
/* 805A2DFC  40 82 00 28 */	bne lbl_805A2E24
/* 805A2E00  80 9F 00 28 */	lwz r4, 0x28(r31)
/* 805A2E04  38 61 00 08 */	addi r3, r1, 8
/* 805A2E08  80 1F 00 2C */	lwz r0, 0x2c(r31)
/* 805A2E0C  90 81 00 08 */	stw r4, 8(r1)
/* 805A2E10  90 01 00 0C */	stw r0, 0xc(r1)
/* 805A2E14  80 1F 00 30 */	lwz r0, 0x30(r31)
/* 805A2E18  90 01 00 10 */	stw r0, 0x10(r1)
/* 805A2E1C  48 00 0A 0D */	bl aGTT_Get_water_surface_position_y
/* 805A2E20  D0 3F 00 2C */	stfs f1, 0x2c(r31)
lbl_805A2E24:
/* 805A2E24  80 1F 01 D8 */	lwz r0, 0x1d8(r31)
/* 805A2E28  3C A0 80 6C */	lis r5, data_806C3C58@ha /* 0x806C3C58@ha */
/* 805A2E2C  3C 60 80 65 */	lis r3, data_8064A3C4@ha /* 0x8064A3C4@ha */
/* 805A2E30  3C 80 80 65 */	lis r4, lit_447@ha /* 0x8064A3C8@ha */
/* 805A2E34  54 00 18 38 */	slwi r0, r0, 3
/* 805A2E38  38 A5 3C 58 */	addi r5, r5, data_806C3C58@l /* 0x806C3C58@l */
/* 805A2E3C  7C 05 02 AE */	lhax r0, r5, r0
/* 805A2E40  38 C3 A3 C4 */	addi r6, r3, data_8064A3C4@l /* 0x8064A3C4@l */
/* 805A2E44  3C 60 80 6C */	lis r3, aGYO_shadow_scale@ha /* 0x806C3E30@ha */
/* 805A2E48  38 A4 A3 C8 */	addi r5, r4, lit_447@l /* 0x8064A3C8@l */
/* 805A2E4C  B0 1F 01 DC */	sth r0, 0x1dc(r31)
/* 805A2E50  38 00 00 00 */	li r0, 0
/* 805A2E54  C0 06 00 00 */	lfs f0, 0(r6)
/* 805A2E58  38 83 3E 30 */	addi r4, r3, aGYO_shadow_scale@l /* 0x806C3E30@l */
/* 805A2E5C  90 1F 01 E0 */	stw r0, 0x1e0(r31)
/* 805A2E60  7F E3 FB 78 */	mr r3, r31
/* 805A2E64  C0 25 00 00 */	lfs f1, 0(r5)
/* 805A2E68  D0 1F 02 1C */	stfs f0, 0x21c(r31)
/* 805A2E6C  A8 1F 01 DC */	lha r0, 0x1dc(r31)
/* 805A2E70  54 00 10 3A */	slwi r0, r0, 2
/* 805A2E74  7C 04 04 2E */	lfsx f0, r4, r0
/* 805A2E78  EC 21 00 32 */	fmuls f1, f1, f0
/* 805A2E7C  48 00 00 91 */	bl aGTT_set_scale
/* 805A2E80  7F E3 FB 78 */	mr r3, r31
/* 805A2E84  48 00 00 75 */	bl aGTT_speed_reset
/* 805A2E88  3C 80 80 5A */	lis r4, aGTT_actor_move@ha /* 0x805A4C8C@ha */
/* 805A2E8C  7F E3 FB 78 */	mr r3, r31
/* 805A2E90  38 04 4C 8C */	addi r0, r4, aGTT_actor_move@l /* 0x805A4C8C@l */
/* 805A2E94  90 1F 01 64 */	stw r0, 0x164(r31)
/* 805A2E98  48 00 08 DD */	bl aGTT_Get_flow_angle_rv
/* 805A2E9C  7C 64 1B 78 */	mr r4, r3
/* 805A2EA0  7F E3 FB 78 */	mr r3, r31
/* 805A2EA4  48 00 00 79 */	bl aGTT_set_angle
/* 805A2EA8  38 00 00 00 */	li r0, 0
/* 805A2EAC  7F E3 FB 78 */	mr r3, r31
/* 805A2EB0  98 1F 01 08 */	stb r0, 0x108(r31)
/* 805A2EB4  38 80 00 01 */	li r4, 1
/* 805A2EB8  48 00 1D 8D */	bl aGTT_setupAction
/* 805A2EBC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805A2EC0  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 805A2EC4  7C 08 03 A6 */	mtlr r0
/* 805A2EC8  38 21 00 30 */	addi r1, r1, 0x30
/* 805A2ECC  4E 80 00 20 */	blr 
