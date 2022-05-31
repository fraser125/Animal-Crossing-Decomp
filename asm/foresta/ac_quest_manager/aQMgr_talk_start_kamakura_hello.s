lbl_80486D68:
/* 80486D68  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80486D6C  7C 08 02 A6 */	mflr r0
/* 80486D70  38 80 00 08 */	li r4, 8
/* 80486D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80486D78  4B FF FF 85 */	bl aQMgr_talk_start_kamakura_common
/* 80486D7C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80486D80  7C 08 03 A6 */	mtlr r0
/* 80486D84  38 21 00 10 */	addi r1, r1, 0x10
/* 80486D88  4E 80 00 20 */	blr 
