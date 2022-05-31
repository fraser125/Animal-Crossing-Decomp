lbl_804D3564:
/* 804D3564  3C 80 80 6A */	lis r4, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D3568  38 00 04 F2 */	li r0, 0x4f2
/* 804D356C  38 C4 CE FC */	addi r6, r4, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D3570  38 E0 00 00 */	li r7, 0
/* 804D3574  39 00 00 00 */	li r8, 0
/* 804D3578  38 80 00 00 */	li r4, 0
/* 804D357C  7C 09 03 A6 */	mtctr r0
lbl_804D3580:
/* 804D3580  7C 06 20 AE */	lbzx r0, r6, r4
/* 804D3584  54 00 F6 BE */	rlwinm r0, r0, 0x1e, 0x1a, 0x1f
/* 804D3588  7C 03 00 00 */	cmpw r3, r0
/* 804D358C  40 82 00 18 */	bne lbl_804D35A4
/* 804D3590  7C 06 22 2E */	lhzx r0, r6, r4
/* 804D3594  50 E0 05 BE */	rlwimi r0, r7, 0, 0x16, 0x1f
/* 804D3598  39 08 00 01 */	addi r8, r8, 1
/* 804D359C  38 E7 00 01 */	addi r7, r7, 1
/* 804D35A0  7C 06 23 2E */	sthx r0, r6, r4
lbl_804D35A4:
/* 804D35A4  38 84 00 04 */	addi r4, r4, 4
/* 804D35A8  42 00 FF D8 */	bdnz lbl_804D3580
/* 804D35AC  1C 03 00 03 */	mulli r0, r3, 3
/* 804D35B0  3C 60 80 6A */	lis r3, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D35B4  38 63 C9 F0 */	addi r3, r3, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D35B8  7C 63 02 14 */	add r3, r3, r0
/* 804D35BC  99 03 00 01 */	stb r8, 1(r3)
/* 804D35C0  4E 80 00 20 */	blr 
