lbl_805B87D8:
/* 805B87D8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805B87DC  7C 08 02 A6 */	mflr r0
/* 805B87E0  2C 04 00 00 */	cmpwi r4, 0
/* 805B87E4  90 01 00 24 */	stw r0, 0x24(r1)
/* 805B87E8  38 00 00 03 */	li r0, 3
/* 805B87EC  80 C3 00 0C */	lwz r6, 0xc(r3)
/* 805B87F0  7C 04 07 34 */	extsh r4, r0
/* 805B87F4  80 03 00 10 */	lwz r0, 0x10(r3)
/* 805B87F8  38 A0 00 64 */	li r5, 0x64
/* 805B87FC  90 C1 00 08 */	stw r6, 8(r1)
/* 805B8800  90 01 00 0C */	stw r0, 0xc(r1)
/* 805B8804  80 03 00 14 */	lwz r0, 0x14(r3)
/* 805B8808  38 61 00 08 */	addi r3, r1, 8
/* 805B880C  90 01 00 10 */	stw r0, 0x10(r1)
/* 805B8810  4B DD 92 8D */	bl mCoBG_SetPlussOffset
/* 805B8814  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805B8818  7C 08 03 A6 */	mtlr r0
/* 805B881C  38 21 00 20 */	addi r1, r1, 0x20
/* 805B8820  4E 80 00 20 */	blr 
