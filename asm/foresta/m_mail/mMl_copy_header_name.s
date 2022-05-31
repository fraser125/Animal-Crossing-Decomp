lbl_803BC7B8:
/* 803BC7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC7BC  7C 08 02 A6 */	mflr r0
/* 803BC7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC7C4  88 04 00 14 */	lbz r0, 0x14(r4)
/* 803BC7C8  98 03 00 14 */	stb r0, 0x14(r3)
/* 803BC7CC  48 02 39 55 */	bl mPr_CopyPersonalID
/* 803BC7D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC7D4  7C 08 03 A6 */	mtlr r0
/* 803BC7D8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC7DC  4E 80 00 20 */	blr 
