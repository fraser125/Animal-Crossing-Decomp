lbl_8039F940:
/* 8039F940  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039F944  7C 08 02 A6 */	mflr r0
/* 8039F948  3C C0 80 65 */	lis r6, get_npc_idx@ha /* 0x80652954@ha */
/* 8039F94C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039F950  54 A0 15 BA */	rlwinm r0, r5, 2, 0x16, 0x1d
/* 8039F954  38 A6 29 54 */	addi r5, r6, get_npc_idx@l /* 0x80652954@l */
/* 8039F958  7D 85 00 2E */	lwzx r12, r5, r0
/* 8039F95C  7D 89 03 A6 */	mtctr r12
/* 8039F960  4E 80 04 21 */	bctrl 
/* 8039F964  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039F968  7C 08 03 A6 */	mtlr r0
/* 8039F96C  38 21 00 10 */	addi r1, r1, 0x10
/* 8039F970  4E 80 00 20 */	blr 
