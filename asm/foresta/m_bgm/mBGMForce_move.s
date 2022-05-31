lbl_8037CA74:
/* 8037CA74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CA78  7C 08 02 A6 */	mflr r0
/* 8037CA7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CA80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037CA84  7C 7F 1B 78 */	mr r31, r3
/* 8037CA88  4B FF FF 05 */	bl mBGMForce_move_inform
/* 8037CA8C  7F E3 FB 78 */	mr r3, r31
/* 8037CA90  4B FF FF B9 */	bl mBGMForce_move_room_nonstop
/* 8037CA94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CA98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CA9C  7C 08 03 A6 */	mtlr r0
/* 8037CAA0  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CAA4  4E 80 00 20 */	blr 
