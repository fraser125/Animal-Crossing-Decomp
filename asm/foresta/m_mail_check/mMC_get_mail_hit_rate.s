lbl_803BD148:
/* 803BD148  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BD14C  7C 08 02 A6 */	mflr r0
/* 803BD150  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BD154  48 15 1F E9 */	bl mMck_check_key_hit
/* 803BD158  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BD15C  7C 08 03 A6 */	mtlr r0
/* 803BD160  38 21 00 10 */	addi r1, r1, 0x10
/* 803BD164  4E 80 00 20 */	blr 
