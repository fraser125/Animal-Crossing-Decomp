lbl_80546F24:
/* 80546F24  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80546F28  7C 08 02 A6 */	mflr r0
/* 80546F2C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80546F30  39 61 00 20 */	addi r11, r1, 0x20
/* 80546F34  4B B5 3F A1 */	bl func_8009AED4
/* 80546F38  A3 E3 09 B4 */	lhz r31, 0x9b4(r3)
/* 80546F3C  3B A0 00 1E */	li r29, 0x1e
/* 80546F40  4B FF F1 A5 */	bl aNSC_set_item_str
/* 80546F44  4B FF FE 69 */	bl aNSC_set_player_angle
/* 80546F48  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 80546F4C  2C 00 00 01 */	cmpwi r0, 1
/* 80546F50  41 82 00 1C */	beq lbl_80546F6C
/* 80546F54  2C 00 00 03 */	cmpwi r0, 3
/* 80546F58  41 82 00 14 */	beq lbl_80546F6C
/* 80546F5C  28 1F 22 04 */	cmplwi r31, 0x2204
/* 80546F60  41 80 00 14 */	blt lbl_80546F74
/* 80546F64  28 1F 22 2B */	cmplwi r31, 0x222b
/* 80546F68  41 81 00 0C */	bgt lbl_80546F74
lbl_80546F6C:
/* 80546F6C  3B C0 00 0D */	li r30, 0xd
/* 80546F70  48 00 00 08 */	b lbl_80546F78
lbl_80546F74:
/* 80546F74  3B C0 00 01 */	li r30, 1
lbl_80546F78:
/* 80546F78  28 1F 22 2D */	cmplwi r31, 0x222d
/* 80546F7C  41 80 00 28 */	blt lbl_80546FA4
/* 80546F80  28 1F 22 38 */	cmplwi r31, 0x2238
/* 80546F84  41 81 00 20 */	bgt lbl_80546FA4
/* 80546F88  4B E6 CB 81 */	bl mLd_PlayerManKindCheck
/* 80546F8C  2C 03 00 00 */	cmpwi r3, 0
/* 80546F90  40 82 00 0C */	bne lbl_80546F9C
/* 80546F94  3B A0 00 CA */	li r29, 0xca
/* 80546F98  48 00 00 20 */	b lbl_80546FB8
lbl_80546F9C:
/* 80546F9C  3B A0 00 DF */	li r29, 0xdf
/* 80546FA0  48 00 00 18 */	b lbl_80546FB8
lbl_80546FA4:
/* 80546FA4  28 1F 20 00 */	cmplwi r31, 0x2000
/* 80546FA8  41 80 00 10 */	blt lbl_80546FB8
/* 80546FAC  28 1F 20 FF */	cmplwi r31, 0x20ff
/* 80546FB0  41 81 00 08 */	bgt lbl_80546FB8
/* 80546FB4  3B A0 00 DE */	li r29, 0xde
lbl_80546FB8:
/* 80546FB8  7F C3 F3 78 */	mr r3, r30
/* 80546FBC  4B E5 19 65 */	bl mDemo_Set_camera
/* 80546FC0  7F A3 EB 78 */	mr r3, r29
/* 80546FC4  4B FF FD 21 */	bl aNSC_get_msg_no
/* 80546FC8  4B E5 15 4D */	bl mDemo_Set_msg_num
/* 80546FCC  39 61 00 20 */	addi r11, r1, 0x20
/* 80546FD0  4B B5 3F 51 */	bl func_8009AF20
/* 80546FD4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80546FD8  7C 08 03 A6 */	mtlr r0
/* 80546FDC  38 21 00 20 */	addi r1, r1, 0x20
/* 80546FE0  4E 80 00 20 */	blr 
