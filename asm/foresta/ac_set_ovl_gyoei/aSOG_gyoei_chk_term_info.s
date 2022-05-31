lbl_8049A130:
/* 8049A130  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049A134  7C 08 02 A6 */	mflr r0
/* 8049A138  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049A13C  39 61 00 40 */	addi r11, r1, 0x40
/* 8049A140  4B C0 0D 85 */	bl func_8009AEC4
/* 8049A144  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8049A148  7C 79 1B 78 */	mr r25, r3
/* 8049A14C  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 8049A150  7C 9A 23 78 */	mr r26, r4
/* 8049A154  3C 83 00 02 */	addis r4, r3, 2
/* 8049A158  7C BB 2B 78 */	mr r27, r5
/* 8049A15C  88 04 61 23 */	lbz r0, 0x6123(r4)
/* 8049A160  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 8049A164  28 00 00 0F */	cmplwi r0, 0xf
/* 8049A168  8B 84 41 76 */	lbz r28, 0x4176(r4)
/* 8049A16C  38 03 FF FF */	addi r0, r3, -1
/* 8049A170  54 1E 08 3C */	slwi r30, r0, 1
/* 8049A174  40 81 00 08 */	ble lbl_8049A17C
/* 8049A178  3B DE 00 01 */	addi r30, r30, 1
lbl_8049A17C:
/* 8049A17C  38 1E FF E9 */	addi r0, r30, -23
/* 8049A180  7C 9E E0 51 */	subf. r4, r30, r28
/* 8049A184  30 60 FF FF */	addic r3, r0, -1
/* 8049A188  38 1E 00 01 */	addi r0, r30, 1
/* 8049A18C  7C 63 19 10 */	subfe r3, r3, r3
/* 8049A190  7C 1D 18 78 */	andc r29, r0, r3
/* 8049A194  7C 04 00 D0 */	neg r0, r4
/* 8049A198  41 80 00 08 */	blt lbl_8049A1A0
/* 8049A19C  7C 80 23 78 */	mr r0, r4
lbl_8049A1A0:
/* 8049A1A0  2C 00 00 01 */	cmpwi r0, 1
/* 8049A1A4  40 81 00 34 */	ble lbl_8049A1D8
/* 8049A1A8  2C 1C 00 00 */	cmpwi r28, 0
/* 8049A1AC  41 82 00 2C */	beq lbl_8049A1D8
/* 8049A1B0  2C 1E 00 17 */	cmpwi r30, 0x17
/* 8049A1B4  41 82 00 24 */	beq lbl_8049A1D8
/* 8049A1B8  7F A3 EB 78 */	mr r3, r29
/* 8049A1BC  4B FF FF 1D */	bl aSOG_gyoei_renew_term_info
/* 8049A1C0  93 D9 00 00 */	stw r30, 0(r25)
/* 8049A1C4  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80644CFC@ha */
/* 8049A1C8  C0 03 4C FC */	lfs f0, lit_750@l(r3)  /* 0x80644CFC@l */
/* 8049A1CC  93 DA 00 00 */	stw r30, 0(r26)
/* 8049A1D0  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8049A1D4  48 00 01 24 */	b lbl_8049A2F8
lbl_8049A1D8:
/* 8049A1D8  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049A1DC  38 61 00 10 */	addi r3, r1, 0x10
/* 8049A1E0  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049A1E4  3F E4 00 02 */	addis r31, r4, 2
/* 8049A1E8  3B FF 61 20 */	addi r31, r31, 0x6120
/* 8049A1EC  7F E4 FB 78 */	mr r4, r31
/* 8049A1F0  4B F6 D0 45 */	bl lbRTC_TimeCopy
/* 8049A1F4  7F 84 0E 70 */	srawi r4, r28, 1
/* 8049A1F8  38 60 00 00 */	li r3, 0
/* 8049A1FC  38 84 00 01 */	addi r4, r4, 1
/* 8049A200  57 80 07 FF */	clrlwi. r0, r28, 0x1f
/* 8049A204  98 81 00 15 */	stb r4, 0x15(r1)
/* 8049A208  98 61 00 12 */	stb r3, 0x12(r1)
/* 8049A20C  98 61 00 11 */	stb r3, 0x11(r1)
/* 8049A210  98 61 00 10 */	stb r3, 0x10(r1)
/* 8049A214  40 82 00 2C */	bne lbl_8049A240
/* 8049A218  7C 1C F0 00 */	cmpw r28, r30
/* 8049A21C  41 82 00 18 */	beq lbl_8049A234
/* 8049A220  2C 1E 00 17 */	cmpwi r30, 0x17
/* 8049A224  40 82 00 10 */	bne lbl_8049A234
/* 8049A228  A0 61 00 16 */	lhz r3, 0x16(r1)
/* 8049A22C  38 03 00 01 */	addi r0, r3, 1
/* 8049A230  B0 01 00 16 */	sth r0, 0x16(r1)
lbl_8049A234:
/* 8049A234  38 00 00 01 */	li r0, 1
/* 8049A238  98 01 00 13 */	stb r0, 0x13(r1)
/* 8049A23C  48 00 00 0C */	b lbl_8049A248
lbl_8049A240:
/* 8049A240  38 00 00 0F */	li r0, 0xf
/* 8049A244  98 01 00 13 */	stb r0, 0x13(r1)
lbl_8049A248:
/* 8049A248  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049A24C  38 61 00 10 */	addi r3, r1, 0x10
/* 8049A250  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049A254  3C 84 00 02 */	addis r4, r4, 2
/* 8049A258  88 84 41 77 */	lbz r4, 0x4177(r4)
/* 8049A25C  4B F6 CD 61 */	bl lbRTC_Sub_DD
/* 8049A260  38 61 00 08 */	addi r3, r1, 8
/* 8049A264  38 81 00 10 */	addi r4, r1, 0x10
/* 8049A268  4B F6 CF CD */	bl lbRTC_TimeCopy
/* 8049A26C  38 61 00 08 */	addi r3, r1, 8
/* 8049A270  38 80 00 05 */	li r4, 5
/* 8049A274  4B F6 CA B1 */	bl lbRTC_Add_DD
/* 8049A278  38 61 00 08 */	addi r3, r1, 8
/* 8049A27C  4B F6 C7 45 */	bl lbRTC_IsOverRTC
/* 8049A280  2C 03 00 01 */	cmpwi r3, 1
/* 8049A284  40 82 00 24 */	bne lbl_8049A2A8
/* 8049A288  7F A3 EB 78 */	mr r3, r29
/* 8049A28C  4B FF FE 4D */	bl aSOG_gyoei_renew_term_info
/* 8049A290  93 D9 00 00 */	stw r30, 0(r25)
/* 8049A294  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80644CFC@ha */
/* 8049A298  C0 03 4C FC */	lfs f0, lit_750@l(r3)  /* 0x80644CFC@l */
/* 8049A29C  93 DA 00 00 */	stw r30, 0(r26)
/* 8049A2A0  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8049A2A4  48 00 00 54 */	b lbl_8049A2F8
lbl_8049A2A8:
/* 8049A2A8  38 61 00 10 */	addi r3, r1, 0x10
/* 8049A2AC  4B F6 C7 15 */	bl lbRTC_IsOverRTC
/* 8049A2B0  2C 03 00 01 */	cmpwi r3, 1
/* 8049A2B4  40 82 00 30 */	bne lbl_8049A2E4
/* 8049A2B8  7F E4 FB 78 */	mr r4, r31
/* 8049A2BC  38 61 00 10 */	addi r3, r1, 0x10
/* 8049A2C0  4B F6 C7 DD */	bl lbRTC_GetIntervalDays
/* 8049A2C4  93 D9 00 00 */	stw r30, 0(r25)
/* 8049A2C8  3C 80 80 69 */	lis r4, rate@ha /* 0x8068CCA0@ha */
/* 8049A2CC  54 60 10 3A */	slwi r0, r3, 2
/* 8049A2D0  93 9A 00 00 */	stw r28, 0(r26)
/* 8049A2D4  38 64 CC A0 */	addi r3, r4, rate@l /* 0x8068CCA0@l */
/* 8049A2D8  7C 03 04 2E */	lfsx f0, r3, r0
/* 8049A2DC  D0 1B 00 00 */	stfs f0, 0(r27)
/* 8049A2E0  48 00 00 18 */	b lbl_8049A2F8
lbl_8049A2E4:
/* 8049A2E4  93 D9 00 00 */	stw r30, 0(r25)
/* 8049A2E8  3C 60 80 64 */	lis r3, lit_750@ha /* 0x80644CFC@ha */
/* 8049A2EC  C0 03 4C FC */	lfs f0, lit_750@l(r3)  /* 0x80644CFC@l */
/* 8049A2F0  93 DA 00 00 */	stw r30, 0(r26)
/* 8049A2F4  D0 1B 00 00 */	stfs f0, 0(r27)
lbl_8049A2F8:
/* 8049A2F8  39 61 00 40 */	addi r11, r1, 0x40
/* 8049A2FC  4B C0 0C 15 */	bl func_8009AF10
/* 8049A300  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049A304  7C 08 03 A6 */	mtlr r0
/* 8049A308  38 21 00 40 */	addi r1, r1, 0x40
/* 8049A30C  4E 80 00 20 */	blr 
