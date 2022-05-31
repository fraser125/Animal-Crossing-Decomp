lbl_804B1968:
/* 804B1968  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804B196C  7C 08 02 A6 */	mflr r0
/* 804B1970  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B1974  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804B1978  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804B197C  7C 9E 23 78 */	mr r30, r4
/* 804B1980  A8 03 00 04 */	lha r0, 4(r3)
/* 804B1984  83 E3 00 00 */	lwz r31, 0(r3)
/* 804B1988  38 60 00 00 */	li r3, 0
/* 804B198C  7C 09 03 A6 */	mtctr r0
/* 804B1990  2C 00 00 00 */	cmpwi r0, 0
/* 804B1994  40 81 02 44 */	ble lbl_804B1BD8
lbl_804B1998:
/* 804B1998  80 1F 00 00 */	lwz r0, 0(r31)
/* 804B199C  28 00 00 00 */	cmplwi r0, 0
/* 804B19A0  40 82 02 30 */	bne lbl_804B1BD0
/* 804B19A4  7F C3 F3 78 */	mr r3, r30
/* 804B19A8  7F E4 FB 78 */	mr r4, r31
/* 804B19AC  38 A0 00 A8 */	li r5, 0xa8
/* 804B19B0  4B BA B6 6D */	bl func_8005D01C
/* 804B19B4  A0 7E 00 0E */	lhz r3, 0xe(r30)
/* 804B19B8  38 00 00 00 */	li r0, 0
/* 804B19BC  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 804B19C0  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 804B19C4  A0 1E 00 6C */	lhz r0, 0x6c(r30)
/* 804B19C8  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804B19CC  41 82 00 18 */	beq lbl_804B19E4
/* 804B19D0  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804B19D4  38 7F 00 2C */	addi r3, r31, 0x2c
/* 804B19D8  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 804B19DC  4B F0 94 E1 */	bl xyz_t_move
/* 804B19E0  48 00 00 18 */	b lbl_804B19F8
lbl_804B19E4:
/* 804B19E4  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646014@ha */
/* 804B19E8  C0 03 60 14 */	lfs f0, lit_845@l(r3)  /* 0x80646014@l */
/* 804B19EC  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804B19F0  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804B19F4  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804B19F8:
/* 804B19F8  38 00 00 00 */	li r0, 0
/* 804B19FC  3C 60 80 64 */	lis r3, data_80645FEC@ha /* 0x80645FEC@ha */
/* 804B1A00  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 804B1A04  38 83 5F EC */	addi r4, r3, data_80645FEC@l /* 0x80645FEC@l */
/* 804B1A08  C0 04 00 00 */	lfs f0, 0(r4)
/* 804B1A0C  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804B1A10  B0 1F 00 46 */	sth r0, 0x46(r31)
/* 804B1A14  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804B1A18  38 7F 00 38 */	addi r3, r31, 0x38
/* 804B1A1C  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804B1A20  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804B1A24  4B F0 94 99 */	bl xyz_t_move
/* 804B1A28  38 00 00 00 */	li r0, 0
/* 804B1A2C  3C 60 80 4B */	lis r3, bIT_actor_drop_draw_nrm@ha /* 0x804B3F00@ha */
/* 804B1A30  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804B1A34  38 03 3F 00 */	addi r0, r3, bIT_actor_drop_draw_nrm@l /* 0x804B3F00@l */
/* 804B1A38  90 1F 00 04 */	stw r0, 4(r31)
/* 804B1A3C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B1A40  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804B1A44  41 82 00 58 */	beq lbl_804B1A9C
/* 804B1A48  38 7F 00 14 */	addi r3, r31, 0x14
/* 804B1A4C  38 9E 00 20 */	addi r4, r30, 0x20
/* 804B1A50  4B F0 94 6D */	bl xyz_t_move
/* 804B1A54  38 C0 00 00 */	li r6, 0
/* 804B1A58  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646030@ha */
/* 804B1A5C  B0 DF 00 58 */	sth r6, 0x58(r31)
/* 804B1A60  38 A3 60 30 */	addi r5, r3, lit_1188@l /* 0x80646030@l */
/* 804B1A64  38 00 17 70 */	li r0, 0x1770
/* 804B1A68  3C 80 80 4B */	lis r4, bIT_actor_drop_move_plant@ha /* 0x804B3500@ha */
/* 804B1A6C  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 804B1A70  3C 60 80 4B */	lis r3, bIT_actor_drop_move_plant_destruct@ha /* 0x804B138C@ha */
/* 804B1A74  C0 05 00 00 */	lfs f0, 0(r5)
/* 804B1A78  38 A0 00 FF */	li r5, 0xff
/* 804B1A7C  38 84 35 00 */	addi r4, r4, bIT_actor_drop_move_plant@l /* 0x804B3500@l */
/* 804B1A80  38 03 13 8C */	addi r0, r3, bIT_actor_drop_move_plant_destruct@l /* 0x804B138C@l */
/* 804B1A84  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 804B1A88  98 BF 00 72 */	stb r5, 0x72(r31)
/* 804B1A8C  90 9F 00 00 */	stw r4, 0(r31)
/* 804B1A90  90 1F 00 08 */	stw r0, 8(r31)
/* 804B1A94  B0 DF 00 6E */	sth r6, 0x6e(r31)
/* 804B1A98  48 00 01 30 */	b lbl_804B1BC8
lbl_804B1A9C:
/* 804B1A9C  38 7F 00 94 */	addi r3, r31, 0x94
/* 804B1AA0  38 9E 00 14 */	addi r4, r30, 0x14
/* 804B1AA4  4B F0 94 19 */	bl xyz_t_move
/* 804B1AA8  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804B1AAC  28 00 00 62 */	cmplwi r0, 0x62
/* 804B1AB0  41 82 00 AC */	beq lbl_804B1B5C
/* 804B1AB4  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 804B1AB8  38 61 00 08 */	addi r3, r1, 8
/* 804B1ABC  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 804B1AC0  90 81 00 08 */	stw r4, 8(r1)
/* 804B1AC4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804B1AC8  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 804B1ACC  90 01 00 10 */	stw r0, 0x10(r1)
/* 804B1AD0  4B EF 59 61 */	bl mFI_GetUnitFG
/* 804B1AD4  28 03 00 00 */	cmplwi r3, 0
/* 804B1AD8  41 82 00 84 */	beq lbl_804B1B5C
/* 804B1ADC  A0 03 00 00 */	lhz r0, 0(r3)
/* 804B1AE0  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804B1AE4  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B1AE8  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804B1AEC  40 82 00 70 */	bne lbl_804B1B5C
/* 804B1AF0  A0 1F 00 74 */	lhz r0, 0x74(r31)
/* 804B1AF4  28 00 00 11 */	cmplwi r0, 0x11
/* 804B1AF8  41 80 00 0C */	blt lbl_804B1B04
/* 804B1AFC  28 00 00 29 */	cmplwi r0, 0x29
/* 804B1B00  40 81 00 0C */	ble lbl_804B1B0C
lbl_804B1B04:
/* 804B1B04  28 00 00 5D */	cmplwi r0, 0x5d
/* 804B1B08  40 82 00 54 */	bne lbl_804B1B5C
lbl_804B1B0C:
/* 804B1B0C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B1B10  60 00 00 08 */	ori r0, r0, 8
/* 804B1B14  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804B1B18  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804B1B1C  28 00 29 02 */	cmplwi r0, 0x2902
/* 804B1B20  41 80 00 18 */	blt lbl_804B1B38
/* 804B1B24  28 00 29 0A */	cmplwi r0, 0x290a
/* 804B1B28  41 81 00 10 */	bgt lbl_804B1B38
/* 804B1B2C  38 00 00 68 */	li r0, 0x68
/* 804B1B30  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804B1B34  48 00 00 28 */	b lbl_804B1B5C
lbl_804B1B38:
/* 804B1B38  28 00 29 00 */	cmplwi r0, 0x2900
/* 804B1B3C  40 82 00 10 */	bne lbl_804B1B4C
/* 804B1B40  38 00 08 00 */	li r0, 0x800
/* 804B1B44  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804B1B48  48 00 00 14 */	b lbl_804B1B5C
lbl_804B1B4C:
/* 804B1B4C  28 00 29 01 */	cmplwi r0, 0x2901
/* 804B1B50  40 82 00 0C */	bne lbl_804B1B5C
/* 804B1B54  38 00 08 5D */	li r0, 0x85d
/* 804B1B58  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_804B1B5C:
/* 804B1B5C  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804B1B60  38 7F 00 14 */	addi r3, r31, 0x14
/* 804B1B64  38 9F 00 20 */	addi r4, r31, 0x20
/* 804B1B68  60 00 20 00 */	ori r0, r0, 0x2000
/* 804B1B6C  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804B1B70  4B F0 95 C1 */	bl search_position_angleY
/* 804B1B74  B0 7F 00 5C */	sth r3, 0x5c(r31)
/* 804B1B78  38 00 00 FF */	li r0, 0xff
/* 804B1B7C  3C 80 80 4B */	lis r4, bIT_actor_drop_move_fly@ha /* 0x804B38F8@ha */
/* 804B1B80  3C 60 80 4B */	lis r3, bIT_actor_drop_move_fly_destruct@ha /* 0x804B1854@ha */
/* 804B1B84  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804B1B88  38 84 38 F8 */	addi r4, r4, bIT_actor_drop_move_fly@l /* 0x804B38F8@l */
/* 804B1B8C  38 63 18 54 */	addi r3, r3, bIT_actor_drop_move_fly_destruct@l /* 0x804B1854@l */
/* 804B1B90  38 00 00 00 */	li r0, 0
/* 804B1B94  90 9F 00 00 */	stw r4, 0(r31)
/* 804B1B98  90 7F 00 08 */	stw r3, 8(r31)
/* 804B1B9C  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804B1BA0  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804B1BA4  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 804B1BA8  EC 01 00 28 */	fsubs f0, f1, f0
/* 804B1BAC  FC 00 02 10 */	fabs f0, f0
/* 804B1BB0  FC 00 00 18 */	frsp f0, f0
/* 804B1BB4  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 804B1BB8  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804B1BBC  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 804B1BC0  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 804B1BC4  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
lbl_804B1BC8:
/* 804B1BC8  38 60 00 01 */	li r3, 1
/* 804B1BCC  48 00 00 0C */	b lbl_804B1BD8
lbl_804B1BD0:
/* 804B1BD0  3B FF 00 A8 */	addi r31, r31, 0xa8
/* 804B1BD4  42 00 FD C4 */	bdnz lbl_804B1998
lbl_804B1BD8:
/* 804B1BD8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804B1BDC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804B1BE0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804B1BE4  7C 08 03 A6 */	mtlr r0
/* 804B1BE8  38 21 00 20 */	addi r1, r1, 0x20
/* 804B1BEC  4E 80 00 20 */	blr 
