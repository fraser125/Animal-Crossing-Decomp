lbl_80555618:
/* 80555618  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055561C  7C 08 02 A6 */	mflr r0
/* 80555620  90 01 00 14 */	stw r0, 0x14(r1)
/* 80555624  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80555628  7C 7F 1B 78 */	mr r31, r3
/* 8055562C  38 60 00 08 */	li r3, 8
/* 80555630  93 C1 00 08 */	stw r30, 8(r1)
/* 80555634  7C 9E 23 78 */	mr r30, r4
/* 80555638  7F E4 FB 78 */	mr r4, r31
/* 8055563C  4B E4 4C 29 */	bl mDemo_Check
/* 80555640  2C 03 00 01 */	cmpwi r3, 1
/* 80555644  40 82 00 48 */	bne lbl_8055568C
/* 80555648  4B E4 4D C9 */	bl mDemo_Check_ListenAble
/* 8055564C  2C 03 00 00 */	cmpwi r3, 0
/* 80555650  40 82 00 50 */	bne lbl_805556A0
/* 80555654  A8 9F 00 B6 */	lha r4, 0xb6(r31)
/* 80555658  38 7F 00 DE */	addi r3, r31, 0xde
/* 8055565C  38 A0 04 00 */	li r5, 0x400
/* 80555660  4B E6 54 E5 */	bl chase_angle
/* 80555664  2C 03 00 01 */	cmpwi r3, 1
/* 80555668  40 82 00 38 */	bne lbl_805556A0
/* 8055566C  38 00 00 00 */	li r0, 0
/* 80555670  7F E3 FB 78 */	mr r3, r31
/* 80555674  90 1F 09 CC */	stw r0, 0x9cc(r31)
/* 80555678  7F C4 F3 78 */	mr r4, r30
/* 8055567C  38 A0 00 03 */	li r5, 3
/* 80555680  48 00 0E 9D */	bl aNG2_setupAction
/* 80555684  4B E4 4D 31 */	bl mDemo_Set_ListenAble
/* 80555688  48 00 00 18 */	b lbl_805556A0
lbl_8055568C:
/* 8055568C  3C 60 80 55 */	lis r3, aNG2_set_talk_info_talk_start_wait@ha /* 0x805555B8@ha */
/* 80555690  7F E4 FB 78 */	mr r4, r31
/* 80555694  38 A3 55 B8 */	addi r5, r3, aNG2_set_talk_info_talk_start_wait@l /* 0x805555B8@l */
/* 80555698  38 60 00 08 */	li r3, 8
/* 8055569C  4B E4 4A C1 */	bl mDemo_Request
lbl_805556A0:
/* 805556A0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805556A4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805556A8  83 C1 00 08 */	lwz r30, 8(r1)
/* 805556AC  7C 08 03 A6 */	mtlr r0
/* 805556B0  38 21 00 10 */	addi r1, r1, 0x10
/* 805556B4  4E 80 00 20 */	blr 
