lbl_8037A1E0:
/* 8037A1E0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8037A1E4  7C 08 02 A6 */	mflr r0
/* 8037A1E8  90 01 00 24 */	stw r0, 0x24(r1)
/* 8037A1EC  39 61 00 20 */	addi r11, r1, 0x20
/* 8037A1F0  4B D2 0C E1 */	bl func_8009AED0
/* 8037A1F4  80 C3 00 04 */	lwz r6, 4(r3)
/* 8037A1F8  7C 9C 23 78 */	mr r28, r4
/* 8037A1FC  7C BD 2B 78 */	mr r29, r5
/* 8037A200  3B E0 00 00 */	li r31, 0
/* 8037A204  2C 06 00 00 */	cmpwi r6, 0
/* 8037A208  41 82 00 14 */	beq lbl_8037A21C
/* 8037A20C  80 03 00 08 */	lwz r0, 8(r3)
/* 8037A210  2C 00 00 00 */	cmpwi r0, 0
/* 8037A214  40 82 00 08 */	bne lbl_8037A21C
/* 8037A218  3B E0 00 01 */	li r31, 1
lbl_8037A21C:
/* 8037A21C  88 9C 00 03 */	lbz r4, 3(r28)
/* 8037A220  3C 60 80 65 */	lis r3, mbgm_pattern_data@ha /* 0x8064F5B8@ha */
/* 8037A224  38 63 F5 B8 */	addi r3, r3, mbgm_pattern_data@l /* 0x8064F5B8@l */
/* 8037A228  54 C0 10 3A */	slwi r0, r6, 2
/* 8037A22C  1C 84 00 0C */	mulli r4, r4, 0xc
/* 8037A230  7C 63 22 14 */	add r3, r3, r4
/* 8037A234  7C 03 00 2E */	lwzx r0, r3, r0
/* 8037A238  20 00 00 01 */	subfic r0, r0, 1
/* 8037A23C  7C 00 00 34 */	cntlzw r0, r0
/* 8037A240  54 1E D9 7E */	srwi r30, r0, 5
/* 8037A244  48 00 26 59 */	bl mBGMPsComp_execute_bgm_num_get
/* 8037A248  2C 1D 00 00 */	cmpwi r29, 0
/* 8037A24C  54 60 0F FE */	srwi r0, r3, 0x1f
/* 8037A250  88 7C 00 02 */	lbz r3, 2(r28)
/* 8037A254  68 06 00 01 */	xori r6, r0, 1
/* 8037A258  7F E4 FB 78 */	mr r4, r31
/* 8037A25C  7F C5 F3 78 */	mr r5, r30
/* 8037A260  38 E0 01 68 */	li r7, 0x168
/* 8037A264  40 82 00 08 */	bne lbl_8037A26C
/* 8037A268  38 E0 0A 8C */	li r7, 0xa8c
lbl_8037A26C:
/* 8037A26C  57 A8 06 3E */	clrlwi r8, r29, 0x18
/* 8037A270  48 00 1D ED */	bl mBGMPsComp_make_ps_fieldSchedEv
/* 8037A274  39 61 00 20 */	addi r11, r1, 0x20
/* 8037A278  4B D2 0C A5 */	bl func_8009AF1C
/* 8037A27C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8037A280  7C 08 03 A6 */	mtlr r0
/* 8037A284  38 21 00 20 */	addi r1, r1, 0x20
/* 8037A288  4E 80 00 20 */	blr 
