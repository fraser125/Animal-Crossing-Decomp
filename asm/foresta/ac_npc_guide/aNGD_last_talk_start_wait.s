lbl_805541C0:
/* 805541C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805541C4  7C 08 02 A6 */	mflr r0
/* 805541C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 805541CC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805541D0  7C 7F 1B 78 */	mr r31, r3
/* 805541D4  38 60 00 08 */	li r3, 8
/* 805541D8  93 C1 00 08 */	stw r30, 8(r1)
/* 805541DC  7C 9E 23 78 */	mr r30, r4
/* 805541E0  7F E4 FB 78 */	mr r4, r31
/* 805541E4  4B E4 60 81 */	bl mDemo_Check
/* 805541E8  2C 03 00 01 */	cmpwi r3, 1
/* 805541EC  40 82 00 48 */	bne lbl_80554234
/* 805541F0  4B E4 62 21 */	bl mDemo_Check_ListenAble
/* 805541F4  2C 03 00 00 */	cmpwi r3, 0
/* 805541F8  40 82 00 50 */	bne lbl_80554248
/* 805541FC  A8 9F 00 B6 */	lha r4, 0xb6(r31)
/* 80554200  38 7F 00 DE */	addi r3, r31, 0xde
/* 80554204  38 A0 04 00 */	li r5, 0x400
/* 80554208  4B E6 69 3D */	bl chase_angle
/* 8055420C  2C 03 00 01 */	cmpwi r3, 1
/* 80554210  40 82 00 38 */	bne lbl_80554248
/* 80554214  38 00 00 00 */	li r0, 0
/* 80554218  7F E3 FB 78 */	mr r3, r31
/* 8055421C  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 80554220  7F C4 F3 78 */	mr r4, r30
/* 80554224  38 A0 00 1E */	li r5, 0x1e
/* 80554228  48 00 06 E1 */	bl aNGD_setupAction
/* 8055422C  4B E4 61 89 */	bl mDemo_Set_ListenAble
/* 80554230  48 00 00 18 */	b lbl_80554248
lbl_80554234:
/* 80554234  3C 60 80 55 */	lis r3, aNGD_set_talk_info_last_talk_start_wait@ha /* 0x80554184@ha */
/* 80554238  7F E4 FB 78 */	mr r4, r31
/* 8055423C  38 A3 41 84 */	addi r5, r3, aNGD_set_talk_info_last_talk_start_wait@l /* 0x80554184@l */
/* 80554240  38 60 00 08 */	li r3, 8
/* 80554244  4B E4 5F 19 */	bl mDemo_Request
lbl_80554248:
/* 80554248  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055424C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80554250  83 C1 00 08 */	lwz r30, 8(r1)
/* 80554254  7C 08 03 A6 */	mtlr r0
/* 80554258  38 21 00 10 */	addi r1, r1, 0x10
/* 8055425C  4E 80 00 20 */	blr 
