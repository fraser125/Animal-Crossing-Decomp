lbl_8039BAB4:
/* 8039BAB4  38 60 00 00 */	li r3, 0
/* 8039BAB8  3C C0 81 16 */	lis r6, event_today@ha /* 0x811676AC@ha */
/* 8039BABC  38 00 00 10 */	li r0, 0x10
/* 8039BAC0  7C 65 1B 78 */	mr r5, r3
/* 8039BAC4  7C 64 1B 78 */	mr r4, r3
/* 8039BAC8  38 C6 76 AC */	addi r6, r6, event_today@l /* 0x811676AC@l */
/* 8039BACC  7C 09 03 A6 */	mtctr r0
lbl_8039BAD0:
/* 8039BAD0  7C E6 1A 14 */	add r7, r6, r3
/* 8039BAD4  38 63 00 10 */	addi r3, r3, 0x10
/* 8039BAD8  90 A7 00 04 */	stw r5, 4(r7)
/* 8039BADC  B0 87 00 0A */	sth r4, 0xa(r7)
/* 8039BAE0  B0 87 00 08 */	sth r4, 8(r7)
/* 8039BAE4  A8 07 00 0C */	lha r0, 0xc(r7)
/* 8039BAE8  54 00 06 6E */	rlwinm r0, r0, 0, 0x19, 0x17
/* 8039BAEC  B0 07 00 0C */	sth r0, 0xc(r7)
/* 8039BAF0  42 00 FF E0 */	bdnz lbl_8039BAD0
/* 8039BAF4  4E 80 00 20 */	blr 
