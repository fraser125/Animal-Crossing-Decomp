lbl_8039DAB4:
/* 8039DAB4  3C A0 81 16 */	lis r5, index_today@ha /* 0x811677AC@ha */
/* 8039DAB8  3C 80 81 16 */	lis r4, event_today@ha /* 0x811676AC@ha */
/* 8039DABC  38 A5 77 AC */	addi r5, r5, index_today@l /* 0x811677AC@l */
/* 8039DAC0  38 C0 00 00 */	li r6, 0
/* 8039DAC4  7C 65 18 AE */	lbzx r3, r5, r3
/* 8039DAC8  38 04 76 AC */	addi r0, r4, event_today@l /* 0x811676AC@l */
/* 8039DACC  28 03 00 FF */	cmplwi r3, 0xff
/* 8039DAD0  54 63 25 36 */	rlwinm r3, r3, 4, 0x14, 0x1b
/* 8039DAD4  7C 60 1A 14 */	add r3, r0, r3
/* 8039DAD8  41 82 00 20 */	beq lbl_8039DAF8
/* 8039DADC  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8039DAE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8039DAE4  41 82 00 08 */	beq lbl_8039DAEC
/* 8039DAE8  38 C0 00 01 */	li r6, 1
lbl_8039DAEC:
/* 8039DAEC  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8039DAF0  54 00 00 3C */	rlwinm r0, r0, 0, 0, 0x1e
/* 8039DAF4  B0 03 00 0C */	sth r0, 0xc(r3)
lbl_8039DAF8:
/* 8039DAF8  7C C3 33 78 */	mr r3, r6
/* 8039DAFC  4E 80 00 20 */	blr 
