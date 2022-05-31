lbl_80585434:
/* 80585434  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80585438  7C 08 02 A6 */	mflr r0
/* 8058543C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80585440  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80585444  7C 7F 1B 78 */	mr r31, r3
/* 80585448  38 60 00 08 */	li r3, 8
/* 8058544C  93 C1 00 08 */	stw r30, 8(r1)
/* 80585450  7C 9E 23 78 */	mr r30, r4
/* 80585454  7F E4 FB 78 */	mr r4, r31
/* 80585458  4B E1 4E 0D */	bl mDemo_Check
/* 8058545C  2C 03 00 01 */	cmpwi r3, 1
/* 80585460  40 82 00 44 */	bne lbl_805854A4
/* 80585464  4B E1 4F AD */	bl mDemo_Check_ListenAble
/* 80585468  2C 03 00 00 */	cmpwi r3, 0
/* 8058546C  40 82 00 4C */	bne lbl_805854B8
/* 80585470  A8 9F 09 A6 */	lha r4, 0x9a6(r31)
/* 80585474  38 7F 00 DE */	addi r3, r31, 0xde
/* 80585478  38 A0 08 00 */	li r5, 0x800
/* 8058547C  4B E3 56 C9 */	bl chase_angle
/* 80585480  2C 03 00 01 */	cmpwi r3, 1
/* 80585484  40 82 00 34 */	bne lbl_805854B8
/* 80585488  7F E3 FB 78 */	mr r3, r31
/* 8058548C  4B FF B8 49 */	bl aNSC_Set_ListenAble
/* 80585490  7F E3 FB 78 */	mr r3, r31
/* 80585494  7F C4 F3 78 */	mr r4, r30
/* 80585498  38 A0 00 44 */	li r5, 0x44
/* 8058549C  48 00 0B 25 */	bl aNSC_setupAction
/* 805854A0  48 00 00 18 */	b lbl_805854B8
lbl_805854A4:
/* 805854A4  3C 60 80 58 */	lis r3, aNSC_set_talk_info_goodbye_wait@ha /* 0x80585404@ha */
/* 805854A8  7F E4 FB 78 */	mr r4, r31
/* 805854AC  38 A3 54 04 */	addi r5, r3, aNSC_set_talk_info_goodbye_wait@l /* 0x80585404@l */
/* 805854B0  38 60 00 08 */	li r3, 8
/* 805854B4  4B E1 4C A9 */	bl mDemo_Request
lbl_805854B8:
/* 805854B8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805854BC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805854C0  83 C1 00 08 */	lwz r30, 8(r1)
/* 805854C4  7C 08 03 A6 */	mtlr r0
/* 805854C8  38 21 00 10 */	addi r1, r1, 0x10
/* 805854CC  4E 80 00 20 */	blr 
