lbl_803BC6BC:
/* 803BC6BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC6C0  7C 08 02 A6 */	mflr r0
/* 803BC6C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC6C8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC6CC  7C 7F 1B 78 */	mr r31, r3
/* 803BC6D0  48 02 39 BD */	bl mPr_ClearPersonalID
/* 803BC6D4  38 00 00 FF */	li r0, 0xff
/* 803BC6D8  38 7F 00 16 */	addi r3, r31, 0x16
/* 803BC6DC  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803BC6E0  48 02 39 AD */	bl mPr_ClearPersonalID
/* 803BC6E4  38 00 00 FF */	li r0, 0xff
/* 803BC6E8  98 1F 00 2A */	stb r0, 0x2a(r31)
/* 803BC6EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC6F0  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC6F4  7C 08 03 A6 */	mtlr r0
/* 803BC6F8  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC6FC  4E 80 00 20 */	blr 
