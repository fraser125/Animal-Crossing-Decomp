lbl_80494EF0:
/* 80494EF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80494EF4  7C 08 02 A6 */	mflr r0
/* 80494EF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80494EFC  A0 83 01 B6 */	lhz r4, 0x1b6(r3)
/* 80494F00  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 80494F04  2C 04 00 64 */	cmpwi r4, 0x64
/* 80494F08  80 63 00 00 */	lwz r3, 0(r3)
/* 80494F0C  40 81 00 08 */	ble lbl_80494F14
/* 80494F10  20 84 00 64 */	subfic r4, r4, 0x64
lbl_80494F14:
/* 80494F14  28 03 00 00 */	cmplwi r3, 0
/* 80494F18  41 82 00 08 */	beq lbl_80494F20
/* 80494F1C  4B F3 69 11 */	bl mNpc_AddFriendship
lbl_80494F20:
/* 80494F20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80494F24  7C 08 03 A6 */	mtlr r0
/* 80494F28  38 21 00 10 */	addi r1, r1, 0x10
/* 80494F2C  4E 80 00 20 */	blr 
