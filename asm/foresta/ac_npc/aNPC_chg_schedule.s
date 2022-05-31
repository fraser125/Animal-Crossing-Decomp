lbl_805380C4:
/* 805380C4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805380C8  7C 08 02 A6 */	mflr r0
/* 805380CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805380D0  98 A3 07 DC */	stb r5, 0x7dc(r3)
/* 805380D4  4B FF FF 55 */	bl aNPC_schedule_init
/* 805380D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805380DC  7C 08 03 A6 */	mtlr r0
/* 805380E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805380E4  4E 80 00 20 */	blr 
