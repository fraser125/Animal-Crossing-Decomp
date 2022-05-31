lbl_805A5808:
/* 805A5808  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805A580C  7C 08 02 A6 */	mflr r0
/* 805A5810  90 01 00 44 */	stw r0, 0x44(r1)
/* 805A5814  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 805A5818  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 805A581C  39 61 00 30 */	addi r11, r1, 0x30
/* 805A5820  4B AF 56 B1 */	bl func_8009AED0
/* 805A5824  7C 9D 23 78 */	mr r29, r4
/* 805A5828  7C 7C 1B 78 */	mr r28, r3
/* 805A582C  7F A3 EB 78 */	mr r3, r29
/* 805A5830  4B E3 3E 11 */	bl get_player_actor_withoutCheck
/* 805A5834  7C 7F 1B 78 */	mr r31, r3
/* 805A5838  38 7C 00 28 */	addi r3, r28, 0x28
/* 805A583C  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A5840  3B C0 00 00 */	li r30, 0
/* 805A5844  4B E1 57 91 */	bl search_position_distance
/* 805A5848  FF E0 08 90 */	fmr f31, f1
/* 805A584C  38 7C 00 28 */	addi r3, r28, 0x28
/* 805A5850  38 9F 00 28 */	addi r4, r31, 0x28
/* 805A5854  4B E1 58 DD */	bl search_position_angleY
/* 805A5858  3C 80 80 65 */	lis r4, lit_625@ha /* 0x8064A470@ha */
/* 805A585C  7C 7F 1B 78 */	mr r31, r3
/* 805A5860  C0 04 A4 70 */	lfs f0, lit_625@l(r4)  /* 0x8064A470@l */
/* 805A5864  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A5868  40 80 00 14 */	bge lbl_805A587C
/* 805A586C  7F A3 EB 78 */	mr r3, r29
/* 805A5870  4B E3 3E 01 */	bl mPlib_get_player_actor_main_index
/* 805A5874  2C 03 00 0A */	cmpwi r3, 0xa
/* 805A5878  41 82 00 50 */	beq lbl_805A58C8
lbl_805A587C:
/* 805A587C  3C 60 80 65 */	lis r3, lit_626@ha /* 0x8064A474@ha */
/* 805A5880  C0 03 A4 74 */	lfs f0, lit_626@l(r3)  /* 0x8064A474@l */
/* 805A5884  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 805A5888  40 80 00 34 */	bge lbl_805A58BC
/* 805A588C  38 61 00 08 */	addi r3, r1, 8
/* 805A5890  4B E3 66 F1 */	bl mPlib_Check_HitAxe
/* 805A5894  2C 03 00 00 */	cmpwi r3, 0
/* 805A5898  40 82 00 30 */	bne lbl_805A58C8
/* 805A589C  38 61 00 08 */	addi r3, r1, 8
/* 805A58A0  4B E3 67 B1 */	bl mPlib_Check_StopNet
/* 805A58A4  2C 03 00 00 */	cmpwi r3, 0
/* 805A58A8  40 82 00 20 */	bne lbl_805A58C8
/* 805A58AC  38 61 00 08 */	addi r3, r1, 8
/* 805A58B0  4B E3 68 D1 */	bl mPlib_Check_HitScoop
/* 805A58B4  2C 03 00 00 */	cmpwi r3, 0
/* 805A58B8  40 82 00 10 */	bne lbl_805A58C8
lbl_805A58BC:
/* 805A58BC  88 1C 02 43 */	lbz r0, 0x243(r28)
/* 805A58C0  28 00 00 00 */	cmplwi r0, 0
/* 805A58C4  41 82 00 74 */	beq lbl_805A5938
lbl_805A58C8:
/* 805A58C8  3C 9F 00 01 */	addis r4, r31, 1
/* 805A58CC  7F 83 E3 78 */	mr r3, r28
/* 805A58D0  38 04 80 00 */	addi r0, r4, -32768
/* 805A58D4  7C 04 07 34 */	extsh r4, r0
/* 805A58D8  4B FF F6 35 */	bl aGKK_set_angle
/* 805A58DC  A8 1C 01 DC */	lha r0, 0x1dc(r28)
/* 805A58E0  2C 00 00 04 */	cmpwi r0, 4
/* 805A58E4  40 80 00 10 */	bge lbl_805A58F4
/* 805A58E8  2C 00 00 00 */	cmpwi r0, 0
/* 805A58EC  40 80 00 14 */	bge lbl_805A5900
/* 805A58F0  48 00 00 34 */	b lbl_805A5924
lbl_805A58F4:
/* 805A58F4  2C 00 00 07 */	cmpwi r0, 7
/* 805A58F8  40 80 00 2C */	bge lbl_805A5924
/* 805A58FC  48 00 00 18 */	b lbl_805A5914
lbl_805A5900:
/* 805A5900  7F 83 E3 78 */	mr r3, r28
/* 805A5904  7F A4 EB 78 */	mr r4, r29
/* 805A5908  38 A0 00 03 */	li r5, 3
/* 805A590C  4B FF F9 95 */	bl aGKK_effect_hamon
/* 805A5910  48 00 00 14 */	b lbl_805A5924
lbl_805A5914:
/* 805A5914  7F 83 E3 78 */	mr r3, r28
/* 805A5918  7F A4 EB 78 */	mr r4, r29
/* 805A591C  38 A0 00 02 */	li r5, 2
/* 805A5920  4B FF F9 81 */	bl aGKK_effect_hamon
lbl_805A5924:
/* 805A5924  7F 83 E3 78 */	mr r3, r28
/* 805A5928  7F A4 EB 78 */	mr r4, r29
/* 805A592C  38 A0 00 00 */	li r5, 0
/* 805A5930  4B FF F8 2D */	bl aGKK_kage_make_actor
/* 805A5934  3B C0 00 01 */	li r30, 1
lbl_805A5938:
/* 805A5938  7F C3 F3 78 */	mr r3, r30
/* 805A593C  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 805A5940  39 61 00 30 */	addi r11, r1, 0x30
/* 805A5944  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 805A5948  4B AF 55 D5 */	bl func_8009AF1C
/* 805A594C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805A5950  7C 08 03 A6 */	mtlr r0
/* 805A5954  38 21 00 40 */	addi r1, r1, 0x40
/* 805A5958  4E 80 00 20 */	blr 
