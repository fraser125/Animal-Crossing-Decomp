lbl_8039B650:
/* 8039B650  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8039B654  7C 08 02 A6 */	mflr r0
/* 8039B658  3C A0 81 16 */	lis r5, index_today@ha /* 0x811677AC@ha */
/* 8039B65C  3C 80 81 16 */	lis r4, event_today@ha /* 0x811676AC@ha */
/* 8039B660  90 01 00 14 */	stw r0, 0x14(r1)
/* 8039B664  38 A5 77 AC */	addi r5, r5, index_today@l /* 0x811677AC@l */
/* 8039B668  38 04 76 AC */	addi r0, r4, event_today@l /* 0x811676AC@l */
/* 8039B66C  7C 65 18 AE */	lbzx r3, r5, r3
/* 8039B670  28 03 00 FF */	cmplwi r3, 0xff
/* 8039B674  54 63 25 36 */	rlwinm r3, r3, 4, 0x14, 0x1b
/* 8039B678  7C 60 1A 14 */	add r3, r0, r3
/* 8039B67C  40 82 00 0C */	bne lbl_8039B688
/* 8039B680  38 60 FF FF */	li r3, -1
/* 8039B684  48 00 00 0C */	b lbl_8039B690
lbl_8039B688:
/* 8039B688  80 63 00 04 */	lwz r3, 4(r3)
/* 8039B68C  4B FF FF 8D */	bl get_end_time
lbl_8039B690:
/* 8039B690  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8039B694  7C 08 03 A6 */	mtlr r0
/* 8039B698  38 21 00 10 */	addi r1, r1, 0x10
/* 8039B69C  4E 80 00 20 */	blr 
