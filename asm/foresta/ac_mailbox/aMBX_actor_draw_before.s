lbl_8042D21C:
/* 8042D21C  2C 05 00 03 */	cmpwi r5, 3
/* 8042D220  40 82 00 40 */	bne lbl_8042D260
/* 8042D224  80 A3 00 00 */	lwz r5, 0(r3)
/* 8042D228  3C 60 80 68 */	lis r3, post_flag_saki_model@ha /* 0x80684A98@ha */
/* 8042D22C  80 88 03 0C */	lwz r4, 0x30c(r8)
/* 8042D230  3C 00 DE 00 */	lis r0, 0xde00
/* 8042D234  80 C5 02 D0 */	lwz r6, 0x2d0(r5)
/* 8042D238  38 63 4A 98 */	addi r3, r3, post_flag_saki_model@l /* 0x80684A98@l */
/* 8042D23C  20 84 00 05 */	subfic r4, r4, 5
/* 8042D240  7C C7 33 78 */	mr r7, r6
/* 8042D244  38 C6 00 08 */	addi r6, r6, 8
/* 8042D248  7C 84 00 34 */	cntlzw r4, r4
/* 8042D24C  90 07 00 00 */	stw r0, 0(r7)
/* 8042D250  54 80 E8 FA */	rlwinm r0, r4, 0x1d, 3, 0x1d
/* 8042D254  7C 03 00 2E */	lwzx r0, r3, r0
/* 8042D258  90 07 00 04 */	stw r0, 4(r7)
/* 8042D25C  90 C5 02 D0 */	stw r6, 0x2d0(r5)
lbl_8042D260:
/* 8042D260  38 60 00 01 */	li r3, 1
/* 8042D264  4E 80 00 20 */	blr 
