lbl_805522BC:
/* 805522BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805522C0  7C 08 02 A6 */	mflr r0
/* 805522C4  38 80 00 09 */	li r4, 9
/* 805522C8  38 A0 00 00 */	li r5, 0
/* 805522CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805522D0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805522D4  7C 7F 1B 78 */	mr r31, r3
/* 805522D8  38 60 00 04 */	li r3, 4
/* 805522DC  4B E4 61 5D */	bl mDemo_Set_OrderValue
/* 805522E0  7F E3 FB 78 */	mr r3, r31
/* 805522E4  4B FF B4 2D */	bl aNSC_set_stop_spd
/* 805522E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805522EC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805522F0  7C 08 03 A6 */	mtlr r0
/* 805522F4  38 21 00 10 */	addi r1, r1, 0x10
/* 805522F8  4E 80 00 20 */	blr 
