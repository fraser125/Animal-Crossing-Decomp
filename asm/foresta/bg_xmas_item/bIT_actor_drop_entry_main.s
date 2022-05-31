lbl_804C7BFC:
/* 804C7BFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804C7C00  7C 08 02 A6 */	mflr r0
/* 804C7C04  90 01 00 24 */	stw r0, 0x24(r1)
/* 804C7C08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804C7C0C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 804C7C10  7C 9E 23 78 */	mr r30, r4
/* 804C7C14  A8 03 00 04 */	lha r0, 4(r3)
/* 804C7C18  83 E3 00 00 */	lwz r31, 0(r3)
/* 804C7C1C  38 60 00 00 */	li r3, 0
/* 804C7C20  7C 09 03 A6 */	mtctr r0
/* 804C7C24  2C 00 00 00 */	cmpwi r0, 0
/* 804C7C28  40 81 02 44 */	ble lbl_804C7E6C
lbl_804C7C2C:
/* 804C7C2C  80 1F 00 00 */	lwz r0, 0(r31)
/* 804C7C30  28 00 00 00 */	cmplwi r0, 0
/* 804C7C34  40 82 02 30 */	bne lbl_804C7E64
/* 804C7C38  7F C3 F3 78 */	mr r3, r30
/* 804C7C3C  7F E4 FB 78 */	mr r4, r31
/* 804C7C40  38 A0 00 A8 */	li r5, 0xa8
/* 804C7C44  4B B9 53 D9 */	bl func_8005D01C
/* 804C7C48  A0 7E 00 0E */	lhz r3, 0xe(r30)
/* 804C7C4C  38 00 00 00 */	li r0, 0
/* 804C7C50  B0 7F 00 10 */	sth r3, 0x10(r31)
/* 804C7C54  B0 1F 00 0C */	sth r0, 0xc(r31)
/* 804C7C58  A0 1E 00 6C */	lhz r0, 0x6c(r30)
/* 804C7C5C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 804C7C60  41 82 00 18 */	beq lbl_804C7C78
/* 804C7C64  3C 80 80 66 */	lis r4, data_8065F050@ha /* 0x8065F050@ha */
/* 804C7C68  38 7F 00 2C */	addi r3, r31, 0x2c
/* 804C7C6C  38 84 F0 50 */	addi r4, r4, data_8065F050@l /* 0x8065F050@l */
/* 804C7C70  4B EF 32 4D */	bl xyz_t_move
/* 804C7C74  48 00 00 18 */	b lbl_804C7C8C
lbl_804C7C78:
/* 804C7C78  3C 60 80 64 */	lis r3, lit_845@ha /* 0x80646204@ha */
/* 804C7C7C  C0 03 62 04 */	lfs f0, lit_845@l(r3)  /* 0x80646204@l */
/* 804C7C80  D0 1F 00 2C */	stfs f0, 0x2c(r31)
/* 804C7C84  D0 1F 00 30 */	stfs f0, 0x30(r31)
/* 804C7C88  D0 1F 00 34 */	stfs f0, 0x34(r31)
lbl_804C7C8C:
/* 804C7C8C  38 00 00 00 */	li r0, 0
/* 804C7C90  3C 60 80 64 */	lis r3, data_806461DC@ha /* 0x806461DC@ha */
/* 804C7C94  B0 1F 00 44 */	sth r0, 0x44(r31)
/* 804C7C98  38 83 61 DC */	addi r4, r3, data_806461DC@l /* 0x806461DC@l */
/* 804C7C9C  C0 04 00 00 */	lfs f0, 0(r4)
/* 804C7CA0  3C 60 80 66 */	lis r3, data_8065F050@ha /* 0x8065F050@ha */
/* 804C7CA4  B0 1F 00 46 */	sth r0, 0x46(r31)
/* 804C7CA8  38 83 F0 50 */	addi r4, r3, data_8065F050@l /* 0x8065F050@l */
/* 804C7CAC  38 7F 00 38 */	addi r3, r31, 0x38
/* 804C7CB0  B0 1F 00 48 */	sth r0, 0x48(r31)
/* 804C7CB4  D0 1F 00 4C */	stfs f0, 0x4c(r31)
/* 804C7CB8  4B EF 32 05 */	bl xyz_t_move
/* 804C7CBC  38 00 00 00 */	li r0, 0
/* 804C7CC0  3C 60 80 4D */	lis r3, bIT_actor_drop_draw_nrm@ha /* 0x804CA194@ha */
/* 804C7CC4  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804C7CC8  38 03 A1 94 */	addi r0, r3, bIT_actor_drop_draw_nrm@l /* 0x804CA194@l */
/* 804C7CCC  90 1F 00 04 */	stw r0, 4(r31)
/* 804C7CD0  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C7CD4  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 804C7CD8  41 82 00 58 */	beq lbl_804C7D30
/* 804C7CDC  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C7CE0  38 9E 00 20 */	addi r4, r30, 0x20
/* 804C7CE4  4B EF 31 D9 */	bl xyz_t_move
/* 804C7CE8  38 C0 00 00 */	li r6, 0
/* 804C7CEC  3C 60 80 64 */	lis r3, lit_1188@ha /* 0x80646220@ha */
/* 804C7CF0  B0 DF 00 58 */	sth r6, 0x58(r31)
/* 804C7CF4  38 A3 62 20 */	addi r5, r3, lit_1188@l /* 0x80646220@l */
/* 804C7CF8  38 00 17 70 */	li r0, 0x1770
/* 804C7CFC  3C 80 80 4D */	lis r4, bIT_actor_drop_move_plant@ha /* 0x804C9794@ha */
/* 804C7D00  B0 1F 00 5A */	sth r0, 0x5a(r31)
/* 804C7D04  3C 60 80 4C */	lis r3, bIT_actor_drop_move_plant_destruct@ha /* 0x804C7620@ha */
/* 804C7D08  C0 05 00 00 */	lfs f0, 0(r5)
/* 804C7D0C  38 A0 00 FF */	li r5, 0xff
/* 804C7D10  38 84 97 94 */	addi r4, r4, bIT_actor_drop_move_plant@l /* 0x804C9794@l */
/* 804C7D14  38 03 76 20 */	addi r0, r3, bIT_actor_drop_move_plant_destruct@l /* 0x804C7620@l */
/* 804C7D18  D0 1F 00 54 */	stfs f0, 0x54(r31)
/* 804C7D1C  98 BF 00 72 */	stb r5, 0x72(r31)
/* 804C7D20  90 9F 00 00 */	stw r4, 0(r31)
/* 804C7D24  90 1F 00 08 */	stw r0, 8(r31)
/* 804C7D28  B0 DF 00 6E */	sth r6, 0x6e(r31)
/* 804C7D2C  48 00 01 30 */	b lbl_804C7E5C
lbl_804C7D30:
/* 804C7D30  38 7F 00 94 */	addi r3, r31, 0x94
/* 804C7D34  38 9E 00 14 */	addi r4, r30, 0x14
/* 804C7D38  4B EF 31 85 */	bl xyz_t_move
/* 804C7D3C  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804C7D40  28 00 00 62 */	cmplwi r0, 0x62
/* 804C7D44  41 82 00 AC */	beq lbl_804C7DF0
/* 804C7D48  80 9E 00 20 */	lwz r4, 0x20(r30)
/* 804C7D4C  38 61 00 08 */	addi r3, r1, 8
/* 804C7D50  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 804C7D54  90 81 00 08 */	stw r4, 8(r1)
/* 804C7D58  90 01 00 0C */	stw r0, 0xc(r1)
/* 804C7D5C  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 804C7D60  90 01 00 10 */	stw r0, 0x10(r1)
/* 804C7D64  4B ED F6 CD */	bl mFI_GetUnitFG
/* 804C7D68  28 03 00 00 */	cmplwi r3, 0
/* 804C7D6C  41 82 00 84 */	beq lbl_804C7DF0
/* 804C7D70  A0 03 00 00 */	lhz r0, 0(r3)
/* 804C7D74  B0 1F 00 74 */	sth r0, 0x74(r31)
/* 804C7D78  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C7D7C  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804C7D80  40 82 00 70 */	bne lbl_804C7DF0
/* 804C7D84  A0 1F 00 74 */	lhz r0, 0x74(r31)
/* 804C7D88  28 00 00 11 */	cmplwi r0, 0x11
/* 804C7D8C  41 80 00 0C */	blt lbl_804C7D98
/* 804C7D90  28 00 00 29 */	cmplwi r0, 0x29
/* 804C7D94  40 81 00 0C */	ble lbl_804C7DA0
lbl_804C7D98:
/* 804C7D98  28 00 00 5D */	cmplwi r0, 0x5d
/* 804C7D9C  40 82 00 54 */	bne lbl_804C7DF0
lbl_804C7DA0:
/* 804C7DA0  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C7DA4  60 00 00 08 */	ori r0, r0, 8
/* 804C7DA8  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C7DAC  A0 1F 00 0E */	lhz r0, 0xe(r31)
/* 804C7DB0  28 00 29 02 */	cmplwi r0, 0x2902
/* 804C7DB4  41 80 00 18 */	blt lbl_804C7DCC
/* 804C7DB8  28 00 29 0A */	cmplwi r0, 0x290a
/* 804C7DBC  41 81 00 10 */	bgt lbl_804C7DCC
/* 804C7DC0  38 00 00 68 */	li r0, 0x68
/* 804C7DC4  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804C7DC8  48 00 00 28 */	b lbl_804C7DF0
lbl_804C7DCC:
/* 804C7DCC  28 00 29 00 */	cmplwi r0, 0x2900
/* 804C7DD0  40 82 00 10 */	bne lbl_804C7DE0
/* 804C7DD4  38 00 08 00 */	li r0, 0x800
/* 804C7DD8  B0 1F 00 10 */	sth r0, 0x10(r31)
/* 804C7DDC  48 00 00 14 */	b lbl_804C7DF0
lbl_804C7DE0:
/* 804C7DE0  28 00 29 01 */	cmplwi r0, 0x2901
/* 804C7DE4  40 82 00 0C */	bne lbl_804C7DF0
/* 804C7DE8  38 00 08 5D */	li r0, 0x85d
/* 804C7DEC  B0 1F 00 10 */	sth r0, 0x10(r31)
lbl_804C7DF0:
/* 804C7DF0  A0 1F 00 6C */	lhz r0, 0x6c(r31)
/* 804C7DF4  38 7F 00 14 */	addi r3, r31, 0x14
/* 804C7DF8  38 9F 00 20 */	addi r4, r31, 0x20
/* 804C7DFC  60 00 20 00 */	ori r0, r0, 0x2000
/* 804C7E00  B0 1F 00 6C */	sth r0, 0x6c(r31)
/* 804C7E04  4B EF 33 2D */	bl search_position_angleY
/* 804C7E08  B0 7F 00 5C */	sth r3, 0x5c(r31)
/* 804C7E0C  38 00 00 FF */	li r0, 0xff
/* 804C7E10  3C 80 80 4D */	lis r4, bIT_actor_drop_move_fly@ha /* 0x804C9B8C@ha */
/* 804C7E14  3C 60 80 4C */	lis r3, bIT_actor_drop_move_fly_destruct@ha /* 0x804C7AE8@ha */
/* 804C7E18  98 1F 00 72 */	stb r0, 0x72(r31)
/* 804C7E1C  38 84 9B 8C */	addi r4, r4, bIT_actor_drop_move_fly@l /* 0x804C9B8C@l */
/* 804C7E20  38 63 7A E8 */	addi r3, r3, bIT_actor_drop_move_fly_destruct@l /* 0x804C7AE8@l */
/* 804C7E24  38 00 00 00 */	li r0, 0
/* 804C7E28  90 9F 00 00 */	stw r4, 0(r31)
/* 804C7E2C  90 7F 00 08 */	stw r3, 8(r31)
/* 804C7E30  B0 1F 00 76 */	sth r0, 0x76(r31)
/* 804C7E34  C0 3F 00 24 */	lfs f1, 0x24(r31)
/* 804C7E38  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 804C7E3C  EC 01 00 28 */	fsubs f0, f1, f0
/* 804C7E40  FC 00 02 10 */	fabs f0, f0
/* 804C7E44  FC 00 00 18 */	frsp f0, f0
/* 804C7E48  D0 1F 00 84 */	stfs f0, 0x84(r31)
/* 804C7E4C  C0 1E 00 60 */	lfs f0, 0x60(r30)
/* 804C7E50  D0 1F 00 A0 */	stfs f0, 0xa0(r31)
/* 804C7E54  C0 1E 00 64 */	lfs f0, 0x64(r30)
/* 804C7E58  D0 1F 00 A4 */	stfs f0, 0xa4(r31)
lbl_804C7E5C:
/* 804C7E5C  38 60 00 01 */	li r3, 1
/* 804C7E60  48 00 00 0C */	b lbl_804C7E6C
lbl_804C7E64:
/* 804C7E64  3B FF 00 A8 */	addi r31, r31, 0xa8
/* 804C7E68  42 00 FD C4 */	bdnz lbl_804C7C2C
lbl_804C7E6C:
/* 804C7E6C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804C7E70  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804C7E74  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 804C7E78  7C 08 03 A6 */	mtlr r0
/* 804C7E7C  38 21 00 20 */	addi r1, r1, 0x20
/* 804C7E80  4E 80 00 20 */	blr 
