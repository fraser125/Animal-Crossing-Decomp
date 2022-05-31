lbl_805784BC:
/* 805784BC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805784C0  7C 08 02 A6 */	mflr r0
/* 805784C4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805784C8  39 61 00 20 */	addi r11, r1, 0x20
/* 805784CC  4B B2 2A 09 */	bl func_8009AED4
/* 805784D0  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 805784D4  3B A0 00 1E */	li r29, 0x1e
/* 805784D8  4B FF F1 A5 */	bl aNSC_set_item_str
/* 805784DC  4B FF FE 69 */	bl aNSC_set_player_angle
/* 805784E0  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 805784E4  2C 00 00 01 */	cmpwi r0, 1
/* 805784E8  41 82 00 1C */	beq lbl_80578504
/* 805784EC  2C 00 00 03 */	cmpwi r0, 3
/* 805784F0  41 82 00 14 */	beq lbl_80578504
/* 805784F4  28 1F 22 04 */	cmplwi r31, 0x2204
/* 805784F8  41 80 00 14 */	blt lbl_8057850C
/* 805784FC  28 1F 22 2B */	cmplwi r31, 0x222b
/* 80578500  41 81 00 0C */	bgt lbl_8057850C
lbl_80578504:
/* 80578504  3B C0 00 0D */	li r30, 0xd
/* 80578508  48 00 00 08 */	b lbl_80578510
lbl_8057850C:
/* 8057850C  3B C0 00 01 */	li r30, 1
lbl_80578510:
/* 80578510  28 1F 22 2D */	cmplwi r31, 0x222d
/* 80578514  41 80 00 28 */	blt lbl_8057853C
/* 80578518  28 1F 22 38 */	cmplwi r31, 0x2238
/* 8057851C  41 81 00 20 */	bgt lbl_8057853C
/* 80578520  4B E3 B5 E9 */	bl mLd_PlayerManKindCheck
/* 80578524  2C 03 00 00 */	cmpwi r3, 0
/* 80578528  40 82 00 0C */	bne lbl_80578534
/* 8057852C  3B A0 00 CA */	li r29, 0xca
/* 80578530  48 00 00 20 */	b lbl_80578550
lbl_80578534:
/* 80578534  3B A0 00 DF */	li r29, 0xdf
/* 80578538  48 00 00 18 */	b lbl_80578550
lbl_8057853C:
/* 8057853C  28 1F 20 00 */	cmplwi r31, 0x2000
/* 80578540  41 80 00 10 */	blt lbl_80578550
/* 80578544  28 1F 20 FF */	cmplwi r31, 0x20ff
/* 80578548  41 81 00 08 */	bgt lbl_80578550
/* 8057854C  3B A0 00 DE */	li r29, 0xde
lbl_80578550:
/* 80578550  7F C3 F3 78 */	mr r3, r30
/* 80578554  4B E2 03 CD */	bl mDemo_Set_camera
/* 80578558  7F A3 EB 78 */	mr r3, r29
/* 8057855C  4B FF FD 21 */	bl aNSC_get_msg_no
/* 80578560  4B E1 FF B5 */	bl mDemo_Set_msg_num
/* 80578564  39 61 00 20 */	addi r11, r1, 0x20
/* 80578568  4B B2 29 B9 */	bl func_8009AF20
/* 8057856C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80578570  7C 08 03 A6 */	mtlr r0
/* 80578574  38 21 00 20 */	addi r1, r1, 0x20
/* 80578578  4E 80 00 20 */	blr 
