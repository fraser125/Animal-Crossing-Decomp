lbl_8050DB38:
/* 8050DB38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050DB3C  7C 08 02 A6 */	mflr r0
/* 8050DB40  38 A0 00 01 */	li r5, 1
/* 8050DB44  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050DB48  48 00 0F D9 */	bl aFSN_setupAction
/* 8050DB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050DB50  7C 08 03 A6 */	mtlr r0
/* 8050DB54  38 21 00 10 */	addi r1, r1, 0x10
/* 8050DB58  4E 80 00 20 */	blr 
