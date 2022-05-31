lbl_8037CB10:
/* 8037CB10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037CB14  7C 08 02 A6 */	mflr r0
/* 8037CB18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037CB1C  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8037CB20  7C 7F 1B 78 */	mr r31, r3
/* 8037CB24  4B FF FF A9 */	bl mBGMForce_inform_cleanup
/* 8037CB28  7F E3 FB 78 */	mr r3, r31
/* 8037CB2C  4B FF FF CD */	bl mBGMForce_room_nonstop_cleanup
/* 8037CB30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037CB34  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8037CB38  7C 08 03 A6 */	mtlr r0
/* 8037CB3C  38 21 00 10 */	addi r1, r1, 0x10
/* 8037CB40  4E 80 00 20 */	blr 
