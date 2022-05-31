lbl_8055B1E8:
/* 8055B1E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055B1EC  7C 08 02 A6 */	mflr r0
/* 8055B1F0  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 8055B1F4  54 86 04 3E */	clrlwi r6, r4, 0x10
/* 8055B1F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055B1FC  38 C6 E0 00 */	addi r6, r6, -8192
/* 8055B200  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 8055B204  38 A0 00 0F */	li r5, 0xf
/* 8055B208  3D 47 00 02 */	addis r10, r7, 2
/* 8055B20C  54 C8 0F FE */	srwi r8, r6, 0x1f
/* 8055B210  54 C7 D0 0A */	slwi r7, r6, 0x1a
/* 8055B214  81 2A 61 3C */	lwz r9, 0x613c(r10)
/* 8055B218  7C E8 38 50 */	subf r7, r8, r7
/* 8055B21C  38 00 00 00 */	li r0, 0
/* 8055B220  54 E7 30 3E */	rotlwi r7, r7, 6
/* 8055B224  38 C0 00 00 */	li r6, 0
/* 8055B228  39 29 00 68 */	addi r9, r9, 0x68
/* 8055B22C  7D 67 42 14 */	add r11, r7, r8
/* 8055B230  7C A9 03 A6 */	mtctr r5
lbl_8055B234:
/* 8055B234  A0 A9 00 00 */	lhz r5, 0(r9)
/* 8055B238  28 05 20 00 */	cmplwi r5, 0x2000
/* 8055B23C  41 80 00 60 */	blt lbl_8055B29C
/* 8055B240  28 05 20 FF */	cmplwi r5, 0x20ff
/* 8055B244  41 81 00 58 */	bgt lbl_8055B29C
/* 8055B248  39 05 E0 00 */	addi r8, r5, -8192
/* 8055B24C  55 05 D0 0A */	slwi r5, r8, 0x1a
/* 8055B250  55 07 0F FE */	srwi r7, r8, 0x1f
/* 8055B254  7C A7 28 50 */	subf r5, r7, r5
/* 8055B258  54 A5 30 3E */	rotlwi r5, r5, 6
/* 8055B25C  7C A5 3A 14 */	add r5, r5, r7
/* 8055B260  7C 05 58 00 */	cmpw r5, r11
/* 8055B264  40 82 00 38 */	bne lbl_8055B29C
/* 8055B268  80 AA 61 3C */	lwz r5, 0x613c(r10)
/* 8055B26C  80 A5 00 88 */	lwz r5, 0x88(r5)
/* 8055B270  7C A7 34 30 */	srw r7, r5, r6
/* 8055B274  54 E5 07 BD */	rlwinm. r5, r7, 0, 0x1e, 0x1e
/* 8055B278  40 82 00 24 */	bne lbl_8055B29C
/* 8055B27C  54 E5 07 FF */	clrlwi. r5, r7, 0x1f
/* 8055B280  40 82 00 1C */	bne lbl_8055B29C
/* 8055B284  7D 05 36 70 */	srawi r5, r8, 6
/* 8055B288  80 E3 00 00 */	lwz r7, 0(r3)
/* 8055B28C  7C A5 01 94 */	addze r5, r5
/* 8055B290  7C A5 3A 14 */	add r5, r5, r7
/* 8055B294  38 A5 00 01 */	addi r5, r5, 1
/* 8055B298  90 A3 00 00 */	stw r5, 0(r3)
lbl_8055B29C:
/* 8055B29C  39 29 00 02 */	addi r9, r9, 2
/* 8055B2A0  38 C6 00 02 */	addi r6, r6, 2
/* 8055B2A4  42 00 FF 90 */	bdnz lbl_8055B234
/* 8055B2A8  80 A3 00 00 */	lwz r5, 0(r3)
/* 8055B2AC  28 05 00 01 */	cmplwi r5, 1
/* 8055B2B0  40 81 00 14 */	ble lbl_8055B2C4
/* 8055B2B4  7C 83 23 78 */	mr r3, r4
/* 8055B2B8  7C A4 2B 78 */	mr r4, r5
/* 8055B2BC  4B FF FA C9 */	bl aNSC_set_buy_sum_str
/* 8055B2C0  38 00 00 05 */	li r0, 5
lbl_8055B2C4:
/* 8055B2C4  7C 03 03 78 */	mr r3, r0
/* 8055B2C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055B2CC  7C 08 03 A6 */	mtlr r0
/* 8055B2D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8055B2D4  4E 80 00 20 */	blr 
