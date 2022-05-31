lbl_80560678:
/* 80560678  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8056067C  7C 08 02 A6 */	mflr r0
/* 80560680  90 01 00 14 */	stw r0, 0x14(r1)
/* 80560684  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80560688  7C 7F 1B 78 */	mr r31, r3
/* 8056068C  38 60 00 08 */	li r3, 8
/* 80560690  93 C1 00 08 */	stw r30, 8(r1)
/* 80560694  7C 9E 23 78 */	mr r30, r4
/* 80560698  7F E4 FB 78 */	mr r4, r31
/* 8056069C  4B E3 9B C9 */	bl mDemo_Check
/* 805606A0  2C 03 00 01 */	cmpwi r3, 1
/* 805606A4  40 82 00 40 */	bne lbl_805606E4
/* 805606A8  4B E3 9D 69 */	bl mDemo_Check_ListenAble
/* 805606AC  2C 03 00 00 */	cmpwi r3, 0
/* 805606B0  40 82 00 48 */	bne lbl_805606F8
/* 805606B4  A8 9F 00 B6 */	lha r4, 0xb6(r31)
/* 805606B8  38 7F 00 DE */	addi r3, r31, 0xde
/* 805606BC  38 A0 04 00 */	li r5, 0x400
/* 805606C0  4B E5 A4 85 */	bl chase_angle
/* 805606C4  2C 03 00 01 */	cmpwi r3, 1
/* 805606C8  40 82 00 30 */	bne lbl_805606F8
/* 805606CC  7F E3 FB 78 */	mr r3, r31
/* 805606D0  7F C4 F3 78 */	mr r4, r30
/* 805606D4  38 A0 00 11 */	li r5, 0x11
/* 805606D8  48 00 07 19 */	bl aNM2_setupAction
/* 805606DC  4B E3 9C D9 */	bl mDemo_Set_ListenAble
/* 805606E0  48 00 00 18 */	b lbl_805606F8
lbl_805606E4:
/* 805606E4  3C 60 80 56 */	lis r3, aNM2_set_talk_info_talk_start_wait2@ha /* 0x80560624@ha */
/* 805606E8  7F E4 FB 78 */	mr r4, r31
/* 805606EC  38 A3 06 24 */	addi r5, r3, aNM2_set_talk_info_talk_start_wait2@l /* 0x80560624@l */
/* 805606F0  38 60 00 08 */	li r3, 8
/* 805606F4  4B E3 9A 69 */	bl mDemo_Request
lbl_805606F8:
/* 805606F8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805606FC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80560700  83 C1 00 08 */	lwz r30, 8(r1)
/* 80560704  7C 08 03 A6 */	mtlr r0
/* 80560708  38 21 00 10 */	addi r1, r1, 0x10
/* 8056070C  4E 80 00 20 */	blr 
