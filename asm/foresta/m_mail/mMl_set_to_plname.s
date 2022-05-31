lbl_803BC7E0:
/* 803BC7E0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BC7E4  7C 08 02 A6 */	mflr r0
/* 803BC7E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BC7EC  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803BC7F0  7C 7F 1B 78 */	mr r31, r3
/* 803BC7F4  48 02 39 2D */	bl mPr_CopyPersonalID
/* 803BC7F8  38 00 00 00 */	li r0, 0
/* 803BC7FC  98 1F 00 14 */	stb r0, 0x14(r31)
/* 803BC800  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BC804  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803BC808  7C 08 03 A6 */	mtlr r0
/* 803BC80C  38 21 00 10 */	addi r1, r1, 0x10
/* 803BC810  4E 80 00 20 */	blr 
