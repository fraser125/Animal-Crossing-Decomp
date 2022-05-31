lbl_80486DB0:
/* 80486DB0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486DB4  7C 08 02 A6 */	mflr r0
/* 80486DB8  38 80 00 0A */	li r4, 0xa
/* 80486DBC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486DC0  4B FF FF 3D */	bl aQMgr_talk_start_kamakura_common
/* 80486DC4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486DC8  7C 08 03 A6 */	mtlr r0
/* 80486DCC  38 21 00 10 */	addi r1, r1, 0x10
/* 80486DD0  4E 80 00 20 */	blr 
