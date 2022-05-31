lbl_8062D338:
/* 8062D338  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8062D33C  7C 08 02 A6 */	mflr r0
/* 8062D340  90 01 00 14 */	stw r0, 0x14(r1)
/* 8062D344  4B D8 F2 91 */	bl zelda_CleanupArena
/* 8062D348  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8062D34C  7C 08 03 A6 */	mtlr r0
/* 8062D350  38 21 00 10 */	addi r1, r1, 0x10
/* 8062D354  4E 80 00 20 */	blr 
