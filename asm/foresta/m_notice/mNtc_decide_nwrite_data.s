lbl_803CAD64:
/* 803CAD64  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 803CAD68  7C 08 02 A6 */	mflr r0
/* 803CAD6C  90 01 00 44 */	stw r0, 0x44(r1)
/* 803CAD70  39 61 00 40 */	addi r11, r1, 0x40
/* 803CAD74  4B CD 01 3D */	bl func_8009AEB0
/* 803CAD78  A3 81 00 4A */	lhz r28, 0x4a(r1)
/* 803CAD7C  7C 74 1B 78 */	mr r20, r3
/* 803CAD80  A3 A1 00 4E */	lhz r29, 0x4e(r1)
/* 803CAD84  7C 95 23 78 */	mr r21, r4
/* 803CAD88  83 C1 00 50 */	lwz r30, 0x50(r1)
/* 803CAD8C  7C B6 2B 78 */	mr r22, r5
/* 803CAD90  83 E1 00 54 */	lwz r31, 0x54(r1)
/* 803CAD94  7C D7 33 78 */	mr r23, r6
/* 803CAD98  7C F8 3B 78 */	mr r24, r7
/* 803CAD9C  7D 19 43 78 */	mr r25, r8
/* 803CADA0  7D 3A 4B 78 */	mr r26, r9
/* 803CADA4  7D 5B 53 78 */	mr r27, r10
/* 803CADA8  48 00 01 34 */	b lbl_803CAEDC
lbl_803CADAC:
/* 803CADAC  80 9B 00 00 */	lwz r4, 0(r27)
/* 803CADB0  2C 04 00 00 */	cmpwi r4, 0
/* 803CADB4  40 81 00 B0 */	ble lbl_803CAE64
/* 803CADB8  54 83 10 3A */	slwi r3, r4, 2
/* 803CADBC  38 03 FF FC */	addi r0, r3, -4
/* 803CADC0  7C BE 02 2E */	lhzx r5, r30, r0
/* 803CADC4  7C 05 E8 40 */	cmplw r5, r29
/* 803CADC8  41 81 00 20 */	bgt lbl_803CADE8
/* 803CADCC  7C 1D 28 40 */	cmplw r29, r5
/* 803CADD0  40 82 00 94 */	bne lbl_803CAE64
/* 803CADD4  54 83 08 3C */	slwi r3, r4, 1
/* 803CADD8  38 03 FF FE */	addi r0, r3, -2
/* 803CADDC  7C 1F 02 2E */	lhzx r0, r31, r0
/* 803CADE0  7C 00 E0 40 */	cmplw r0, r28
/* 803CADE4  41 80 00 80 */	blt lbl_803CAE64
lbl_803CADE8:
/* 803CADE8  A0 15 00 00 */	lhz r0, 0(r21)
/* 803CADEC  7C 05 00 40 */	cmplw r5, r0
/* 803CADF0  41 81 00 38 */	bgt lbl_803CAE28
/* 803CADF4  7C 00 28 40 */	cmplw r0, r5
/* 803CADF8  40 82 00 6C */	bne lbl_803CAE64
/* 803CADFC  88 16 00 00 */	lbz r0, 0(r22)
/* 803CAE00  3C 60 81 17 */	lis r3, mNtc_auto_nwrite_data@ha /* 0x8116B2B8@ha */
/* 803CAE04  54 85 08 3C */	slwi r5, r4, 1
/* 803CAE08  54 04 10 3A */	slwi r4, r0, 2
/* 803CAE0C  38 03 B2 B8 */	addi r0, r3, mNtc_auto_nwrite_data@l /* 0x8116B2B8@l */
/* 803CAE10  38 A5 FF FE */	addi r5, r5, -2
/* 803CAE14  7C 60 22 14 */	add r3, r0, r4
/* 803CAE18  7C 9F 2A 2E */	lhzx r4, r31, r5
/* 803CAE1C  A0 03 00 02 */	lhz r0, 2(r3)
/* 803CAE20  7C 04 00 40 */	cmplw r4, r0
/* 803CAE24  41 80 00 40 */	blt lbl_803CAE64
lbl_803CAE28:
/* 803CAE28  80 B4 00 00 */	lwz r5, 0(r20)
/* 803CAE2C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 803CAE30  38 83 FF FF */	addi r4, r3, 0xFFFF /* 0x0000FFFF@l */
/* 803CAE34  38 60 00 FF */	li r3, 0xff
/* 803CAE38  38 05 FF FF */	addi r0, r5, -1
/* 803CAE3C  90 14 00 00 */	stw r0, 0(r20)
/* 803CAE40  80 BB 00 00 */	lwz r5, 0(r27)
/* 803CAE44  38 05 FF FF */	addi r0, r5, -1
/* 803CAE48  90 1B 00 00 */	stw r0, 0(r27)
/* 803CAE4C  80 14 00 00 */	lwz r0, 0(r20)
/* 803CAE50  54 00 08 3C */	slwi r0, r0, 1
/* 803CAE54  7C 99 03 2E */	sthx r4, r25, r0
/* 803CAE58  80 14 00 00 */	lwz r0, 0(r20)
/* 803CAE5C  7C 7A 01 AE */	stbx r3, r26, r0
/* 803CAE60  48 00 00 7C */	b lbl_803CAEDC
lbl_803CAE64:
/* 803CAE64  A0 75 00 00 */	lhz r3, 0(r21)
/* 803CAE68  56 E0 04 3E */	clrlwi r0, r23, 0x10
/* 803CAE6C  7C 03 00 40 */	cmplw r3, r0
/* 803CAE70  41 81 00 18 */	bgt lbl_803CAE88
/* 803CAE74  40 82 00 74 */	bne lbl_803CAEE8
/* 803CAE78  88 76 00 00 */	lbz r3, 0(r22)
/* 803CAE7C  57 00 06 3E */	clrlwi r0, r24, 0x18
/* 803CAE80  7C 03 00 40 */	cmplw r3, r0
/* 803CAE84  40 81 00 64 */	ble lbl_803CAEE8
lbl_803CAE88:
/* 803CAE88  80 74 00 00 */	lwz r3, 0(r20)
/* 803CAE8C  38 03 FF FF */	addi r0, r3, -1
/* 803CAE90  90 14 00 00 */	stw r0, 0(r20)
/* 803CAE94  80 14 00 00 */	lwz r0, 0(r20)
/* 803CAE98  A0 75 00 00 */	lhz r3, 0(r21)
/* 803CAE9C  54 00 08 3C */	slwi r0, r0, 1
/* 803CAEA0  7C 79 03 2E */	sthx r3, r25, r0
/* 803CAEA4  88 76 00 00 */	lbz r3, 0(r22)
/* 803CAEA8  80 14 00 00 */	lwz r0, 0(r20)
/* 803CAEAC  7C 7A 01 AE */	stbx r3, r26, r0
/* 803CAEB0  88 76 00 00 */	lbz r3, 0(r22)
/* 803CAEB4  28 03 00 00 */	cmplwi r3, 0
/* 803CAEB8  40 82 00 1C */	bne lbl_803CAED4
/* 803CAEBC  4B FF F1 89 */	bl mNtc_get_auto_nwrite_data_last_idx
/* 803CAEC0  98 76 00 00 */	stb r3, 0(r22)
/* 803CAEC4  A0 75 00 00 */	lhz r3, 0(r21)
/* 803CAEC8  38 03 FF FF */	addi r0, r3, -1
/* 803CAECC  B0 15 00 00 */	sth r0, 0(r21)
/* 803CAED0  48 00 00 0C */	b lbl_803CAEDC
lbl_803CAED4:
/* 803CAED4  38 03 FF FF */	addi r0, r3, -1
/* 803CAED8  98 16 00 00 */	stb r0, 0(r22)
lbl_803CAEDC:
/* 803CAEDC  80 14 00 00 */	lwz r0, 0(r20)
/* 803CAEE0  2C 00 00 00 */	cmpwi r0, 0
/* 803CAEE4  40 82 FE C8 */	bne lbl_803CADAC
lbl_803CAEE8:
/* 803CAEE8  39 61 00 40 */	addi r11, r1, 0x40
/* 803CAEEC  4B CD 00 11 */	bl func_8009AEFC
/* 803CAEF0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 803CAEF4  7C 08 03 A6 */	mtlr r0
/* 803CAEF8  38 21 00 40 */	addi r1, r1, 0x40
/* 803CAEFC  4E 80 00 20 */	blr 
