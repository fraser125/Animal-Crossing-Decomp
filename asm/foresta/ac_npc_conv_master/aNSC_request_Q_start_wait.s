lbl_80548528:
/* 80548528  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054852C  7C 08 02 A6 */	mflr r0
/* 80548530  90 01 00 14 */	stw r0, 0x14(r1)
/* 80548534  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80548538  7C 7F 1B 78 */	mr r31, r3
/* 8054853C  38 60 00 07 */	li r3, 7
/* 80548540  93 C1 00 08 */	stw r30, 8(r1)
/* 80548544  7C 9E 23 78 */	mr r30, r4
/* 80548548  7F E4 FB 78 */	mr r4, r31
/* 8054854C  4B E5 1D 19 */	bl mDemo_Check
/* 80548550  2C 03 00 01 */	cmpwi r3, 1
/* 80548554  40 82 00 2C */	bne lbl_80548580
/* 80548558  4B E5 1E B9 */	bl mDemo_Check_ListenAble
/* 8054855C  2C 03 00 00 */	cmpwi r3, 0
/* 80548560  40 82 00 34 */	bne lbl_80548594
/* 80548564  7F E3 FB 78 */	mr r3, r31
/* 80548568  4B FF D6 C9 */	bl aNSC_Set_ListenAble
/* 8054856C  7F E3 FB 78 */	mr r3, r31
/* 80548570  7F C4 F3 78 */	mr r4, r30
/* 80548574  38 A0 00 0D */	li r5, 0xd
/* 80548578  48 00 29 A5 */	bl aNSC_setupAction
/* 8054857C  48 00 00 18 */	b lbl_80548594
lbl_80548580:
/* 80548580  3C 60 80 55 */	lis r3, aNSC_set_talk_info_request_Q_start_wait@ha /* 0x805484F8@ha */
/* 80548584  7F E4 FB 78 */	mr r4, r31
/* 80548588  38 A3 84 F8 */	addi r5, r3, aNSC_set_talk_info_request_Q_start_wait@l /* 0x805484F8@l */
/* 8054858C  38 60 00 07 */	li r3, 7
/* 80548590  4B E5 1B CD */	bl mDemo_Request
lbl_80548594:
/* 80548594  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80548598  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054859C  83 C1 00 08 */	lwz r30, 8(r1)
/* 805485A0  7C 08 03 A6 */	mtlr r0
/* 805485A4  38 21 00 10 */	addi r1, r1, 0x10
/* 805485A8  4E 80 00 20 */	blr 
