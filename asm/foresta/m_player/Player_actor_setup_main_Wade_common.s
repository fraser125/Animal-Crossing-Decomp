lbl_804E8D4C:
/* 804E8D4C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804E8D50  7C 08 02 A6 */	mflr r0
/* 804E8D54  90 01 00 34 */	stw r0, 0x34(r1)
/* 804E8D58  39 61 00 30 */	addi r11, r1, 0x30
/* 804E8D5C  4B BB 21 75 */	bl func_8009AED0
/* 804E8D60  7C 7D 1B 78 */	mr r29, r3
/* 804E8D64  7C 9E 23 78 */	mr r30, r4
/* 804E8D68  4B FF 6F 95 */	bl Player_actor_setup_main_Wade_other_func1
/* 804E8D6C  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E8D70  83 9D 0D 60 */	lwz r28, 0xd60(r29)
/* 804E8D74  38 83 83 54 */	addi r4, r3, lit_7381@l /* 0x80648354@l */
/* 804E8D78  7F A3 EB 78 */	mr r3, r29
/* 804E8D7C  C0 24 00 00 */	lfs f1, 0(r4)
/* 804E8D80  3B FD 00 28 */	addi r31, r29, 0x28
/* 804E8D84  38 A1 00 0C */	addi r5, r1, 0xc
/* 804E8D88  38 C1 00 08 */	addi r6, r1, 8
/* 804E8D8C  38 80 00 00 */	li r4, 0
/* 804E8D90  4B FF 11 D1 */	bl Player_actor_SetupItem_Base1
/* 804E8D94  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 804E8D98  3C 80 80 64 */	lis r4, lit_2671@ha /* 0x80646C4C@ha */
/* 804E8D9C  38 A3 65 64 */	addi r5, r3, lit_603@l /* 0x80646564@l */
/* 804E8DA0  C0 64 6C 4C */	lfs f3, lit_2671@l(r4)  /* 0x80646C4C@l */
/* 804E8DA4  C0 25 00 00 */	lfs f1, 0(r5)
/* 804E8DA8  3C 60 80 65 */	lis r3, lit_7381@ha /* 0x80648354@ha */
/* 804E8DAC  C0 83 83 54 */	lfs f4, lit_7381@l(r3)  /* 0x80648354@l */
/* 804E8DB0  7F A3 EB 78 */	mr r3, r29
/* 804E8DB4  FC 40 08 90 */	fmr f2, f1
/* 804E8DB8  80 C1 00 0C */	lwz r6, 0xc(r1)
/* 804E8DBC  80 E1 00 08 */	lwz r7, 8(r1)
/* 804E8DC0  7F C4 F3 78 */	mr r4, r30
/* 804E8DC4  38 A0 00 00 */	li r5, 0
/* 804E8DC8  4B FE D9 31 */	bl Player_actor_InitAnimation_Base1
/* 804E8DCC  93 9D 0D 18 */	stw r28, 0xd18(r29)
/* 804E8DD0  3C 60 80 64 */	lis r3, lit_1075@ha /* 0x80646A14@ha */
/* 804E8DD4  38 C3 6A 14 */	addi r6, r3, lit_1075@l /* 0x80646A14@l */
/* 804E8DD8  7F E3 FB 78 */	mr r3, r31
/* 804E8DDC  80 FF 00 00 */	lwz r7, 0(r31)
/* 804E8DE0  7F 85 E3 78 */	mr r5, r28
/* 804E8DE4  80 1F 00 04 */	lwz r0, 4(r31)
/* 804E8DE8  38 9D 0D 28 */	addi r4, r29, 0xd28
/* 804E8DEC  C0 26 00 00 */	lfs f1, 0(r6)
/* 804E8DF0  90 FD 0D 1C */	stw r7, 0xd1c(r29)
/* 804E8DF4  90 1D 0D 20 */	stw r0, 0xd20(r29)
/* 804E8DF8  80 1F 00 08 */	lwz r0, 8(r31)
/* 804E8DFC  90 1D 0D 24 */	stw r0, 0xd24(r29)
/* 804E8E00  4B FF 46 E5 */	bl Player_actor_Culc_wade_end_pos
/* 804E8E04  3C 80 80 64 */	lis r4, lit_604@ha /* 0x80646568@ha */
/* 804E8E08  7F A3 EB 78 */	mr r3, r29
/* 804E8E0C  38 A4 65 68 */	addi r5, r4, lit_604@l /* 0x80646568@l */
/* 804E8E10  7F C4 F3 78 */	mr r4, r30
/* 804E8E14  C0 05 00 00 */	lfs f0, 0(r5)
/* 804E8E18  D0 1D 0D 34 */	stfs f0, 0xd34(r29)
/* 804E8E1C  4B FE CA DD */	bl Player_actor_setup_main_Base
/* 804E8E20  80 DD 0D 28 */	lwz r6, 0xd28(r29)
/* 804E8E24  3C 60 80 64 */	lis r3, lit_1076@ha /* 0x80646A18@ha */
/* 804E8E28  80 1D 0D 2C */	lwz r0, 0xd2c(r29)
/* 804E8E2C  38 81 00 10 */	addi r4, r1, 0x10
/* 804E8E30  C0 23 6A 18 */	lfs f1, lit_1076@l(r3)  /* 0x80646A18@l */
/* 804E8E34  7F C3 F3 78 */	mr r3, r30
/* 804E8E38  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E8E3C  38 A0 00 09 */	li r5, 9
/* 804E8E40  90 C1 00 10 */	stw r6, 0x10(r1)
/* 804E8E44  C0 61 00 14 */	lfs f3, 0x14(r1)
/* 804E8E48  80 1D 0D 30 */	lwz r0, 0xd30(r29)
/* 804E8E4C  90 01 00 18 */	stw r0, 0x18(r1)
/* 804E8E50  C0 5D 00 4C */	lfs f2, 0x4c(r29)
/* 804E8E54  C0 1F 00 04 */	lfs f0, 4(r31)
/* 804E8E58  EC 02 00 28 */	fsubs f0, f2, f0
/* 804E8E5C  EC 03 00 2A */	fadds f0, f3, f0
/* 804E8E60  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804E8E64  4B E9 66 51 */	bl Camera2_request_main_wade
/* 804E8E68  7F A3 EB 78 */	mr r3, r29
/* 804E8E6C  7F C4 F3 78 */	mr r4, r30
/* 804E8E70  4B FF 6E B9 */	bl Player_actor_setup_main_Wade_other_func2
/* 804E8E74  39 61 00 30 */	addi r11, r1, 0x30
/* 804E8E78  4B BB 20 A5 */	bl func_8009AF1C
/* 804E8E7C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804E8E80  7C 08 03 A6 */	mtlr r0
/* 804E8E84  38 21 00 30 */	addi r1, r1, 0x30
/* 804E8E88  4E 80 00 20 */	blr 
