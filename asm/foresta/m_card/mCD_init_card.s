lbl_803F7AF8:
/* 803F7AF8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803F7AFC  7C 08 02 A6 */	mflr r0
/* 803F7B00  90 01 00 14 */	stw r0, 0x14(r1)
/* 803F7B04  4B C9 65 75 */	bl CARDInit
/* 803F7B08  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803F7B0C  7C 08 03 A6 */	mtlr r0
/* 803F7B10  38 21 00 10 */	addi r1, r1, 0x10
/* 803F7B14  4E 80 00 20 */	blr 
