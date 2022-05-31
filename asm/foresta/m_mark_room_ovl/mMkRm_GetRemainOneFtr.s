lbl_804D20BC:
/* 804D20BC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804D20C0  7C 08 02 A6 */	mflr r0
/* 804D20C4  3C A0 80 6A */	lis r5, mMkRm_ftr_info@ha /* 0x8069CEFC@ha */
/* 804D20C8  39 00 00 00 */	li r8, 0
/* 804D20CC  90 01 00 14 */	stw r0, 0x14(r1)
/* 804D20D0  38 00 04 F2 */	li r0, 0x4f2
/* 804D20D4  38 E5 CE FC */	addi r7, r5, mMkRm_ftr_info@l /* 0x8069CEFC@l */
/* 804D20D8  38 A0 00 00 */	li r5, 0
/* 804D20DC  7C 09 03 A6 */	mtctr r0
lbl_804D20E0:
/* 804D20E0  7C 07 28 AE */	lbzx r0, r7, r5
/* 804D20E4  7C C7 2A 2E */	lhzx r6, r7, r5
/* 804D20E8  54 00 F6 BE */	rlwinm r0, r0, 0x1e, 0x1a, 0x1f
/* 804D20EC  7C 00 20 00 */	cmpw r0, r4
/* 804D20F0  54 C0 05 BE */	clrlwi r0, r6, 0x16
/* 804D20F4  40 82 00 1C */	bne lbl_804D2110
/* 804D20F8  7C 00 18 00 */	cmpw r0, r3
/* 804D20FC  40 82 00 14 */	bne lbl_804D2110
/* 804D2100  7D 03 43 78 */	mr r3, r8
/* 804D2104  38 80 00 00 */	li r4, 0
/* 804D2108  4B F1 56 CD */	bl mRmTp_FtrIdx2FtrItemNo
/* 804D210C  48 00 00 14 */	b lbl_804D2120
lbl_804D2110:
/* 804D2110  39 08 00 01 */	addi r8, r8, 1
/* 804D2114  38 A5 00 04 */	addi r5, r5, 4
/* 804D2118  42 00 FF C8 */	bdnz lbl_804D20E0
/* 804D211C  38 60 00 00 */	li r3, 0
lbl_804D2120:
/* 804D2120  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804D2124  7C 08 03 A6 */	mtlr r0
/* 804D2128  38 21 00 10 */	addi r1, r1, 0x10
/* 804D212C  4E 80 00 20 */	blr 
