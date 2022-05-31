lbl_8054E83C:
/* 8054E83C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8054E840  7C 08 02 A6 */	mflr r0
/* 8054E844  90 01 00 24 */	stw r0, 0x24(r1)
/* 8054E848  39 61 00 20 */	addi r11, r1, 0x20
/* 8054E84C  4B B4 C6 89 */	bl func_8009AED4
/* 8054E850  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 8054E854  3B A0 00 1E */	li r29, 0x1e
/* 8054E858  4B FF F1 A5 */	bl aNSC_set_item_str
/* 8054E85C  4B FF FE 69 */	bl aNSC_set_player_angle
/* 8054E860  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 8054E864  2C 00 00 01 */	cmpwi r0, 1
/* 8054E868  41 82 00 1C */	beq lbl_8054E884
/* 8054E86C  2C 00 00 03 */	cmpwi r0, 3
/* 8054E870  41 82 00 14 */	beq lbl_8054E884
/* 8054E874  28 1F 22 04 */	cmplwi r31, 0x2204
/* 8054E878  41 80 00 14 */	blt lbl_8054E88C
/* 8054E87C  28 1F 22 2B */	cmplwi r31, 0x222b
/* 8054E880  41 81 00 0C */	bgt lbl_8054E88C
lbl_8054E884:
/* 8054E884  3B C0 00 0D */	li r30, 0xd
/* 8054E888  48 00 00 08 */	b lbl_8054E890
lbl_8054E88C:
/* 8054E88C  3B C0 00 01 */	li r30, 1
lbl_8054E890:
/* 8054E890  28 1F 22 2D */	cmplwi r31, 0x222d
/* 8054E894  41 80 00 28 */	blt lbl_8054E8BC
/* 8054E898  28 1F 22 38 */	cmplwi r31, 0x2238
/* 8054E89C  41 81 00 20 */	bgt lbl_8054E8BC
/* 8054E8A0  4B E6 52 69 */	bl mLd_PlayerManKindCheck
/* 8054E8A4  2C 03 00 00 */	cmpwi r3, 0
/* 8054E8A8  40 82 00 0C */	bne lbl_8054E8B4
/* 8054E8AC  3B A0 00 CA */	li r29, 0xca
/* 8054E8B0  48 00 00 20 */	b lbl_8054E8D0
lbl_8054E8B4:
/* 8054E8B4  3B A0 00 DF */	li r29, 0xdf
/* 8054E8B8  48 00 00 18 */	b lbl_8054E8D0
lbl_8054E8BC:
/* 8054E8BC  28 1F 20 00 */	cmplwi r31, 0x2000
/* 8054E8C0  41 80 00 10 */	blt lbl_8054E8D0
/* 8054E8C4  28 1F 20 FF */	cmplwi r31, 0x20ff
/* 8054E8C8  41 81 00 08 */	bgt lbl_8054E8D0
/* 8054E8CC  3B A0 00 DE */	li r29, 0xde
lbl_8054E8D0:
/* 8054E8D0  7F C3 F3 78 */	mr r3, r30
/* 8054E8D4  4B E4 A0 4D */	bl mDemo_Set_camera
/* 8054E8D8  7F A3 EB 78 */	mr r3, r29
/* 8054E8DC  4B FF FD 21 */	bl aNSC_get_msg_no
/* 8054E8E0  4B E4 9C 35 */	bl mDemo_Set_msg_num
/* 8054E8E4  39 61 00 20 */	addi r11, r1, 0x20
/* 8054E8E8  4B B4 C6 39 */	bl func_8009AF20
/* 8054E8EC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8054E8F0  7C 08 03 A6 */	mtlr r0
/* 8054E8F4  38 21 00 20 */	addi r1, r1, 0x20
/* 8054E8F8  4E 80 00 20 */	blr 
