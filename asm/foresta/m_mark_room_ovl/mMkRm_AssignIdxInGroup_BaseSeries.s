lbl_804D3438:
/* 804D3438  3C 80 80 6A */	lis r4, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D343C  38 00 04 F2 */	li r0, 0x4f2
/* 804D3440  38 C4 CE FC */	addi r6, r4, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D3444  38 E0 00 05 */	li r7, 5
/* 804D3448  39 00 00 00 */	li r8, 0
/* 804D344C  38 80 00 00 */	li r4, 0
/* 804D3450  7C 09 03 A6 */	mtctr r0
lbl_804D3454:
/* 804D3454  7C 06 20 AE */	lbzx r0, r6, r4
/* 804D3458  54 00 F6 BE */	rlwinm r0, r0, 0x1e, 0x1a, 0x1f
/* 804D345C  7C 03 00 00 */	cmpw r3, r0
/* 804D3460  40 82 00 24 */	bne lbl_804D3484
/* 804D3464  7C A6 22 2E */	lhzx r5, r6, r4
/* 804D3468  54 A0 05 BE */	clrlwi r0, r5, 0x16
/* 804D346C  28 00 00 05 */	cmplwi r0, 5
/* 804D3470  41 80 00 10 */	blt lbl_804D3480
/* 804D3474  50 E5 05 BE */	rlwimi r5, r7, 0, 0x16, 0x1f
/* 804D3478  38 E7 00 01 */	addi r7, r7, 1
/* 804D347C  7C A6 23 2E */	sthx r5, r6, r4
lbl_804D3480:
/* 804D3480  39 08 00 01 */	addi r8, r8, 1
lbl_804D3484:
/* 804D3484  38 84 00 04 */	addi r4, r4, 4
/* 804D3488  42 00 FF CC */	bdnz lbl_804D3454
/* 804D348C  1C 03 00 03 */	mulli r0, r3, 3
/* 804D3490  3C 60 80 6A */	lis r3, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D3494  38 63 C9 F0 */	addi r3, r3, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D3498  7C 63 02 14 */	add r3, r3, r0
/* 804D349C  99 03 00 01 */	stb r8, 1(r3)
/* 804D34A0  4E 80 00 20 */	blr 
