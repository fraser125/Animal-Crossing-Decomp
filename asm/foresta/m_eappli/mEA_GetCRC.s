lbl_8039A588:
/* 8039A588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039A58C  7C 08 02 A6 */	mflr r0
/* 8039A590  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039A594  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8039A598  7C 9F 23 78 */	mr r31, r4
/* 8039A59C  93 C1 00 08 */	stw r30, 8(r1)
/* 8039A5A0  7C 7E 1B 78 */	mr r30, r3
/* 8039A5A4  4B FF FF 99 */	bl crcgen
/* 8039A5A8  7F C3 F3 78 */	mr r3, r30
/* 8039A5AC  7F E4 FB 78 */	mr r4, r31
/* 8039A5B0  4B FF FF 49 */	bl func_8039A4F8
/* 8039A5B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039A5B8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8039A5BC  83 C1 00 08 */	lwz r30, 8(r1)
/* 8039A5C0  7C 08 03 A6 */	mtlr r0
/* 8039A5C4  38 21 00 10 */	addi r1, r1, 0x10
/* 8039A5C8  4E 80 00 20 */	blr 
