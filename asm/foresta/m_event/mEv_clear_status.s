lbl_8039DA80:
/* 8039DA80  3C C0 81 16 */	lis r6, index_today@ha /* 0x811677AC@ha */
/* 8039DA84  3C A0 81 16 */	lis r5, event_today@ha /* 0x811676AC@ha */
/* 8039DA88  38 C6 77 AC */	addi r6, r6, index_today@l /* 0x811677AC@l */
/* 8039DA8C  7C 66 18 AE */	lbzx r3, r6, r3
/* 8039DA90  38 05 76 AC */	addi r0, r5, event_today@l /* 0x811676AC@l */
/* 8039DA94  28 03 00 FF */	cmplwi r3, 0xff
/* 8039DA98  54 63 25 36 */	rlwinm r3, r3, 4, 0x14, 0x1b
/* 8039DA9C  7C 60 1A 14 */	add r3, r0, r3
/* 8039DAA0  4D 82 00 20 */	beqlr 
/* 8039DAA4  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8039DAA8  7C 00 20 78 */	andc r0, r0, r4
/* 8039DAAC  B0 03 00 0C */	sth r0, 0xc(r3)
/* 8039DAB0  4E 80 00 20 */	blr 
