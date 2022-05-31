lbl_80486DD4:
/* 80486DD4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486DD8  7C 08 02 A6 */	mflr r0
/* 80486DDC  38 80 00 0B */	li r4, 0xb
/* 80486DE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486DE4  4B FF FF 19 */	bl aQMgr_talk_start_kamakura_common
/* 80486DE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486DEC  7C 08 03 A6 */	mtlr r0
/* 80486DF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80486DF4  4E 80 00 20 */	blr 
