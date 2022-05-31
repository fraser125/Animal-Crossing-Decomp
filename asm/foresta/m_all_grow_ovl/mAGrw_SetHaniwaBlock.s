lbl_80513B84:
/* 80513B84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80513B88  7C 08 02 A6 */	mflr r0
/* 80513B8C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80513B90  4B EB 30 85 */	bl mMsm_DepositItemBlock_cancel
/* 80513B94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80513B98  7C 08 03 A6 */	mtlr r0
/* 80513B9C  38 21 00 10 */	addi r1, r1, 0x10
/* 80513BA0  4E 80 00 20 */	blr 
