lbl_8049AD0C:
/* 8049AD0C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8049AD10  7C 08 02 A6 */	mflr r0
/* 8049AD14  90 01 00 44 */	stw r0, 0x44(r1)
/* 8049AD18  39 61 00 40 */	addi r11, r1, 0x40
/* 8049AD1C  4B C0 01 A9 */	bl func_8009AEC4
/* 8049AD20  3C C0 81 14 */	lis r6, common_data@ha /* 0x81138538@ha */
/* 8049AD24  7C 7A 1B 78 */	mr r26, r3
/* 8049AD28  38 66 85 38 */	addi r3, r6, common_data@l /* 0x81138538@l */
/* 8049AD2C  7C 9B 23 78 */	mr r27, r4
/* 8049AD30  3C 83 00 02 */	addis r4, r3, 2
/* 8049AD34  7C BC 2B 78 */	mr r28, r5
/* 8049AD38  88 64 61 25 */	lbz r3, 0x6125(r4)
/* 8049AD3C  8B A4 41 74 */	lbz r29, 0x4174(r4)
/* 8049AD40  3B E3 FF FF */	addi r31, r3, -1
/* 8049AD44  38 7F FF F5 */	addi r3, r31, -11
/* 8049AD48  7C 9F E8 51 */	subf. r4, r31, r29
/* 8049AD4C  38 1F 00 01 */	addi r0, r31, 1
/* 8049AD50  30 63 FF FF */	addic r3, r3, -1
/* 8049AD54  7C 63 19 10 */	subfe r3, r3, r3
/* 8049AD58  7C 1E 18 78 */	andc r30, r0, r3
/* 8049AD5C  7C 04 00 D0 */	neg r0, r4
/* 8049AD60  41 80 00 08 */	blt lbl_8049AD68
/* 8049AD64  7C 80 23 78 */	mr r0, r4
lbl_8049AD68:
/* 8049AD68  2C 00 00 01 */	cmpwi r0, 1
/* 8049AD6C  40 81 00 34 */	ble lbl_8049ADA0
/* 8049AD70  2C 1D 00 00 */	cmpwi r29, 0
/* 8049AD74  41 82 00 2C */	beq lbl_8049ADA0
/* 8049AD78  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8049AD7C  41 82 00 24 */	beq lbl_8049ADA0
/* 8049AD80  7F C3 F3 78 */	mr r3, r30
/* 8049AD84  4B FF FF 31 */	bl aSOI_ins_renew_term_info
/* 8049AD88  93 FA 00 00 */	stw r31, 0(r26)
/* 8049AD8C  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80644D20@ha */
/* 8049AD90  C0 03 4D 20 */	lfs f0, lit_555@l(r3)  /* 0x80644D20@l */
/* 8049AD94  93 FB 00 00 */	stw r31, 0(r27)
/* 8049AD98  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8049AD9C  48 00 01 0C */	b lbl_8049AEA8
lbl_8049ADA0:
/* 8049ADA0  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 8049ADA4  38 61 00 10 */	addi r3, r1, 0x10
/* 8049ADA8  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 8049ADAC  3F 24 00 02 */	addis r25, r4, 2
/* 8049ADB0  3B 39 61 20 */	addi r25, r25, 0x6120
/* 8049ADB4  7F 24 CB 78 */	mr r4, r25
/* 8049ADB8  4B F6 C4 7D */	bl lbRTC_TimeCopy
/* 8049ADBC  38 00 00 00 */	li r0, 0
/* 8049ADC0  38 7D 00 01 */	addi r3, r29, 1
/* 8049ADC4  7C 1D F8 00 */	cmpw r29, r31
/* 8049ADC8  98 61 00 15 */	stb r3, 0x15(r1)
/* 8049ADCC  98 01 00 12 */	stb r0, 0x12(r1)
/* 8049ADD0  98 01 00 11 */	stb r0, 0x11(r1)
/* 8049ADD4  98 01 00 10 */	stb r0, 0x10(r1)
/* 8049ADD8  41 82 00 18 */	beq lbl_8049ADF0
/* 8049ADDC  2C 1F 00 0B */	cmpwi r31, 0xb
/* 8049ADE0  40 82 00 10 */	bne lbl_8049ADF0
/* 8049ADE4  A0 61 00 16 */	lhz r3, 0x16(r1)
/* 8049ADE8  38 03 00 01 */	addi r0, r3, 1
/* 8049ADEC  B0 01 00 16 */	sth r0, 0x16(r1)
lbl_8049ADF0:
/* 8049ADF0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049ADF4  38 00 00 01 */	li r0, 1
/* 8049ADF8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049ADFC  98 01 00 13 */	stb r0, 0x13(r1)
/* 8049AE00  3C 83 00 02 */	addis r4, r3, 2
/* 8049AE04  38 61 00 10 */	addi r3, r1, 0x10
/* 8049AE08  88 84 41 75 */	lbz r4, 0x4175(r4)
/* 8049AE0C  4B F6 C1 B1 */	bl lbRTC_Sub_DD
/* 8049AE10  38 61 00 08 */	addi r3, r1, 8
/* 8049AE14  38 81 00 10 */	addi r4, r1, 0x10
/* 8049AE18  4B F6 C4 1D */	bl lbRTC_TimeCopy
/* 8049AE1C  38 61 00 08 */	addi r3, r1, 8
/* 8049AE20  38 80 00 05 */	li r4, 5
/* 8049AE24  4B F6 BF 01 */	bl lbRTC_Add_DD
/* 8049AE28  38 61 00 08 */	addi r3, r1, 8
/* 8049AE2C  4B F6 BB 95 */	bl lbRTC_IsOverRTC
/* 8049AE30  2C 03 00 01 */	cmpwi r3, 1
/* 8049AE34  40 82 00 24 */	bne lbl_8049AE58
/* 8049AE38  7F C3 F3 78 */	mr r3, r30
/* 8049AE3C  4B FF FE 79 */	bl aSOI_ins_renew_term_info
/* 8049AE40  93 FA 00 00 */	stw r31, 0(r26)
/* 8049AE44  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80644D20@ha */
/* 8049AE48  C0 03 4D 20 */	lfs f0, lit_555@l(r3)  /* 0x80644D20@l */
/* 8049AE4C  93 FB 00 00 */	stw r31, 0(r27)
/* 8049AE50  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8049AE54  48 00 00 54 */	b lbl_8049AEA8
lbl_8049AE58:
/* 8049AE58  38 61 00 10 */	addi r3, r1, 0x10
/* 8049AE5C  4B F6 BB 65 */	bl lbRTC_IsOverRTC
/* 8049AE60  2C 03 00 01 */	cmpwi r3, 1
/* 8049AE64  40 82 00 30 */	bne lbl_8049AE94
/* 8049AE68  7F 24 CB 78 */	mr r4, r25
/* 8049AE6C  38 61 00 10 */	addi r3, r1, 0x10
/* 8049AE70  4B F6 BC 2D */	bl lbRTC_GetIntervalDays
/* 8049AE74  93 FA 00 00 */	stw r31, 0(r26)
/* 8049AE78  3C 80 80 69 */	lis r4, rate@ha /* 0x8068E1B4@ha */
/* 8049AE7C  54 60 10 3A */	slwi r0, r3, 2
/* 8049AE80  93 BB 00 00 */	stw r29, 0(r27)
/* 8049AE84  38 64 E1 B4 */	addi r3, r4, rate@l /* 0x8068E1B4@l */
/* 8049AE88  7C 03 04 2E */	lfsx f0, r3, r0
/* 8049AE8C  D0 1C 00 00 */	stfs f0, 0(r28)
/* 8049AE90  48 00 00 18 */	b lbl_8049AEA8
lbl_8049AE94:
/* 8049AE94  93 FA 00 00 */	stw r31, 0(r26)
/* 8049AE98  3C 60 80 64 */	lis r3, lit_555@ha /* 0x80644D20@ha */
/* 8049AE9C  C0 03 4D 20 */	lfs f0, lit_555@l(r3)  /* 0x80644D20@l */
/* 8049AEA0  93 FB 00 00 */	stw r31, 0(r27)
/* 8049AEA4  D0 1C 00 00 */	stfs f0, 0(r28)
lbl_8049AEA8:
/* 8049AEA8  39 61 00 40 */	addi r11, r1, 0x40
/* 8049AEAC  4B C0 00 65 */	bl func_8009AF10
/* 8049AEB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8049AEB4  7C 08 03 A6 */	mtlr r0
/* 8049AEB8  38 21 00 40 */	addi r1, r1, 0x40
/* 8049AEBC  4E 80 00 20 */	blr 
