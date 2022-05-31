lbl_80404AF4:
/* 80404AF4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80404AF8  7C 08 02 A6 */	mflr r0
/* 80404AFC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80404B00  4B FF FF D1 */	bl THA_getFreeBytes
/* 80404B04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80404B08  54 63 0F FE */	srwi r3, r3, 0x1f
/* 80404B0C  7C 08 03 A6 */	mtlr r0
/* 80404B10  38 21 00 10 */	addi r1, r1, 0x10
/* 80404B14  4E 80 00 20 */	blr 
