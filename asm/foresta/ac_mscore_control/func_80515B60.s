lbl_80515B60:
/* 80515B60  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80515B64  7C 08 02 A6 */	mflr r0
/* 80515B68  38 80 00 00 */	li r4, 0
/* 80515B6C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80515B70  48 00 07 79 */	bl aMSC_setupAction
/* 80515B74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80515B78  7C 08 03 A6 */	mtlr r0
/* 80515B7C  38 21 00 10 */	addi r1, r1, 0x10
/* 80515B80  4E 80 00 20 */	blr 
