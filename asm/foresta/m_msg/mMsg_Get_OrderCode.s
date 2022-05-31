lbl_803C0374:
/* 803C0374  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0378  7C 08 02 A6 */	mflr r0
/* 803C037C  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0380  80 63 00 0C */	lwz r3, 0xc(r3)
/* 803C0384  38 63 00 20 */	addi r3, r3, 0x20
/* 803C0388  4B FF FF 95 */	bl mMsg_Get_OrderCode_forData
/* 803C038C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0390  7C 08 03 A6 */	mtlr r0
/* 803C0394  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0398  4E 80 00 20 */	blr 
