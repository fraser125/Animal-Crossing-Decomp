lbl_803C0A28:
/* 803C0A28  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803C0A2C  7C 08 02 A6 */	mflr r0
/* 803C0A30  90 01 00 14 */	stw r0, 0x14(r1)
/* 803C0A34  4B FF EC 75 */	bl func_803BF6A8
/* 803C0A38  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803C0A3C  88 63 04 54 */	lbz r3, 0x454(r3)
/* 803C0A40  7C 08 03 A6 */	mtlr r0
/* 803C0A44  38 21 00 10 */	addi r1, r1, 0x10
/* 803C0A48  4E 80 00 20 */	blr 
