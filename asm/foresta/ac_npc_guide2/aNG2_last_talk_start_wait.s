lbl_80556068:
/* 80556068  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055606C  7C 08 02 A6 */	mflr r0
/* 80556070  90 01 00 14 */	stw r0, 0x14(r1)
/* 80556074  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80556078  7C 7F 1B 78 */	mr r31, r3
/* 8055607C  38 60 00 08 */	li r3, 8
/* 80556080  93 C1 00 08 */	stw r30, 8(r1)
/* 80556084  7C 9E 23 78 */	mr r30, r4
/* 80556088  7F E4 FB 78 */	mr r4, r31
/* 8055608C  4B E4 41 D9 */	bl mDemo_Check
/* 80556090  2C 03 00 01 */	cmpwi r3, 1
/* 80556094  40 82 00 48 */	bne lbl_805560DC
/* 80556098  4B E4 43 79 */	bl mDemo_Check_ListenAble
/* 8055609C  2C 03 00 00 */	cmpwi r3, 0
/* 805560A0  40 82 00 50 */	bne lbl_805560F0
/* 805560A4  A8 9F 00 B6 */	lha r4, 0xb6(r31)
/* 805560A8  38 7F 00 DE */	addi r3, r31, 0xde
/* 805560AC  38 A0 04 00 */	li r5, 0x400
/* 805560B0  4B E6 4A 95 */	bl chase_angle
/* 805560B4  2C 03 00 01 */	cmpwi r3, 1
/* 805560B8  40 82 00 38 */	bne lbl_805560F0
/* 805560BC  38 00 00 00 */	li r0, 0
/* 805560C0  7F E3 FB 78 */	mr r3, r31
/* 805560C4  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 805560C8  7F C4 F3 78 */	mr r4, r30
/* 805560CC  38 A0 00 19 */	li r5, 0x19
/* 805560D0  48 00 04 4D */	bl aNG2_setupAction
/* 805560D4  4B E4 42 E1 */	bl mDemo_Set_ListenAble
/* 805560D8  48 00 00 18 */	b lbl_805560F0
lbl_805560DC:
/* 805560DC  3C 60 80 55 */	lis r3, aNG2_set_talk_info_last_talk_start_wait@ha /* 0x8055602C@ha */
/* 805560E0  7F E4 FB 78 */	mr r4, r31
/* 805560E4  38 A3 60 2C */	addi r5, r3, aNG2_set_talk_info_last_talk_start_wait@l /* 0x8055602C@l */
/* 805560E8  38 60 00 08 */	li r3, 8
/* 805560EC  4B E4 40 71 */	bl mDemo_Request
lbl_805560F0:
/* 805560F0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805560F4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805560F8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805560FC  7C 08 03 A6 */	mtlr r0
/* 80556100  38 21 00 10 */	addi r1, r1, 0x10
/* 80556104  4E 80 00 20 */	blr 
