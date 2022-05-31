lbl_8052C704:
/* 8052C704  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052C708  7C 08 02 A6 */	mflr r0
/* 8052C70C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052C710  4B FF FB ED */	bl aNPC_reset_trans_condition_cloth_data
/* 8052C714  4B FF FB 41 */	bl aNPC_dma_cloth_data_fg
/* 8052C718  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052C71C  7C 08 03 A6 */	mtlr r0
/* 8052C720  38 21 00 10 */	addi r1, r1, 0x10
/* 8052C724  4E 80 00 20 */	blr 
