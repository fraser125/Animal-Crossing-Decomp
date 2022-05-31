lbl_803CAB04:
/* 803CAB04  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 803CAB08  7C 08 02 A6 */	mflr r0
/* 803CAB0C  90 01 00 54 */	stw r0, 0x54(r1)
/* 803CAB10  39 61 00 50 */	addi r11, r1, 0x50
/* 803CAB14  4B CD 03 A9 */	bl func_8009AEBC
/* 803CAB18  3C E0 81 14 */	lis r7, common_data@ha /* 0x81138538@ha */
/* 803CAB1C  7C 79 1B 78 */	mr r25, r3
/* 803CAB20  38 E7 85 38 */	addi r7, r7, common_data@l /* 0x81138538@l */
/* 803CAB24  7C 9A 23 78 */	mr r26, r4
/* 803CAB28  3C 67 00 03 */	addis r3, r7, 3
/* 803CAB2C  7C BB 2B 78 */	mr r27, r5
/* 803CAB30  88 03 DB 40 */	lbz r0, -0x24c0(r3)
/* 803CAB34  7C DC 33 78 */	mr r28, r6
/* 803CAB38  3B A0 00 00 */	li r29, 0
/* 803CAB3C  3B 00 00 00 */	li r24, 0
/* 803CAB40  28 00 00 00 */	cmplwi r0, 0
/* 803CAB44  3A E0 00 00 */	li r23, 0
/* 803CAB48  40 82 00 48 */	bne lbl_803CAB90
/* 803CAB4C  3C 80 80 64 */	lis r4, data_806432C4@ha /* 0x806432C4@ha */
/* 803CAB50  3C 67 00 02 */	addis r3, r7, 2
/* 803CAB54  38 84 32 C4 */	addi r4, r4, data_806432C4@l /* 0x806432C4@l */
/* 803CAB58  38 A0 00 7F */	li r5, 0x7f
/* 803CAB5C  38 63 41 A0 */	addi r3, r3, 0x41a0
/* 803CAB60  48 03 BC D9 */	bl lbRTC_IsEqualTime
/* 803CAB64  2C 03 00 01 */	cmpwi r3, 1
/* 803CAB68  40 82 00 10 */	bne lbl_803CAB78
/* 803CAB6C  A3 FB 00 06 */	lhz r31, 6(r27)
/* 803CAB70  8B DB 00 02 */	lbz r30, 2(r27)
/* 803CAB74  48 00 00 24 */	b lbl_803CAB98
lbl_803CAB78:
/* 803CAB78  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803CAB7C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803CAB80  3C 63 00 02 */	addis r3, r3, 2
/* 803CAB84  A3 E3 41 A6 */	lhz r31, 0x41a6(r3)
/* 803CAB88  8B C3 41 A2 */	lbz r30, 0x41a2(r3)
/* 803CAB8C  48 00 00 0C */	b lbl_803CAB98
lbl_803CAB90:
/* 803CAB90  A3 E3 DB DE */	lhz r31, -0x2422(r3)
/* 803CAB94  8B C3 DB DA */	lbz r30, -0x2426(r3)
lbl_803CAB98:
/* 803CAB98  80 BB 00 00 */	lwz r5, 0(r27)
/* 803CAB9C  38 61 00 10 */	addi r3, r1, 0x10
/* 803CABA0  80 1B 00 04 */	lwz r0, 4(r27)
/* 803CABA4  38 81 00 08 */	addi r4, r1, 8
/* 803CABA8  90 A1 00 08 */	stw r5, 8(r1)
/* 803CABAC  90 01 00 0C */	stw r0, 0xc(r1)
/* 803CABB0  4B FE 12 61 */	bl mEv_fishday
/* 803CABB4  38 80 00 00 */	li r4, 0
/* 803CABB8  38 00 00 05 */	li r0, 5
/* 803CABBC  7C 88 23 78 */	mr r8, r4
/* 803CABC0  38 60 00 00 */	li r3, 0
/* 803CABC4  7C 87 23 78 */	mr r7, r4
/* 803CABC8  7C 86 23 78 */	mr r6, r4
/* 803CABCC  7C 85 23 78 */	mr r5, r4
/* 803CABD0  7C 09 03 A6 */	mtctr r0
lbl_803CABD4:
/* 803CABD4  7D 1A 23 2E */	sthx r8, r26, r4
/* 803CABD8  7D 39 1A 14 */	add r9, r25, r3
/* 803CABDC  38 63 00 04 */	addi r3, r3, 4
/* 803CABE0  38 84 00 02 */	addi r4, r4, 2
/* 803CABE4  B0 E9 00 00 */	sth r7, 0(r9)
/* 803CABE8  98 C9 00 02 */	stb r6, 2(r9)
/* 803CABEC  98 A9 00 03 */	stb r5, 3(r9)
/* 803CABF0  42 00 FF E4 */	bdnz lbl_803CABD4
/* 803CABF4  38 00 00 05 */	li r0, 5
/* 803CABF8  38 60 00 00 */	li r3, 0
/* 803CABFC  7C 09 03 A6 */	mtctr r0
lbl_803CAC00:
/* 803CAC00  38 A1 00 10 */	addi r5, r1, 0x10
/* 803CAC04  7C A5 1A 14 */	add r5, r5, r3
/* 803CAC08  88 85 00 02 */	lbz r4, 2(r5)
/* 803CAC0C  A0 C5 00 00 */	lhz r6, 0(r5)
/* 803CAC10  88 05 00 03 */	lbz r0, 3(r5)
/* 803CAC14  54 84 40 2E */	slwi r4, r4, 8
/* 803CAC18  7C 06 F8 00 */	cmpw r6, r31
/* 803CAC1C  7C 04 02 14 */	add r0, r4, r0
/* 803CAC20  54 04 04 3E */	clrlwi r4, r0, 0x10
/* 803CAC24  41 81 00 24 */	bgt lbl_803CAC48
/* 803CAC28  7C 1F 30 00 */	cmpw r31, r6
/* 803CAC2C  40 82 00 34 */	bne lbl_803CAC60
/* 803CAC30  A0 1C 00 00 */	lhz r0, 0(r28)
/* 803CAC34  7C 04 00 40 */	cmplw r4, r0
/* 803CAC38  41 81 00 10 */	bgt lbl_803CAC48
/* 803CAC3C  40 82 00 24 */	bne lbl_803CAC60
/* 803CAC40  2C 1E 00 12 */	cmpwi r30, 0x12
/* 803CAC44  40 80 00 1C */	bge lbl_803CAC60
lbl_803CAC48:
/* 803CAC48  7C 9A BB 2E */	sthx r4, r26, r23
/* 803CAC4C  3B BD 00 01 */	addi r29, r29, 1
/* 803CAC50  3A F7 00 02 */	addi r23, r23, 2
/* 803CAC54  80 05 00 00 */	lwz r0, 0(r5)
/* 803CAC58  7C 19 C1 2E */	stwx r0, r25, r24
/* 803CAC5C  3B 18 00 04 */	addi r24, r24, 4
lbl_803CAC60:
/* 803CAC60  38 63 00 04 */	addi r3, r3, 4
/* 803CAC64  42 00 FF 9C */	bdnz lbl_803CAC00
/* 803CAC68  7F A3 EB 78 */	mr r3, r29
/* 803CAC6C  39 61 00 50 */	addi r11, r1, 0x50
/* 803CAC70  4B CD 02 99 */	bl func_8009AF08
/* 803CAC74  80 01 00 54 */	lwz r0, 0x54(r1)
/* 803CAC78  7C 08 03 A6 */	mtlr r0
/* 803CAC7C  38 21 00 50 */	addi r1, r1, 0x50
/* 803CAC80  4E 80 00 20 */	blr 
