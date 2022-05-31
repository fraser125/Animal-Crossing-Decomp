lbl_803BA7F4:
/* 803BA7F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803BA7F8  7C 08 02 A6 */	mflr r0
/* 803BA7FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 803BA800  4B FB 92 35 */	bl mAGrw_OrderSetHaniwa
/* 803BA804  4B FF FF C9 */	bl mEnv_Rainbow_reserve
/* 803BA808  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803BA80C  7C 08 03 A6 */	mtlr r0
/* 803BA810  38 21 00 10 */	addi r1, r1, 0x10
/* 803BA814  4E 80 00 20 */	blr 
