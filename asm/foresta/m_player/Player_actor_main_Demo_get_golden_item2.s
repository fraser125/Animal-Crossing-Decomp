lbl_80508B20:
/* 80508B20  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80508B24  7C 08 02 A6 */	mflr r0
/* 80508B28  90 01 00 14 */	stw r0, 0x14(r1)
/* 80508B2C  4B FF FE E1 */	bl Player_actor_main_Demo_get_golden_item
/* 80508B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80508B34  7C 08 03 A6 */	mtlr r0
/* 80508B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80508B3C  4E 80 00 20 */	blr 
