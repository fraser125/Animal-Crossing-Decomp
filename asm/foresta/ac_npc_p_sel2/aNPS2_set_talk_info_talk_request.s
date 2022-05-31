lbl_80569E00:
/* 80569E00  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80569E04  7C 08 02 A6 */	mflr r0
/* 80569E08  38 80 00 00 */	li r4, 0
/* 80569E0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80569E10  4B FF D7 39 */	bl aNPS2_make_msg
/* 80569E14  4B E2 E7 01 */	bl mDemo_Set_msg_num
/* 80569E18  38 60 00 01 */	li r3, 1
/* 80569E1C  4B E2 EB 05 */	bl mDemo_Set_camera
/* 80569E20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80569E24  7C 08 03 A6 */	mtlr r0
/* 80569E28  38 21 00 10 */	addi r1, r1, 0x10
/* 80569E2C  4E 80 00 20 */	blr 
