lbl_804DD3F4:
/* 804DD3F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DD3F8  7C 08 02 A6 */	mflr r0
/* 804DD3FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DD400  39 61 00 20 */	addi r11, r1, 0x20
/* 804DD404  4B BB DA D1 */	bl func_8009AED4
/* 804DD408  7C 7D 1B 78 */	mr r29, r3
/* 804DD40C  7C 9E 23 78 */	mr r30, r4
/* 804DD410  7C BF 2B 78 */	mr r31, r5
/* 804DD414  4B EB DA A5 */	bl mEv_CheckTitleDemo
/* 804DD418  3C 80 80 64 */	lis r4, lit_2752@ha /* 0x80646C54@ha */
/* 804DD41C  7C 60 00 34 */	cntlzw r0, r3
/* 804DD420  38 64 6C 54 */	addi r3, r4, lit_2752@l /* 0x80646C54@l */
/* 804DD424  7F E5 FB 78 */	mr r5, r31
/* 804DD428  38 80 00 01 */	li r4, 1
/* 804DD42C  C0 23 00 00 */	lfs f1, 0(r3)
/* 804DD430  5C 87 07 FE */	rlwnm r7, r4, r0, 0x1f, 0x1f
/* 804DD434  7F A3 EB 78 */	mr r3, r29
/* 804DD438  7F C4 F3 78 */	mr r4, r30
/* 804DD43C  38 C0 03 8E */	li r6, 0x38e
/* 804DD440  4B FF 89 6D */	bl Player_actor_CheckAbleMoveWadeBlock
/* 804DD444  39 61 00 20 */	addi r11, r1, 0x20
/* 804DD448  4B BB DA D9 */	bl func_8009AF20
/* 804DD44C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DD450  7C 08 03 A6 */	mtlr r0
/* 804DD454  38 21 00 20 */	addi r1, r1, 0x20
/* 804DD458  4E 80 00 20 */	blr 
