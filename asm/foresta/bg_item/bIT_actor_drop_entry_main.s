lbl_804B8CEC:
/* 804B8CEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B8CF0  7C 08 02 A6 */	mflr r0
/* 804B8CF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B8CF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804B8CFC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804B8D00  7C 9E 23 78 */	mr r30, r4
/* 804B8D04  A8 03 00 04 */	lha r0, 4(r3)
/* 804B8D08  83 E3 00 00 */	lwz r31, 0(r3)
/* 804B8D0C  38 60 00 00 */	li r3, 0
/* 804B8D10  7C 09 03 A6 */	mtctr r0
/* 804B8D14  2C 00 00 00 */	cmpwi r0, 0
/* 804B8D18  40 81 02 44 */	ble lbl_804B8F5C
lbl_804B8D1C:
/* 804B8D1C  80 1F 00 00 */	lwz r0, 0(r31)
/* 804B8D20  28 00 00 00 */	cmplwi r0, 0
/* 804B8D24  40 82 02 30 */	bne lbl_804B8F54
/* 804B8D28  7F C3 F3 78 */	mr r3, r30
/* 804B8D2C  7F E4 FB 78 */	mr r4, r31
/* 804B8D30  38 A0 00 A8 */	li r5, 0xa8
/* 804B8D34  4B BA 42 E9 */	bl func_8005D01C
/* 804B8D38  A0 7E 00 0E */	lhz r3, 0xe(r30)
/* 804B8D3C  38 00 00 00 */	li r0, 0
/* 804B8D40  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 804B8D44  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 804B8D48  A0 1E 00 6C */	lhz r0, 0x6c(r30)
/* 804B8D4C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804B8D50  41 82 00 18 */	beq lbl_804B8D68
/* 804B8D54  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804B8D58  38 7F 00 2C */	addi r3, r31, 0x2c
/* 804B8D5C  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 804B8D60  4B F0 21 5D */	bl xyz_t_move
/* 804B8D64  48 00 00 18 */	b lbl_804B8D7C
lbl_804B8D68:
/* 804B8D68  3C 60 80 64 */	lis r3, lit_845@ha /* 0x806460B4@ha */
/* 804B8D6C  C0 03 60 B4 */	lfs f0, lit_845@l(r3)  /* 0x806460B4@l */
/* 804B8D70  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804B8D74  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804B8D78  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804B8D7C:
/* 804B8D7C  38 00 00 00 */	li r0, 0
/* 804B8D80  3C 60 80 64 */	lis r3, data_8064608C@ha /* 0x8064608C@ha */
/* 804B8D84  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 804B8D88  38 83 60 8C */	addi r4, r3, data_8064608C@l /* 0x8064608C@l */
/* 804B8D8C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804B8D90  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804B8D94  B0 1F 00 46 */	sth r0, 0x46(r31)
/* 804B8D98  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804B8D9C  38 7F 00 38 */	addi r3, r31, 0x38
/* 804B8DA0  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804B8DA4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804B8DA8  4B F0 21 15 */	bl xyz_t_move
/* 804B8DAC  38 00 00 00 */	li r0, 0
/* 804B8DB0  3C 60 80 4C */	lis r3, bIT_actor_drop_draw_nrm@ha /* 0x804BB284@ha */
/* 804B8DB4  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804B8DB8  38 03 B2 84 */	addi r0, r3, bIT_actor_drop_draw_nrm@l /* 0x804BB284@l */
/* 804B8DBC  90 1F 00 04 */	stw r0, 4(r31)
/* 804B8DC0  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B8DC4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804B8DC8  41 82 00 58 */	beq lbl_804B8E20
/* 804B8DCC  38 7F 00 14 */	addi r3, r31, 0x14
/* 804B8DD0  38 9E 00 20 */	addi r4, r30, 0x20
/* 804B8DD4  4B F0 20 E9 */	bl xyz_t_move
/* 804B8DD8  38 C0 00 00 */	li r6, 0
/* 804B8DDC  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x806460D0@ha */
/* 804B8DE0  B0 DF 00 58 */	sth r6, 0x58(r31)
/* 804B8DE4  38 A3 60 D0 */	addi r5, r3, lit_1188@l /* 0x806460D0@l */
/* 804B8DE8  38 00 17 70 */	li r0, 0x1770
/* 804B8DEC  3C 80 80 4C */	lis r4, bIT_actor_drop_move_plant@ha /* 0x804BA884@ha */
/* 804B8DF0  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 804B8DF4  3C 60 80 4C */	lis r3, bIT_actor_drop_move_plant_destruct@ha /* 0x804B8710@ha */
/* 804B8DF8  C0 05 00 00 */	lfs f0, 0(r5)
/* 804B8DFC  38 A0 00 FF */	li r5, 0xff
/* 804B8E00  38 84 A8 84 */	addi r4, r4, bIT_actor_drop_move_plant@l /* 0x804BA884@l */
/* 804B8E04  38 03 87 10 */	addi r0, r3, bIT_actor_drop_move_plant_destruct@l /* 0x804B8710@l */
/* 804B8E08  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 804B8E0C  98 BF 00 72 */	stb r5, 0x72(r31)
/* 804B8E10  90 9F 00 00 */	stw r4, 0(r31)
/* 804B8E14  90 1F 00 08 */	stw r0, 8(r31)
/* 804B8E18  B0 DF 00 6E */	sth r6, 0x6e(r31)
/* 804B8E1C  48 00 01 30 */	b lbl_804B8F4C
lbl_804B8E20:
/* 804B8E20  38 7F 00 94 */	addi r3, r31, 0x94
/* 804B8E24  38 9E 00 14 */	addi r4, r30, 0x14
/* 804B8E28  4B F0 20 95 */	bl xyz_t_move
/* 804B8E2C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804B8E30  28 00 00 62 */	cmplwi r0, 0x62
/* 804B8E34  41 82 00 AC */	beq lbl_804B8EE0
/* 804B8E38  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 804B8E3C  38 61 00 08 */	addi r3, r1, 8
/* 804B8E40  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 804B8E44  90 81 00 08 */	stw r4, 8(r1)
/* 804B8E48  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B8E4C  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 804B8E50  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B8E54  4B EE E5 DD */	bl mFI_GetUnitFG
/* 804B8E58  28 03 00 00 */	cmplwi r3, 0
/* 804B8E5C  41 82 00 84 */	beq lbl_804B8EE0
/* 804B8E60  A0 03 00 00 */	lhz r0, 0(r3)
/* 804B8E64  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804B8E68  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B8E6C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804B8E70  40 82 00 70 */	bne lbl_804B8EE0
/* 804B8E74  A0 1F 00 74 */	lhz r0, 0x74(r31)
/* 804B8E78  28 00 00 11 */	cmplwi r0, 0x11
/* 804B8E7C  41 80 00 0C */	blt lbl_804B8E88
/* 804B8E80  28 00 00 29 */	cmplwi r0, 0x29
/* 804B8E84  40 81 00 0C */	ble lbl_804B8E90
lbl_804B8E88:
/* 804B8E88  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B8E8C  40 82 00 54 */	bne lbl_804B8EE0
lbl_804B8E90:
/* 804B8E90  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B8E94  60 00 00 08 */	ori r0, r0, 8
/* 804B8E98  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804B8E9C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804B8EA0  28 00 29 02 */	cmplwi r0, 0x2902
/* 804B8EA4  41 80 00 18 */	blt lbl_804B8EBC
/* 804B8EA8  28 00 29 0A */	cmplwi r0, 0x290a
/* 804B8EAC  41 81 00 10 */	bgt lbl_804B8EBC
/* 804B8EB0  38 00 00 68 */	li r0, 0x68
/* 804B8EB4  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804B8EB8  48 00 00 28 */	b lbl_804B8EE0
lbl_804B8EBC:
/* 804B8EBC  28 00 29 00 */	cmplwi r0, 0x2900
/* 804B8EC0  40 82 00 10 */	bne lbl_804B8ED0
/* 804B8EC4  38 00 08 00 */	li r0, 0x800
/* 804B8EC8  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804B8ECC  48 00 00 14 */	b lbl_804B8EE0
lbl_804B8ED0:
/* 804B8ED0  28 00 29 01 */	cmplwi r0, 0x2901
/* 804B8ED4  40 82 00 0C */	bne lbl_804B8EE0
/* 804B8ED8  38 00 08 5D */	li r0, 0x85d
/* 804B8EDC  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_804B8EE0:
/* 804B8EE0  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B8EE4  38 7F 00 14 */	addi r3, r31, 0x14
/* 804B8EE8  38 9F 00 20 */	addi r4, r31, 0x20
/* 804B8EEC  60 00 20 00 */	ori r0, r0, 0x2000
/* 804B8EF0  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804B8EF4  4B F0 22 3D */	bl search_position_angleY
/* 804B8EF8  B0 7F 00 5C */	sth r3, 0x5c(r31)
/* 804B8EFC  38 00 00 FF */	li r0, 0xff
/* 804B8F00  3C 80 80 4C */	lis r4, bIT_actor_drop_move_fly@ha /* 0x804BAC7C@ha */
/* 804B8F04  3C 60 80 4C */	lis r3, bIT_actor_drop_move_fly_destruct@ha /* 0x804B8BD8@ha */
/* 804B8F08  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804B8F0C  38 84 AC 7C */	addi r4, r4, bIT_actor_drop_move_fly@l /* 0x804BAC7C@l */
/* 804B8F10  38 63 8B D8 */	addi r3, r3, bIT_actor_drop_move_fly_destruct@l /* 0x804B8BD8@l */
/* 804B8F14  38 00 00 00 */	li r0, 0
/* 804B8F18  90 9F 00 00 */	stw r4, 0(r31)
/* 804B8F1C  90 7F 00 08 */	stw r3, 8(r31)
/* 804B8F20  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804B8F24  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804B8F28  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 804B8F2C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B8F30  FC 00 02 10 */	fabs f0, f0
/* 804B8F34  FC 00 00 18 */	frsp f0, f0
/* 804B8F38  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 804B8F3C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804B8F40  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 804B8F44  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 804B8F48  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
lbl_804B8F4C:
/* 804B8F4C  38 60 00 01 */	li r3, 1
/* 804B8F50  48 00 00 0C */	b lbl_804B8F5C
lbl_804B8F54:
/* 804B8F54  3B FF 00 A8 */	addi r31, r31, 0xa8
/* 804B8F58  42 00 FD C4 */	bdnz lbl_804B8D1C
lbl_804B8F5C:
/* 804B8F5C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B8F60  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804B8F64  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804B8F68  7C 08 03 A6 */	mtlr r0
/* 804B8F6C  38 21 00 20 */	addi r1, r1, 0x20
/* 804B8F70  4E 80 00 20 */	blr 
