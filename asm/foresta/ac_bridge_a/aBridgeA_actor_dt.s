lbl_805A96C8:
/* 805A96C8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A96CC  7C 08 02 A6 */	mflr r0
/* 805A96D0  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A96D4  48 08 51 79 */	bl sAdo_DeletePlussBridge
/* 805A96D8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A96DC  7C 08 03 A6 */	mtlr r0
/* 805A96E0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A96E4  4E 80 00 20 */	blr 
