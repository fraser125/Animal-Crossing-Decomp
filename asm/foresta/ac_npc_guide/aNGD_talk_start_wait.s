lbl_805535AC:
/* 805535AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805535B0  7C 08 02 A6 */	mflr r0
/* 805535B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805535B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805535BC  7C 7F 1B 78 */	mr r31, r3
/* 805535C0  38 60 00 08 */	li r3, 8
/* 805535C4  93 C1 00 08 */	stw r30, 8(r1)
/* 805535C8  7C 9E 23 78 */	mr r30, r4
/* 805535CC  7F E4 FB 78 */	mr r4, r31
/* 805535D0  4B E4 6C 95 */	bl mDemo_Check
/* 805535D4  2C 03 00 01 */	cmpwi r3, 1
/* 805535D8  40 82 00 48 */	bne lbl_80553620
/* 805535DC  4B E4 6E 35 */	bl mDemo_Check_ListenAble
/* 805535E0  2C 03 00 00 */	cmpwi r3, 0
/* 805535E4  40 82 00 50 */	bne lbl_80553634
/* 805535E8  A8 9F 00 B6 */	lha r4, 0xb6(r31)
/* 805535EC  38 7F 00 DE */	addi r3, r31, 0xde
/* 805535F0  38 A0 04 00 */	li r5, 0x400
/* 805535F4  4B E6 75 51 */	bl chase_angle
/* 805535F8  2C 03 00 01 */	cmpwi r3, 1
/* 805535FC  40 82 00 38 */	bne lbl_80553634
/* 80553600  38 00 00 00 */	li r0, 0
/* 80553604  7F E3 FB 78 */	mr r3, r31
/* 80553608  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 8055360C  7F C4 F3 78 */	mr r4, r30
/* 80553610  38 A0 00 03 */	li r5, 3
/* 80553614  48 00 12 F5 */	bl aNGD_setupAction
/* 80553618  4B E4 6D 9D */	bl mDemo_Set_ListenAble
/* 8055361C  48 00 00 18 */	b lbl_80553634
lbl_80553620:
/* 80553620  3C 60 80 55 */	lis r3, aNGD_set_talk_info_talk_start_wait@ha /* 0x80553570@ha */
/* 80553624  7F E4 FB 78 */	mr r4, r31
/* 80553628  38 A3 35 70 */	addi r5, r3, aNGD_set_talk_info_talk_start_wait@l /* 0x80553570@l */
/* 8055362C  38 60 00 08 */	li r3, 8
/* 80553630  4B E4 6B 2D */	bl mDemo_Request
lbl_80553634:
/* 80553634  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80553638  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055363C  83 C1 00 08 */	lwz r30, 8(r1)
/* 80553640  7C 08 03 A6 */	mtlr r0
/* 80553644  38 21 00 10 */	addi r1, r1, 0x10
/* 80553648  4E 80 00 20 */	blr 
