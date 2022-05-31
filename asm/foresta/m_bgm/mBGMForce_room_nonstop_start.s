lbl_8037CB80:
/* 8037CB80  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CB84  7C 08 02 A6 */	mflr r0
/* 8037CB88  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CB8C  4B FF FF E1 */	bl _mBGMForce_room_nonstop_start
/* 8037CB90  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CB94  7C 08 03 A6 */	mtlr r0
/* 8037CB98  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CB9C  4E 80 00 20 */	blr 
