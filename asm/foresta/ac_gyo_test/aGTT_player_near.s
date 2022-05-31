lbl_805A3A3C:
/* 805A3A3C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A3A40  7C 08 02 A6 */	mflr r0
/* 805A3A44  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A3A48  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805A3A4C  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805A3A50  39 61 00 30 */	addi r11, r1, 0x30
/* 805A3A54  4B AF 74 7D */	bl func_8009AED0
/* 805A3A58  7C 9C 23 78 */	mr r28, r4
/* 805A3A5C  7C 7E 1B 78 */	mr r30, r3
/* 805A3A60  7F 83 E3 78 */	mr r3, r28
/* 805A3A64  4B E3 5B DD */	bl get_player_actor_withoutCheck
/* 805A3A68  7C 7F 1B 78 */	mr r31, r3
/* 805A3A6C  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A3A70  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A3A74  3B A0 00 00 */	li r29, 0
/* 805A3A78  4B E1 75 5D */	bl search_position_distance
/* 805A3A7C  FF E0 08 90 */	fmr f31, f1
/* 805A3A80  38 7E 00 28 */	addi r3, r30, 0x28
/* 805A3A84  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A3A88  4B E1 76 A9 */	bl search_position_angleY
/* 805A3A8C  3C 80 80 65 */	lis r4, lit_649@ha /* 0x8064A3F0@ha */
/* 805A3A90  7C 7F 1B 78 */	mr r31, r3
/* 805A3A94  C0 04 A3 F0 */	lfs f0, lit_649@l(r4)  /* 0x8064A3F0@l */
/* 805A3A98  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A3A9C  40 80 00 14 */	bge lbl_805A3AB0
/* 805A3AA0  7F 83 E3 78 */	mr r3, r28
/* 805A3AA4  4B E3 5B CD */	bl mPlib_get_player_actor_main_index
/* 805A3AA8  2C 03 00 0A */	cmpwi r3, 0xa
/* 805A3AAC  41 82 00 50 */	beq lbl_805A3AFC
lbl_805A3AB0:
/* 805A3AB0  3C 60 80 65 */	lis r3, lit_650@ha /* 0x8064A3F4@ha */
/* 805A3AB4  C0 03 A3 F4 */	lfs f0, lit_650@l(r3)  /* 0x8064A3F4@l */
/* 805A3AB8  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A3ABC  40 80 00 34 */	bge lbl_805A3AF0
/* 805A3AC0  38 61 00 08 */	addi r3, r1, 8
/* 805A3AC4  4B E3 84 BD */	bl mPlib_Check_HitAxe
/* 805A3AC8  2C 03 00 00 */	cmpwi r3, 0
/* 805A3ACC  40 82 00 30 */	bne lbl_805A3AFC
/* 805A3AD0  38 61 00 08 */	addi r3, r1, 8
/* 805A3AD4  4B E3 85 7D */	bl mPlib_Check_StopNet
/* 805A3AD8  2C 03 00 00 */	cmpwi r3, 0
/* 805A3ADC  40 82 00 20 */	bne lbl_805A3AFC
/* 805A3AE0  38 61 00 08 */	addi r3, r1, 8
/* 805A3AE4  4B E3 86 9D */	bl mPlib_Check_HitScoop
/* 805A3AE8  2C 03 00 00 */	cmpwi r3, 0
/* 805A3AEC  40 82 00 10 */	bne lbl_805A3AFC
lbl_805A3AF0:
/* 805A3AF0  88 1E 02 43 */	lbz r0, 0x243(r30)
/* 805A3AF4  28 00 00 00 */	cmplwi r0, 0
/* 805A3AF8  41 82 00 74 */	beq lbl_805A3B6C
lbl_805A3AFC:
/* 805A3AFC  3C 9F 00 01 */	addis r4, r31, 1
/* 805A3B00  7F C3 F3 78 */	mr r3, r30
/* 805A3B04  38 04 80 00 */	addi r0, r4, -32768
/* 805A3B08  7C 04 07 34 */	extsh r4, r0
/* 805A3B0C  4B FF F4 11 */	bl aGTT_set_angle
/* 805A3B10  A8 1E 01 DC */	lha r0, 0x1dc(r30)
/* 805A3B14  2C 00 00 04 */	cmpwi r0, 4
/* 805A3B18  40 80 00 10 */	bge lbl_805A3B28
/* 805A3B1C  2C 00 00 00 */	cmpwi r0, 0
/* 805A3B20  40 80 00 14 */	bge lbl_805A3B34
/* 805A3B24  48 00 00 34 */	b lbl_805A3B58
lbl_805A3B28:
/* 805A3B28  2C 00 00 07 */	cmpwi r0, 7
/* 805A3B2C  40 80 00 2C */	bge lbl_805A3B58
/* 805A3B30  48 00 00 18 */	b lbl_805A3B48
lbl_805A3B34:
/* 805A3B34  7F C3 F3 78 */	mr r3, r30
/* 805A3B38  7F 84 E3 78 */	mr r4, r28
/* 805A3B3C  38 A0 00 03 */	li r5, 3
/* 805A3B40  4B FF F7 71 */	bl aGTT_effect_hamon
/* 805A3B44  48 00 00 14 */	b lbl_805A3B58
lbl_805A3B48:
/* 805A3B48  7F C3 F3 78 */	mr r3, r30
/* 805A3B4C  7F 84 E3 78 */	mr r4, r28
/* 805A3B50  38 A0 00 02 */	li r5, 2
/* 805A3B54  4B FF F7 5D */	bl aGTT_effect_hamon
lbl_805A3B58:
/* 805A3B58  7F C3 F3 78 */	mr r3, r30
/* 805A3B5C  7F 84 E3 78 */	mr r4, r28
/* 805A3B60  38 A0 00 00 */	li r5, 0
/* 805A3B64  4B FF F6 09 */	bl aGTT_kage_make_actor
/* 805A3B68  3B A0 00 01 */	li r29, 1
lbl_805A3B6C:
/* 805A3B6C  7F A3 EB 78 */	mr r3, r29
/* 805A3B70  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805A3B74  39 61 00 30 */	addi r11, r1, 0x30
/* 805A3B78  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805A3B7C  4B AF 73 A1 */	bl func_8009AF1C
/* 805A3B80  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A3B84  7C 08 03 A6 */	mtlr r0
/* 805A3B88  38 21 00 40 */	addi r1, r1, 0x40
/* 805A3B8C  4E 80 00 20 */	blr 
