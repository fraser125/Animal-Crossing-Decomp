lbl_8039D980:
/* 8039D980  3C A0 81 16 */	lis r5, index_today@ha /* 0x811677AC@ha */
/* 8039D984  3C 80 81 16 */	lis r4, event_today@ha /* 0x811676AC@ha */
/* 8039D988  38 A5 77 AC */	addi r5, r5, index_today@l /* 0x811677AC@l */
/* 8039D98C  7C 65 18 AE */	lbzx r3, r5, r3
/* 8039D990  38 04 76 AC */	addi r0, r4, event_today@l /* 0x811676AC@l */
/* 8039D994  28 03 00 FF */	cmplwi r3, 0xff
/* 8039D998  54 63 25 36 */	rlwinm r3, r3, 4, 0x14, 0x1b
/* 8039D99C  7C 60 1A 14 */	add r3, r0, r3
/* 8039D9A0  40 82 00 0C */	bne lbl_8039D9AC
/* 8039D9A4  38 60 00 00 */	li r3, 0
/* 8039D9A8  4E 80 00 20 */	blr 
lbl_8039D9AC:
/* 8039D9AC  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8039D9B0  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8039D9B4  41 82 00 0C */	beq lbl_8039D9C0
/* 8039D9B8  38 60 00 00 */	li r3, 0
/* 8039D9BC  4E 80 00 20 */	blr 
lbl_8039D9C0:
/* 8039D9C0  80 63 00 04 */	lwz r3, 4(r3)
/* 8039D9C4  30 03 FF FF */	addic r0, r3, -1
/* 8039D9C8  7C 60 19 10 */	subfe r3, r0, r3
/* 8039D9CC  4E 80 00 20 */	blr 
