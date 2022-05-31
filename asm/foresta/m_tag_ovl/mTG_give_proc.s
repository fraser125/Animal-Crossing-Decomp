lbl_805F39E0:
/* 805F39E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805F39E4  7C 08 02 A6 */	mflr r0
/* 805F39E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805F39EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805F39F0  7C 9F 23 78 */	mr r31, r4
/* 805F39F4  93 C1 00 08 */	stw r30, 8(r1)
/* 805F39F8  7C 7E 1B 78 */	mr r30, r3
/* 805F39FC  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805F3A00  80 63 09 7C */	lwz r3, 0x97c(r3)
/* 805F3A04  38 63 00 08 */	addi r3, r3, 8
/* 805F3A08  4B FF C1 59 */	bl mTG_get_table_idx
/* 805F3A0C  3C A0 81 14 */	lis r5, common_data@ha /* 0x81138538@ha */
/* 805F3A10  54 64 08 3C */	slwi r4, r3, 1
/* 805F3A14  38 A5 85 38 */	addi r5, r5, common_data@l /* 0x81138538@l */
/* 805F3A18  80 FE 01 74 */	lwz r7, 0x174(r30)
/* 805F3A1C  3C C5 00 02 */	addis r6, r5, 2
/* 805F3A20  38 00 00 01 */	li r0, 1
/* 805F3A24  80 A6 61 3C */	lwz r5, 0x613c(r6)
/* 805F3A28  7C 85 22 14 */	add r4, r5, r4
/* 805F3A2C  A0 84 00 68 */	lhz r4, 0x68(r4)
/* 805F3A30  B0 87 00 00 */	sth r4, 0(r7)
/* 805F3A34  98 67 00 02 */	stb r3, 2(r7)
/* 805F3A38  B0 1E 01 7A */	sth r0, 0x17a(r30)
/* 805F3A3C  80 1F 00 3C */	lwz r0, 0x3c(r31)
/* 805F3A40  A0 67 00 00 */	lhz r3, 0(r7)
/* 805F3A44  2C 00 00 02 */	cmpwi r0, 2
/* 805F3A48  54 64 C7 3E */	rlwinm r4, r3, 0x18, 0x1c, 0x1f
/* 805F3A4C  40 82 00 10 */	bne lbl_805F3A5C
/* 805F3A50  38 00 00 08 */	li r0, 8
/* 805F3A54  98 1E 01 63 */	stb r0, 0x163(r30)
/* 805F3A58  48 00 00 48 */	b lbl_805F3AA0
lbl_805F3A5C:
/* 805F3A5C  2C 00 00 01 */	cmpwi r0, 1
/* 805F3A60  40 82 00 10 */	bne lbl_805F3A70
/* 805F3A64  38 00 00 07 */	li r0, 7
/* 805F3A68  98 1E 01 63 */	stb r0, 0x163(r30)
/* 805F3A6C  48 00 00 34 */	b lbl_805F3AA0
lbl_805F3A70:
/* 805F3A70  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 805F3A74  2C 00 00 02 */	cmpwi r0, 2
/* 805F3A78  40 82 00 20 */	bne lbl_805F3A98
/* 805F3A7C  2C 04 00 08 */	cmpwi r4, 8
/* 805F3A80  41 82 00 0C */	beq lbl_805F3A8C
/* 805F3A84  2C 04 00 03 */	cmpwi r4, 3
/* 805F3A88  40 82 00 10 */	bne lbl_805F3A98
lbl_805F3A8C:
/* 805F3A8C  38 00 00 05 */	li r0, 5
/* 805F3A90  98 1E 01 63 */	stb r0, 0x163(r30)
/* 805F3A94  48 00 00 0C */	b lbl_805F3AA0
lbl_805F3A98:
/* 805F3A98  38 00 00 07 */	li r0, 7
/* 805F3A9C  98 1E 01 63 */	stb r0, 0x163(r30)
lbl_805F3AA0:
/* 805F3AA0  80 66 61 3C */	lwz r3, 0x613c(r6)
/* 805F3AA4  38 C0 00 00 */	li r6, 0
/* 805F3AA8  88 07 00 02 */	lbz r0, 2(r7)
/* 805F3AAC  80 83 00 88 */	lwz r4, 0x88(r3)
/* 805F3AB0  54 00 08 3C */	slwi r0, r0, 1
/* 805F3AB4  A0 67 00 00 */	lhz r3, 0(r7)
/* 805F3AB8  7C 80 04 30 */	srw r0, r4, r0
/* 805F3ABC  88 9E 01 63 */	lbz r4, 0x163(r30)
/* 805F3AC0  54 05 07 FE */	clrlwi r5, r0, 0x1f
/* 805F3AC4  4B DE 5E 21 */	bl mPlib_request_main_give_from_submenu
/* 805F3AC8  7F C3 F3 78 */	mr r3, r30
/* 805F3ACC  7F E4 FB 78 */	mr r4, r31
/* 805F3AD0  38 A0 00 01 */	li r5, 1
/* 805F3AD4  4B FF F5 41 */	bl mTG_close_window
/* 805F3AD8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805F3ADC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805F3AE0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805F3AE4  7C 08 03 A6 */	mtlr r0
/* 805F3AE8  38 21 00 10 */	addi r1, r1, 0x10
/* 805F3AEC  4E 80 00 20 */	blr 
