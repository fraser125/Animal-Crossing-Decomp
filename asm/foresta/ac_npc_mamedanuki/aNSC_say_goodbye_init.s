lbl_8055ED78:
/* 8055ED78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055ED7C  7C 08 02 A6 */	mflr r0
/* 8055ED80  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055ED84  4B E6 09 25 */	bl func_803BF6A8
/* 8055ED88  4B E6 1F D1 */	bl mMsg_Set_idling_req
/* 8055ED8C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055ED90  7C 08 03 A6 */	mtlr r0
/* 8055ED94  38 21 00 10 */	addi r1, r1, 0x10
/* 8055ED98  4E 80 00 20 */	blr 
