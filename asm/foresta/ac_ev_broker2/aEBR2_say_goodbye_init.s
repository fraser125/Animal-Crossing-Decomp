lbl_8051BAF8:
/* 8051BAF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8051BAFC  7C 08 02 A6 */	mflr r0
/* 8051BB00  90 01 00 14 */	stw r0, 0x14(r1)
/* 8051BB04  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8051BB08  7C 7F 1B 78 */	mr r31, r3
/* 8051BB0C  4B EA 3B 9D */	bl func_803BF6A8
/* 8051BB10  4B EA 52 49 */	bl mMsg_Set_idling_req
/* 8051BB14  7F E3 FB 78 */	mr r3, r31
/* 8051BB18  4B FF F1 79 */	bl aEBR2_set_stop_spd
/* 8051BB1C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8051BB20  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8051BB24  7C 08 03 A6 */	mtlr r0
/* 8051BB28  38 21 00 10 */	addi r1, r1, 0x10
/* 8051BB2C  4E 80 00 20 */	blr 
