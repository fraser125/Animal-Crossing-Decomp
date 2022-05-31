lbl_8055B80C:
/* 8055B80C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8055B810  7C 08 02 A6 */	mflr r0
/* 8055B814  90 01 00 24 */	stw r0, 0x24(r1)
/* 8055B818  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B81C  4B B3 F6 B9 */	bl func_8009AED4
/* 8055B820  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 8055B824  3B A0 00 1E */	li r29, 0x1e
/* 8055B828  4B FF F1 3D */	bl aNSC_set_item_str
/* 8055B82C  4B FF FE 69 */	bl aNSC_set_player_angle
/* 8055B830  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 8055B834  2C 00 00 01 */	cmpwi r0, 1
/* 8055B838  41 82 00 1C */	beq lbl_8055B854
/* 8055B83C  2C 00 00 03 */	cmpwi r0, 3
/* 8055B840  41 82 00 14 */	beq lbl_8055B854
/* 8055B844  28 1F 22 04 */	cmplwi r31, 0x2204
/* 8055B848  41 80 00 14 */	blt lbl_8055B85C
/* 8055B84C  28 1F 22 2B */	cmplwi r31, 0x222b
/* 8055B850  41 81 00 0C */	bgt lbl_8055B85C
lbl_8055B854:
/* 8055B854  3B C0 00 0D */	li r30, 0xd
/* 8055B858  48 00 00 08 */	b lbl_8055B860
lbl_8055B85C:
/* 8055B85C  3B C0 00 01 */	li r30, 1
lbl_8055B860:
/* 8055B860  28 1F 22 2D */	cmplwi r31, 0x222d
/* 8055B864  41 80 00 28 */	blt lbl_8055B88C
/* 8055B868  28 1F 22 38 */	cmplwi r31, 0x2238
/* 8055B86C  41 81 00 20 */	bgt lbl_8055B88C
/* 8055B870  4B E5 82 99 */	bl mLd_PlayerManKindCheck
/* 8055B874  2C 03 00 00 */	cmpwi r3, 0
/* 8055B878  40 82 00 0C */	bne lbl_8055B884
/* 8055B87C  3B A0 00 CA */	li r29, 0xca
/* 8055B880  48 00 00 20 */	b lbl_8055B8A0
lbl_8055B884:
/* 8055B884  3B A0 00 DF */	li r29, 0xdf
/* 8055B888  48 00 00 18 */	b lbl_8055B8A0
lbl_8055B88C:
/* 8055B88C  28 1F 20 00 */	cmplwi r31, 0x2000
/* 8055B890  41 80 00 10 */	blt lbl_8055B8A0
/* 8055B894  28 1F 20 FF */	cmplwi r31, 0x20ff
/* 8055B898  41 81 00 08 */	bgt lbl_8055B8A0
/* 8055B89C  3B A0 00 DE */	li r29, 0xde
lbl_8055B8A0:
/* 8055B8A0  7F C3 F3 78 */	mr r3, r30
/* 8055B8A4  4B E3 D0 7D */	bl mDemo_Set_camera
/* 8055B8A8  7F A3 EB 78 */	mr r3, r29
/* 8055B8AC  4B FF FD 31 */	bl aNSC_get_msg_no
/* 8055B8B0  4B E3 CC 65 */	bl mDemo_Set_msg_num
/* 8055B8B4  39 61 00 20 */	addi r11, r1, 0x20
/* 8055B8B8  4B B3 F6 69 */	bl func_8009AF20
/* 8055B8BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8055B8C0  7C 08 03 A6 */	mtlr r0
/* 8055B8C4  38 21 00 20 */	addi r1, r1, 0x20
/* 8055B8C8  4E 80 00 20 */	blr 
