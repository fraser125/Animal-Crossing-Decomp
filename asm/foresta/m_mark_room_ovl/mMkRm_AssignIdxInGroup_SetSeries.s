lbl_804D3504:
/* 804D3504  3C 80 80 6A */	lis r4, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D3508  38 00 04 F2 */	li r0, 0x4f2
/* 804D350C  38 C4 CE FC */	addi r6, r4, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D3510  38 E0 00 00 */	li r7, 0
/* 804D3514  39 00 00 00 */	li r8, 0
/* 804D3518  38 80 00 00 */	li r4, 0
/* 804D351C  7C 09 03 A6 */	mtctr r0
lbl_804D3520:
/* 804D3520  7C 06 20 AE */	lbzx r0, r6, r4
/* 804D3524  54 00 F6 BE */	rlwinm r0, r0, 0x1e, 0x1a, 0x1f
/* 804D3528  7C 03 00 00 */	cmpw r3, r0
/* 804D352C  40 82 00 18 */	bne lbl_804D3544
/* 804D3530  7C 06 22 2E */	lhzx r0, r6, r4
/* 804D3534  50 E0 05 BE */	rlwimi r0, r7, 0, 0x16, 0x1f
/* 804D3538  39 08 00 01 */	addi r8, r8, 1
/* 804D353C  38 E7 00 01 */	addi r7, r7, 1
/* 804D3540  7C 06 23 2E */	sthx r0, r6, r4
lbl_804D3544:
/* 804D3544  38 84 00 04 */	addi r4, r4, 4
/* 804D3548  42 00 FF D8 */	bdnz lbl_804D3520
/* 804D354C  1C 03 00 03 */	mulli r0, r3, 3
/* 804D3550  3C 60 80 6A */	lis r3, data_8069C9F0@ha /* 0x8069C9F0@ha */
/* 804D3554  38 63 C9 F0 */	addi r3, r3, data_8069C9F0@l /* 0x8069C9F0@l */
/* 804D3558  7C 63 02 14 */	add r3, r3, r0
/* 804D355C  99 03 00 01 */	stb r8, 1(r3)
/* 804D3560  4E 80 00 20 */	blr 
