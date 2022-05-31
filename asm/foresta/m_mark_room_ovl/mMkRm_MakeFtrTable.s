lbl_804D3640:
/* 804D3640  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 804D3644  7C 08 02 A6 */	mflr r0
/* 804D3648  90 01 00 34 */	stw r0, 0x34(r1)
/* 804D364C  39 61 00 30 */	addi r11, r1, 0x30
/* 804D3650  4B BC 78 71 */	bl func_8009AEC0
/* 804D3654  7C 7A 1B 78 */	mr r26, r3
/* 804D3658  7C 9B 23 78 */	mr r27, r4
/* 804D365C  3B E0 00 00 */	li r31, 0
/* 804D3660  3B 20 00 00 */	li r25, 0
lbl_804D3664:
/* 804D3664  7F 9A C8 2E */	lwzx r28, r26, r25
/* 804D3668  28 1C 00 00 */	cmplwi r28, 0
/* 804D366C  41 82 00 9C */	beq lbl_804D3708
/* 804D3670  3B A0 00 01 */	li r29, 1
/* 804D3674  3B 00 00 10 */	li r24, 0x10
/* 804D3678  48 00 00 88 */	b lbl_804D3700
lbl_804D367C:
/* 804D367C  3B C0 00 01 */	li r30, 1
/* 804D3680  48 00 00 70 */	b lbl_804D36F0
lbl_804D3684:
/* 804D3684  7C 1E C2 14 */	add r0, r30, r24
/* 804D3688  54 00 08 3C */	slwi r0, r0, 1
/* 804D368C  7C 7C 02 2E */	lhzx r3, r28, r0
/* 804D3690  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 804D3694  2C 00 00 01 */	cmpwi r0, 1
/* 804D3698  41 82 00 0C */	beq lbl_804D36A4
/* 804D369C  2C 00 00 03 */	cmpwi r0, 3
/* 804D36A0  40 82 00 4C */	bne lbl_804D36EC
lbl_804D36A4:
/* 804D36A4  4B F1 40 ED */	bl mRmTp_FtrItemNo2FtrIdx
/* 804D36A8  3C 80 80 6A */	lis r4, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D36AC  54 65 10 3A */	slwi r5, r3, 2
/* 804D36B0  38 64 CE FC */	addi r3, r4, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D36B4  7C 03 28 AE */	lbzx r0, r3, r5
/* 804D36B8  54 06 F6 BE */	rlwinm r6, r0, 0x1e, 0x1a, 0x1f
/* 804D36BC  2C 06 00 35 */	cmpwi r6, 0x35
/* 804D36C0  41 82 00 2C */	beq lbl_804D36EC
/* 804D36C4  7C 03 2A 2E */	lhzx r0, r3, r5
/* 804D36C8  3C 80 81 1D */	lis r4, mMkRm_search_table@ha /* 0x811D2F18@ha */
/* 804D36CC  54 C6 10 3A */	slwi r6, r6, 2
/* 804D36D0  38 60 00 01 */	li r3, 1
/* 804D36D4  38 A4 2F 18 */	addi r5, r4, mMkRm_search_table@l /* 0x811D2F18@l */
/* 804D36D8  54 00 05 BE */	clrlwi r0, r0, 0x16
/* 804D36DC  7C 85 30 2E */	lwzx r4, r5, r6
/* 804D36E0  7C 60 00 30 */	slw r0, r3, r0
/* 804D36E4  7C 80 03 78 */	or r0, r4, r0
/* 804D36E8  7C 05 31 2E */	stwx r0, r5, r6
lbl_804D36EC:
/* 804D36EC  3B DE 00 01 */	addi r30, r30, 1
lbl_804D36F0:
/* 804D36F0  7C 1E D8 00 */	cmpw r30, r27
/* 804D36F4  41 80 FF 90 */	blt lbl_804D3684
/* 804D36F8  3B BD 00 01 */	addi r29, r29, 1
/* 804D36FC  3B 18 00 10 */	addi r24, r24, 0x10
lbl_804D3700:
/* 804D3700  7C 1D D8 00 */	cmpw r29, r27
/* 804D3704  41 80 FF 78 */	blt lbl_804D367C
lbl_804D3708:
/* 804D3708  3B FF 00 01 */	addi r31, r31, 1
/* 804D370C  3B 39 00 04 */	addi r25, r25, 4
/* 804D3710  2C 1F 00 02 */	cmpwi r31, 2
/* 804D3714  41 80 FF 50 */	blt lbl_804D3664
/* 804D3718  39 61 00 30 */	addi r11, r1, 0x30
/* 804D371C  4B BC 77 F1 */	bl func_8009AF0C
/* 804D3720  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804D3724  7C 08 03 A6 */	mtlr r0
/* 804D3728  38 21 00 30 */	addi r1, r1, 0x30
/* 804D372C  4E 80 00 20 */	blr 
