lbl_80383CD0:
/* 80383CD0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80383CD4  7C 08 02 A6 */	mflr r0
/* 80383CD8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80383CDC  48 03 D6 5D */	bl mMsg_CopyDay
/* 80383CE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80383CE4  7C 08 03 A6 */	mtlr r0
/* 80383CE8  38 21 00 10 */	addi r1, r1, 0x10
/* 80383CEC  4E 80 00 20 */	blr 
