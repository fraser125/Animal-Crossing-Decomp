lbl_80474918:
/* 80474918  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047491C  7C 08 02 A6 */	mflr r0
/* 80474920  90 01 00 14 */	stw r0, 0x14(r1)
/* 80474924  4B FF FF AD */	bl aMR_MsgInitOwnerWaitWhichPutOut
/* 80474928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047492C  7C 08 03 A6 */	mtlr r0
/* 80474930  38 21 00 10 */	addi r1, r1, 0x10
/* 80474934  4E 80 00 20 */	blr 
