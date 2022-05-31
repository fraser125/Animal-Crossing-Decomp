lbl_8057B928:
/* 8057B928  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8057B92C  7C 08 02 A6 */	mflr r0
/* 8057B930  90 01 00 14 */	stw r0, 0x14(r1)
/* 8057B934  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8057B938  7C 7F 1B 78 */	mr r31, r3
/* 8057B93C  38 60 00 08 */	li r3, 8
/* 8057B940  93 C1 00 08 */	stw r30, 8(r1)
/* 8057B944  7C 9E 23 78 */	mr r30, r4
/* 8057B948  7F E4 FB 78 */	mr r4, r31
/* 8057B94C  4B E1 E9 19 */	bl mDemo_Check
/* 8057B950  2C 03 00 01 */	cmpwi r3, 1
/* 8057B954  40 82 00 44 */	bne lbl_8057B998
/* 8057B958  4B E1 EA B9 */	bl mDemo_Check_ListenAble
/* 8057B95C  2C 03 00 00 */	cmpwi r3, 0
/* 8057B960  40 82 00 4C */	bne lbl_8057B9AC
/* 8057B964  A8 9F 09 A6 */	lha r4, 0x9a6(r31)
/* 8057B968  38 7F 00 DE */	addi r3, r31, 0xde
/* 8057B96C  38 A0 08 00 */	li r5, 0x800
/* 8057B970  4B E3 F1 D5 */	bl chase_angle
/* 8057B974  2C 03 00 01 */	cmpwi r3, 1
/* 8057B978  40 82 00 34 */	bne lbl_8057B9AC
/* 8057B97C  7F E3 FB 78 */	mr r3, r31
/* 8057B980  4B FF B8 49 */	bl aNSC_Set_ListenAble
/* 8057B984  7F E3 FB 78 */	mr r3, r31
/* 8057B988  7F C4 F3 78 */	mr r4, r30
/* 8057B98C  38 A0 00 44 */	li r5, 0x44
/* 8057B990  48 00 0B 25 */	bl aNSC_setupAction
/* 8057B994  48 00 00 18 */	b lbl_8057B9AC
lbl_8057B998:
/* 8057B998  3C 60 80 58 */	lis r3, aNSC_set_talk_info_goodbye_wait@ha /* 0x8057B8F8@ha */
/* 8057B99C  7F E4 FB 78 */	mr r4, r31
/* 8057B9A0  38 A3 B8 F8 */	addi r5, r3, aNSC_set_talk_info_goodbye_wait@l /* 0x8057B8F8@l */
/* 8057B9A4  38 60 00 08 */	li r3, 8
/* 8057B9A8  4B E1 E7 B5 */	bl mDemo_Request
lbl_8057B9AC:
/* 8057B9AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8057B9B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8057B9B4  83 C1 00 08 */	lwz r30, 8(r1)
/* 8057B9B8  7C 08 03 A6 */	mtlr r0
/* 8057B9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8057B9C0  4E 80 00 20 */	blr 
