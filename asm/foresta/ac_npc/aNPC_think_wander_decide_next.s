lbl_80536C44:
/* 80536C44  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80536C48  7C 08 02 A6 */	mflr r0
/* 80536C4C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80536C50  39 61 00 50 */	addi r11, r1, 0x50
/* 80536C54  4B B6 42 7D */	bl func_8009AED0
/* 80536C58  7C 7D 1B 78 */	mr r29, r3
/* 80536C5C  38 61 00 20 */	addi r3, r1, 0x20
/* 80536C60  3B E0 00 00 */	li r31, 0
/* 80536C64  38 80 00 0C */	li r4, 0xc
/* 80536C68  4B B2 64 01 */	bl bzero
/* 80536C6C  7F A3 EB 78 */	mr r3, r29
/* 80536C70  4B FF F3 49 */	bl aNPC_check_fatigue
/* 80536C74  2C 03 00 01 */	cmpwi r3, 1
/* 80536C78  41 82 00 14 */	beq lbl_80536C8C
/* 80536C7C  7F A3 EB 78 */	mr r3, r29
/* 80536C80  4B FF 5B C1 */	bl func_8052C840
/* 80536C84  2C 03 00 04 */	cmpwi r3, 4
/* 80536C88  40 82 00 0C */	bne lbl_80536C94
lbl_80536C8C:
/* 80536C8C  3B C0 00 00 */	li r30, 0
/* 80536C90  48 00 01 D0 */	b lbl_80536E60
lbl_80536C94:
/* 80536C94  88 1D 07 F5 */	lbz r0, 0x7f5(r29)
/* 80536C98  28 00 00 03 */	cmplwi r0, 3
/* 80536C9C  40 82 00 AC */	bne lbl_80536D48
/* 80536CA0  88 1D 09 58 */	lbz r0, 0x958(r29)
/* 80536CA4  3B C0 00 00 */	li r30, 0
/* 80536CA8  28 00 00 00 */	cmplwi r0, 0
/* 80536CAC  40 82 01 B4 */	bne lbl_80536E60
/* 80536CB0  A8 1D 08 00 */	lha r0, 0x800(r29)
/* 80536CB4  3C E0 43 30 */	lis r7, 0x4330
/* 80536CB8  A8 7D 08 02 */	lha r3, 0x802(r29)
/* 80536CBC  3C A0 80 65 */	lis r5, lit_818@ha /* 0x80649284@ha */
/* 80536CC0  6C 04 80 00 */	xoris r4, r0, 0x8000
/* 80536CC4  80 01 00 18 */	lwz r0, 0x18(r1)
/* 80536CC8  6C 66 80 00 */	xoris r6, r3, 0x8000
/* 80536CCC  90 81 00 34 */	stw r4, 0x34(r1)
/* 80536CD0  38 85 92 84 */	addi r4, r5, lit_818@l /* 0x80649284@l */
/* 80536CD4  7F A3 EB 78 */	mr r3, r29
/* 80536CD8  90 E1 00 30 */	stw r7, 0x30(r1)
/* 80536CDC  38 A1 00 08 */	addi r5, r1, 8
/* 80536CE0  C8 44 00 00 */	lfd f2, 0(r4)
/* 80536CE4  38 80 00 00 */	li r4, 0
/* 80536CE8  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 80536CEC  90 C1 00 3C */	stw r6, 0x3c(r1)
/* 80536CF0  EC 20 10 28 */	fsubs f1, f0, f2
/* 80536CF4  90 E1 00 38 */	stw r7, 0x38(r1)
/* 80536CF8  C8 01 00 38 */	lfd f0, 0x38(r1)
/* 80536CFC  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80536D00  EC 00 10 28 */	fsubs f0, f0, f2
/* 80536D04  80 C1 00 14 */	lwz r6, 0x14(r1)
/* 80536D08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80536D0C  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80536D10  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 80536D14  90 C1 00 08 */	stw r6, 8(r1)
/* 80536D18  90 01 00 10 */	stw r0, 0x10(r1)
/* 80536D1C  88 DD 09 17 */	lbz r6, 0x917(r29)
/* 80536D20  4B FF 84 3D */	bl aNPC_moveRangeCheck2
/* 80536D24  2C 03 00 01 */	cmpwi r3, 1
/* 80536D28  40 82 01 38 */	bne lbl_80536E60
/* 80536D2C  A8 1D 08 00 */	lha r0, 0x800(r29)
/* 80536D30  3B C0 00 01 */	li r30, 1
/* 80536D34  3B E0 00 03 */	li r31, 3
/* 80536D38  B0 01 00 24 */	sth r0, 0x24(r1)
/* 80536D3C  A8 1D 08 02 */	lha r0, 0x802(r29)
/* 80536D40  B0 01 00 26 */	sth r0, 0x26(r1)
/* 80536D44  48 00 01 1C */	b lbl_80536E60
lbl_80536D48:
/* 80536D48  4B B2 5F AD */	bl fqrand
/* 80536D4C  3C 60 80 65 */	lis r3, lit_4067@ha /* 0x80649350@ha */
/* 80536D50  A0 1D 00 06 */	lhz r0, 6(r29)
/* 80536D54  C0 03 93 50 */	lfs f0, lit_4067@l(r3)  /* 0x80649350@l */
/* 80536D58  54 00 A7 3E */	rlwinm r0, r0, 0x14, 0x1c, 0x1f
/* 80536D5C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80536D60  2C 00 00 0E */	cmpwi r0, 0xe
/* 80536D64  FC 00 00 1E */	fctiwz f0, f0
/* 80536D68  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 80536D6C  83 81 00 3C */	lwz r28, 0x3c(r1)
/* 80536D70  40 82 00 20 */	bne lbl_80536D90
/* 80536D74  7F A3 EB 78 */	mr r3, r29
/* 80536D78  4B E9 B1 89 */	bl mNpc_GetNpcLooks
/* 80536D7C  3C 80 80 6A */	lis r4, decide_boarder@ha /* 0x806A28DC@ha */
/* 80536D80  54 60 10 3A */	slwi r0, r3, 2
/* 80536D84  38 64 28 DC */	addi r3, r4, decide_boarder@l /* 0x806A28DC@l */
/* 80536D88  7C 63 00 2E */	lwzx r3, r3, r0
/* 80536D8C  48 00 00 0C */	b lbl_80536D98
lbl_80536D90:
/* 80536D90  3C 60 80 6A */	lis r3, s_npc_decide_boarder@ha /* 0x806A28D4@ha */
/* 80536D94  38 63 28 D4 */	addi r3, r3, s_npc_decide_boarder@l /* 0x806A28D4@l */
lbl_80536D98:
/* 80536D98  80 1D 07 C4 */	lwz r0, 0x7c4(r29)
/* 80536D9C  2C 00 00 02 */	cmpwi r0, 2
/* 80536DA0  40 82 00 1C */	bne lbl_80536DBC
/* 80536DA4  2C 1C 00 05 */	cmpwi r28, 5
/* 80536DA8  40 81 00 0C */	ble lbl_80536DB4
/* 80536DAC  3B C0 00 00 */	li r30, 0
/* 80536DB0  48 00 00 34 */	b lbl_80536DE4
lbl_80536DB4:
/* 80536DB4  3B C0 00 01 */	li r30, 1
/* 80536DB8  48 00 00 2C */	b lbl_80536DE4
lbl_80536DBC:
/* 80536DBC  3B C0 00 00 */	li r30, 0
/* 80536DC0  48 00 00 18 */	b lbl_80536DD8
lbl_80536DC4:
/* 80536DC4  80 03 00 00 */	lwz r0, 0(r3)
/* 80536DC8  7C 1C 00 00 */	cmpw r28, r0
/* 80536DCC  40 81 00 18 */	ble lbl_80536DE4
/* 80536DD0  38 63 00 04 */	addi r3, r3, 4
/* 80536DD4  3B DE 00 01 */	addi r30, r30, 1
lbl_80536DD8:
/* 80536DD8  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80536DDC  28 00 00 02 */	cmplwi r0, 2
/* 80536DE0  41 80 FF E4 */	blt lbl_80536DC4
lbl_80536DE4:
/* 80536DE4  57 C0 06 3E */	clrlwi r0, r30, 0x18
/* 80536DE8  2C 00 00 01 */	cmpwi r0, 1
/* 80536DEC  41 82 00 3C */	beq lbl_80536E28
/* 80536DF0  40 80 00 08 */	bge lbl_80536DF8
/* 80536DF4  48 00 00 6C */	b lbl_80536E60
lbl_80536DF8:
/* 80536DF8  2C 00 00 03 */	cmpwi r0, 3
/* 80536DFC  40 80 00 64 */	bge lbl_80536E60
/* 80536E00  80 9D 01 84 */	lwz r4, 0x184(r29)
/* 80536E04  28 04 00 00 */	cmplwi r4, 0
/* 80536E08  41 82 00 20 */	beq lbl_80536E28
/* 80536E0C  88 64 00 08 */	lbz r3, 8(r4)
/* 80536E10  28 03 00 00 */	cmplwi r3, 0
/* 80536E14  40 82 00 14 */	bne lbl_80536E28
/* 80536E18  88 04 00 0A */	lbz r0, 0xa(r4)
/* 80536E1C  7C 03 00 40 */	cmplw r3, r0
/* 80536E20  41 82 00 08 */	beq lbl_80536E28
/* 80536E24  3B C0 00 01 */	li r30, 1
lbl_80536E28:
/* 80536E28  7F A4 EB 78 */	mr r4, r29
/* 80536E2C  38 61 00 20 */	addi r3, r1, 0x20
/* 80536E30  4B FF FB BD */	bl aNPC_think_wander_move_next
/* 80536E34  2C 03 00 00 */	cmpwi r3, 0
/* 80536E38  40 82 00 0C */	bne lbl_80536E44
/* 80536E3C  3B C0 00 00 */	li r30, 0
/* 80536E40  48 00 00 20 */	b lbl_80536E60
lbl_80536E44:
/* 80536E44  7F A3 EB 78 */	mr r3, r29
/* 80536E48  38 81 00 20 */	addi r4, r1, 0x20
/* 80536E4C  4B FF FA F1 */	bl func_8053693C
/* 80536E50  2C 03 00 01 */	cmpwi r3, 1
/* 80536E54  40 82 00 08 */	bne lbl_80536E5C
/* 80536E58  3B C0 00 03 */	li r30, 3
lbl_80536E5C:
/* 80536E5C  3B E0 00 03 */	li r31, 3
lbl_80536E60:
/* 80536E60  7F A3 EB 78 */	mr r3, r29
/* 80536E64  7F C5 F3 78 */	mr r5, r30
/* 80536E68  7F E6 FB 78 */	mr r6, r31
/* 80536E6C  38 E1 00 20 */	addi r7, r1, 0x20
/* 80536E70  38 80 00 01 */	li r4, 1
/* 80536E74  4B FF A7 89 */	bl aNPC_set_request_act
/* 80536E78  39 61 00 50 */	addi r11, r1, 0x50
/* 80536E7C  4B B6 40 A1 */	bl func_8009AF1C
/* 80536E80  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80536E84  7C 08 03 A6 */	mtlr r0
/* 80536E88  38 21 00 50 */	addi r1, r1, 0x50
/* 80536E8C  4E 80 00 20 */	blr 
