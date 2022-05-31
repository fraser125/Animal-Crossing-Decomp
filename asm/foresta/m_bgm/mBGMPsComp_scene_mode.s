lbl_8037C820:
/* 8037C820  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8037C824  7C 08 02 A6 */	mflr r0
/* 8037C828  90 01 00 14 */	stw r0, 0x14(r1)
/* 8037C82C  48 2B 1E B1 */	bl sAdo_SceneMode
/* 8037C830  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8037C834  7C 08 03 A6 */	mtlr r0
/* 8037C838  38 21 00 10 */	addi r1, r1, 0x10
/* 8037C83C  4E 80 00 20 */	blr 
