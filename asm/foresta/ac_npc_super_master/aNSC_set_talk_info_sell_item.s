lbl_80581FC8:
/* 80581FC8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80581FCC  7C 08 02 A6 */	mflr r0
/* 80581FD0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80581FD4  39 61 00 20 */	addi r11, r1, 0x20
/* 80581FD8  4B B1 8E FD */	bl func_8009AED4
/* 80581FDC  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 80581FE0  3B A0 00 1E */	li r29, 0x1e
/* 80581FE4  4B FF F1 A5 */	bl aNSC_set_item_str
/* 80581FE8  4B FF FE 69 */	bl aNSC_set_player_angle
/* 80581FEC  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 80581FF0  2C 00 00 01 */	cmpwi r0, 1
/* 80581FF4  41 82 00 1C */	beq lbl_80582010
/* 80581FF8  2C 00 00 03 */	cmpwi r0, 3
/* 80581FFC  41 82 00 14 */	beq lbl_80582010
/* 80582000  28 1F 22 04 */	cmplwi r31, 0x2204
/* 80582004  41 80 00 14 */	blt lbl_80582018
/* 80582008  28 1F 22 2B */	cmplwi r31, 0x222b
/* 8058200C  41 81 00 0C */	bgt lbl_80582018
lbl_80582010:
/* 80582010  3B C0 00 0D */	li r30, 0xd
/* 80582014  48 00 00 08 */	b lbl_8058201C
lbl_80582018:
/* 80582018  3B C0 00 01 */	li r30, 1
lbl_8058201C:
/* 8058201C  28 1F 22 2D */	cmplwi r31, 0x222d
/* 80582020  41 80 00 28 */	blt lbl_80582048
/* 80582024  28 1F 22 38 */	cmplwi r31, 0x2238
/* 80582028  41 81 00 20 */	bgt lbl_80582048
/* 8058202C  4B E3 1A DD */	bl mLd_PlayerManKindCheck
/* 80582030  2C 03 00 00 */	cmpwi r3, 0
/* 80582034  40 82 00 0C */	bne lbl_80582040
/* 80582038  3B A0 00 CA */	li r29, 0xca
/* 8058203C  48 00 00 20 */	b lbl_8058205C
lbl_80582040:
/* 80582040  3B A0 00 DF */	li r29, 0xdf
/* 80582044  48 00 00 18 */	b lbl_8058205C
lbl_80582048:
/* 80582048  28 1F 20 00 */	cmplwi r31, 0x2000
/* 8058204C  41 80 00 10 */	blt lbl_8058205C
/* 80582050  28 1F 20 FF */	cmplwi r31, 0x20ff
/* 80582054  41 81 00 08 */	bgt lbl_8058205C
/* 80582058  3B A0 00 DE */	li r29, 0xde
lbl_8058205C:
/* 8058205C  7F C3 F3 78 */	mr r3, r30
/* 80582060  4B E1 68 C1 */	bl mDemo_Set_camera
/* 80582064  7F A3 EB 78 */	mr r3, r29
/* 80582068  4B FF FD 21 */	bl aNSC_get_msg_no
/* 8058206C  4B E1 64 A9 */	bl mDemo_Set_msg_num
/* 80582070  39 61 00 20 */	addi r11, r1, 0x20
/* 80582074  4B B1 8E AD */	bl func_8009AF20
/* 80582078  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8058207C  7C 08 03 A6 */	mtlr r0
/* 80582080  38 21 00 20 */	addi r1, r1, 0x20
/* 80582084  4E 80 00 20 */	blr 
