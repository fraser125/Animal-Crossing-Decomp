lbl_8048FA88:
/* 8048FA88  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8048FA8C  7C 08 02 A6 */	mflr r0
/* 8048FA90  90 01 00 14 */	stw r0, 0x14(r1)
/* 8048FA94  A0 83 01 B6 */	lhz r4, 0x1b6(r3)
/* 8048FA98  80 63 01 7C */	lwz r3, 0x17c(r3)
/* 8048FA9C  2C 04 00 64 */	cmpwi r4, 0x64
/* 8048FAA0  80 63 00 00 */	lwz r3, 0(r3)
/* 8048FAA4  40 81 00 08 */	ble lbl_8048FAAC
/* 8048FAA8  20 84 00 64 */	subfic r4, r4, 0x64
lbl_8048FAAC:
/* 8048FAAC  28 03 00 00 */	cmplwi r3, 0
/* 8048FAB0  41 82 00 08 */	beq lbl_8048FAB8
/* 8048FAB4  4B F3 BD 79 */	bl mNpc_AddFriendship
lbl_8048FAB8:
/* 8048FAB8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8048FABC  7C 08 03 A6 */	mtlr r0
/* 8048FAC0  38 21 00 10 */	addi r1, r1, 0x10
/* 8048FAC4  4E 80 00 20 */	blr 
