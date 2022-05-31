lbl_80551FE4:
/* 80551FE4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80551FE8  7C 08 02 A6 */	mflr r0
/* 80551FEC  38 80 00 09 */	li r4, 9
/* 80551FF0  38 A0 00 00 */	li r5, 0
/* 80551FF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80551FF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80551FFC  7C 7F 1B 78 */	mr r31, r3
/* 80552000  38 60 00 04 */	li r3, 4
/* 80552004  4B E4 64 35 */	bl mDemo_Set_OrderValue
/* 80552008  7F E3 FB 78 */	mr r3, r31
/* 8055200C  4B FF B7 05 */	bl aNSC_set_stop_spd
/* 80552010  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80552014  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80552018  7C 08 03 A6 */	mtlr r0
/* 8055201C  38 21 00 10 */	addi r1, r1, 0x10
/* 80552020  4E 80 00 20 */	blr 
