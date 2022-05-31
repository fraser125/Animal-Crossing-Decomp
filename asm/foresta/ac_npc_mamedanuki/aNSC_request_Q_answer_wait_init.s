lbl_8055E580:
/* 8055E580  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055E584  7C 08 02 A6 */	mflr r0
/* 8055E588  38 80 00 09 */	li r4, 9
/* 8055E58C  38 A0 00 00 */	li r5, 0
/* 8055E590  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055E594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8055E598  7C 7F 1B 78 */	mr r31, r3
/* 8055E59C  38 60 00 04 */	li r3, 4
/* 8055E5A0  4B E3 9E 99 */	bl mDemo_Set_OrderValue
/* 8055E5A4  7F E3 FB 78 */	mr r3, r31
/* 8055E5A8  4B FF C1 55 */	bl aNSC_set_stop_spd
/* 8055E5AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055E5B0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8055E5B4  7C 08 03 A6 */	mtlr r0
/* 8055E5B8  38 21 00 10 */	addi r1, r1, 0x10
/* 8055E5BC  4E 80 00 20 */	blr 
