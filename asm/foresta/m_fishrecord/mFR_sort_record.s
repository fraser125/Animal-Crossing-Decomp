lbl_803AC080:
/* 803AC080  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 803AC084  7C 08 02 A6 */	mflr r0
/* 803AC088  90 01 00 34 */	stw r0, 0x34(r1)
/* 803AC08C  39 61 00 30 */	addi r11, r1, 0x30
/* 803AC090  4B CE EE 29 */	bl func_8009AEB8
/* 803AC094  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803AC098  3B 00 00 00 */	li r24, 0
/* 803AC09C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803AC0A0  3B E0 00 00 */	li r31, 0
/* 803AC0A4  3E C3 00 02 */	addis r22, r3, 2
/* 803AC0A8  3A D6 3E 68 */	addi r22, r22, 0x3e68
lbl_803AC0AC:
/* 803AC0AC  7F 56 FA 14 */	add r26, r22, r31
/* 803AC0B0  3A F8 00 01 */	addi r23, r24, 1
/* 803AC0B4  3B BA 00 17 */	addi r29, r26, 0x17
/* 803AC0B8  3B 9A 00 19 */	addi r28, r26, 0x19
/* 803AC0BC  3B 7A 00 1A */	addi r27, r26, 0x1a
/* 803AC0C0  56 FE 28 34 */	slwi r30, r23, 5
/* 803AC0C4  48 00 00 50 */	b lbl_803AC114
lbl_803AC0C8:
/* 803AC0C8  7F 36 F2 14 */	add r25, r22, r30
/* 803AC0CC  80 19 00 1C */	lwz r0, 0x1c(r25)
/* 803AC0D0  2C 00 00 00 */	cmpwi r0, 0
/* 803AC0D4  41 82 00 38 */	beq lbl_803AC10C
/* 803AC0D8  41 82 00 28 */	beq lbl_803AC100
/* 803AC0DC  A0 7B 00 00 */	lhz r3, 0(r27)
/* 803AC0E0  88 9C 00 00 */	lbz r4, 0(r28)
/* 803AC0E4  88 BD 00 00 */	lbz r5, 0(r29)
/* 803AC0E8  A0 D9 00 1A */	lhz r6, 0x1a(r25)
/* 803AC0EC  88 F9 00 19 */	lbz r7, 0x19(r25)
/* 803AC0F0  89 19 00 17 */	lbz r8, 0x17(r25)
/* 803AC0F4  48 05 A6 F9 */	bl lbRTC_IsEqualDate
/* 803AC0F8  2C 03 00 01 */	cmpwi r3, 1
/* 803AC0FC  40 82 00 10 */	bne lbl_803AC10C
lbl_803AC100:
/* 803AC100  7F 43 D3 78 */	mr r3, r26
/* 803AC104  7F 24 CB 78 */	mr r4, r25
/* 803AC108  4B FF FF 19 */	bl mFR_swap_record
lbl_803AC10C:
/* 803AC10C  3A F7 00 01 */	addi r23, r23, 1
/* 803AC110  3B DE 00 20 */	addi r30, r30, 0x20
lbl_803AC114:
/* 803AC114  2C 17 00 05 */	cmpwi r23, 5
/* 803AC118  41 80 FF B0 */	blt lbl_803AC0C8
/* 803AC11C  3B 18 00 01 */	addi r24, r24, 1
/* 803AC120  3B FF 00 20 */	addi r31, r31, 0x20
/* 803AC124  2C 18 00 04 */	cmpwi r24, 4
/* 803AC128  41 80 FF 84 */	blt lbl_803AC0AC
/* 803AC12C  39 61 00 30 */	addi r11, r1, 0x30
/* 803AC130  4B CE ED D5 */	bl func_8009AF04
/* 803AC134  80 01 00 34 */	lwz r0, 0x34(r1)
/* 803AC138  7C 08 03 A6 */	mtlr r0
/* 803AC13C  38 21 00 30 */	addi r1, r1, 0x30
/* 803AC140  4E 80 00 20 */	blr 
