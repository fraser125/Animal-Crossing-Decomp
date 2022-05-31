lbl_8039D904:
/* 8039D904  3C 80 81 16 */	lis r4, index_today@ha /* 0x811677AC@ha */
/* 8039D908  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8039D90C  38 A4 77 AC */	addi r5, r4, index_today@l /* 0x811677AC@l */
/* 8039D910  3C 80 81 16 */	lis r4, event_today@ha /* 0x811676AC@ha */
/* 8039D914  7C E5 18 AE */	lbzx r7, r5, r3
/* 8039D918  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 8039D91C  3C A3 00 02 */	addis r5, r3, 2
/* 8039D920  38 04 76 AC */	addi r0, r4, event_today@l /* 0x811676AC@l */
/* 8039D924  28 07 00 FF */	cmplwi r7, 0xff
/* 8039D928  54 E3 25 36 */	rlwinm r3, r7, 4, 0x14, 0x1b
/* 8039D92C  88 85 61 22 */	lbz r4, 0x6122(r5)
/* 8039D930  7C 60 1A 14 */	add r3, r0, r3
/* 8039D934  40 82 00 0C */	bne lbl_8039D940
/* 8039D938  38 60 00 00 */	li r3, 0
/* 8039D93C  4E 80 00 20 */	blr 
lbl_8039D940:
/* 8039D940  A8 03 00 0C */	lha r0, 0xc(r3)
/* 8039D944  54 00 07 BD */	rlwinm. r0, r0, 0, 0x1e, 0x1e
/* 8039D948  41 82 00 0C */	beq lbl_8039D954
/* 8039D94C  38 60 00 00 */	li r3, 0
/* 8039D950  4E 80 00 20 */	blr 
lbl_8039D954:
/* 8039D954  80 63 00 04 */	lwz r3, 4(r3)
/* 8039D958  54 60 00 43 */	rlwinm. r0, r3, 0, 1, 1
/* 8039D95C  41 82 00 0C */	beq lbl_8039D968
/* 8039D960  38 60 00 00 */	li r3, 0
/* 8039D964  4E 80 00 20 */	blr 
lbl_8039D968:
/* 8039D968  38 00 00 01 */	li r0, 1
/* 8039D96C  7C 00 20 30 */	slw r0, r0, r4
/* 8039D970  7C 63 00 38 */	and r3, r3, r0
/* 8039D974  30 03 FF FF */	addic r0, r3, -1
/* 8039D978  7C 60 19 10 */	subfe r3, r0, r3
/* 8039D97C  4E 80 00 20 */	blr 
