lbl_8047D018:
/* 8047D018  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 8047D01C  7C 08 02 A6 */	mflr r0
/* 8047D020  90 01 00 54 */	stw r0, 0x54(r1)
/* 8047D024  39 61 00 50 */	addi r11, r1, 0x50
/* 8047D028  4B C1 DE 91 */	bl func_8009AEB8
/* 8047D02C  7C 98 23 78 */	mr r24, r4
/* 8047D030  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047D034  80 18 1D F8 */	lwz r0, 0x1df8(r24)
/* 8047D038  7C 7D 1B 78 */	mr r29, r3
/* 8047D03C  87 84 DF E8 */	lwzu r28, data_811CDFE8@l(r4)  /* 0x811CDFE8@l */
/* 8047D040  2C 00 00 00 */	cmpwi r0, 0
/* 8047D044  83 64 00 04 */	lwz r27, 4(r4)
/* 8047D048  40 82 01 A8 */	bne lbl_8047D1F0
/* 8047D04C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047D050  3B 40 00 00 */	li r26, 0
/* 8047D054  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047D058  3A E0 00 00 */	li r23, 0
/* 8047D05C  3F E3 00 02 */	addis r31, r3, 2
lbl_8047D060:
/* 8047D060  7F DD BA 14 */	add r30, r29, r23
/* 8047D064  88 1E 03 8C */	lbz r0, 0x38c(r30)
/* 8047D068  28 00 00 00 */	cmplwi r0, 0
/* 8047D06C  41 82 01 74 */	beq lbl_8047D1E0
/* 8047D070  A8 7E 03 9E */	lha r3, 0x39e(r30)
/* 8047D074  A8 9E 03 A0 */	lha r4, 0x3a0(r30)
/* 8047D078  7C 03 20 00 */	cmpw r3, r4
/* 8047D07C  40 82 00 A8 */	bne lbl_8047D124
/* 8047D080  A3 3E 03 8E */	lhz r25, 0x38e(r30)
/* 8047D084  A0 9E 03 94 */	lhz r4, 0x394(r30)
/* 8047D088  7F 23 CB 78 */	mr r3, r25
/* 8047D08C  4B FF D8 15 */	bl aMR_GetBirthFurniture
/* 8047D090  7C 60 1B 78 */	mr r0, r3
/* 8047D094  7F 23 CB 78 */	mr r3, r25
/* 8047D098  7C 19 03 78 */	mr r25, r0
/* 8047D09C  7F 04 C3 78 */	mr r4, r24
/* 8047D0A0  7F 25 CB 78 */	mr r5, r25
/* 8047D0A4  4B FF 51 85 */	bl aMR_GetFurnitureBank2
/* 8047D0A8  2C 03 00 00 */	cmpwi r3, 0
/* 8047D0AC  41 82 00 6C */	beq lbl_8047D118
/* 8047D0B0  80 7E 03 98 */	lwz r3, 0x398(r30)
/* 8047D0B4  2C 03 FF FF */	cmpwi r3, -1
/* 8047D0B8  41 82 00 54 */	beq lbl_8047D10C
/* 8047D0BC  38 00 00 01 */	li r0, 1
/* 8047D0C0  7F 04 C3 78 */	mr r4, r24
/* 8047D0C4  7C 1B 19 AE */	stbx r0, r27, r3
/* 8047D0C8  7F 27 CB 78 */	mr r7, r25
/* 8047D0CC  39 20 00 0C */	li r9, 0xc
/* 8047D0D0  81 1E 03 98 */	lwz r8, 0x398(r30)
/* 8047D0D4  90 01 00 08 */	stw r0, 8(r1)
/* 8047D0D8  1C 08 08 58 */	mulli r0, r8, 0x858
/* 8047D0DC  80 BE 03 A4 */	lwz r5, 0x3a4(r30)
/* 8047D0E0  80 DE 03 A8 */	lwz r6, 0x3a8(r30)
/* 8047D0E4  7C 7C 02 14 */	add r3, r28, r0
/* 8047D0E8  A9 5E 03 9C */	lha r10, 0x39c(r30)
/* 8047D0EC  4B FF 4D C9 */	bl aMR_FurnitureCt
/* 8047D0F0  80 1E 03 98 */	lwz r0, 0x398(r30)
/* 8047D0F4  7F A3 EB 78 */	mr r3, r29
/* 8047D0F8  1C 00 08 58 */	mulli r0, r0, 0x858
/* 8047D0FC  7C 9C 02 14 */	add r4, r28, r0
/* 8047D100  4B FF 3B 9D */	bl aMR_PlussWeight
/* 8047D104  4B F4 1B D9 */	bl mMkRm_ReportChangePlayerRoom
/* 8047D108  48 00 00 CC */	b lbl_8047D1D4
lbl_8047D10C:
/* 8047D10C  38 00 00 00 */	li r0, 0
/* 8047D110  98 1E 03 8C */	stb r0, 0x38c(r30)
/* 8047D114  48 00 00 C0 */	b lbl_8047D1D4
lbl_8047D118:
/* 8047D118  38 00 00 00 */	li r0, 0
/* 8047D11C  98 1E 03 8C */	stb r0, 0x38c(r30)
/* 8047D120  48 00 00 B4 */	b lbl_8047D1D4
lbl_8047D124:
/* 8047D124  7C 60 07 35 */	extsh. r0, r3
/* 8047D128  41 81 00 10 */	bgt lbl_8047D138
/* 8047D12C  38 00 00 00 */	li r0, 0
/* 8047D130  98 1E 03 8C */	stb r0, 0x38c(r30)
/* 8047D134  48 00 00 A0 */	b lbl_8047D1D4
lbl_8047D138:
/* 8047D138  38 03 00 01 */	addi r0, r3, 1
/* 8047D13C  7C 00 20 00 */	cmpw r0, r4
/* 8047D140  40 82 00 94 */	bne lbl_8047D1D4
/* 8047D144  82 DE 03 98 */	lwz r22, 0x398(r30)
/* 8047D148  38 80 00 00 */	li r4, 0
/* 8047D14C  A0 7E 03 8E */	lhz r3, 0x38e(r30)
/* 8047D150  4B F6 A6 85 */	bl mRmTp_FtrIdx2FtrItemNo
/* 8047D154  4B FF 31 61 */	bl aMR_ItemNo2IconNo
/* 8047D158  2C 16 FF FF */	cmpwi r22, -1
/* 8047D15C  7C 79 07 34 */	extsh r25, r3
/* 8047D160  41 82 00 74 */	beq lbl_8047D1D4
/* 8047D164  3C 80 81 1D */	lis r4, data_811CDFE8@ha /* 0x811CDFE8@ha */
/* 8047D168  38 61 00 1C */	addi r3, r1, 0x1c
/* 8047D16C  38 84 DF E8 */	addi r4, r4, data_811CDFE8@l /* 0x811CDFE8@l */
/* 8047D170  1C 16 08 58 */	mulli r0, r22, 0x858
/* 8047D174  80 84 00 00 */	lwz r4, 0(r4)
/* 8047D178  7C 84 02 14 */	add r4, r4, r0
/* 8047D17C  4B FF AE A9 */	bl aMR_GetFtrShapeCenter
/* 8047D180  81 7F 60 9C */	lwz r11, 0x609c(r31)
/* 8047D184  28 0B 00 00 */	cmplwi r11, 0
/* 8047D188  41 82 00 4C */	beq lbl_8047D1D4
/* 8047D18C  80 81 00 1C */	lwz r4, 0x1c(r1)
/* 8047D190  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8047D194  80 A1 00 20 */	lwz r5, 0x20(r1)
/* 8047D198  7F 07 C3 78 */	mr r7, r24
/* 8047D19C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8047D1A0  7F 29 CB 78 */	mr r9, r25
/* 8047D1A4  90 81 00 10 */	stw r4, 0x10(r1)
/* 8047D1A8  38 81 00 10 */	addi r4, r1, 0x10
/* 8047D1AC  39 03 FF FF */	addi r8, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8047D1B0  38 60 00 50 */	li r3, 0x50
/* 8047D1B4  90 A1 00 14 */	stw r5, 0x14(r1)
/* 8047D1B8  38 A0 00 02 */	li r5, 2
/* 8047D1BC  38 C0 00 00 */	li r6, 0
/* 8047D1C0  39 40 00 00 */	li r10, 0
/* 8047D1C4  90 01 00 18 */	stw r0, 0x18(r1)
/* 8047D1C8  81 8B 00 00 */	lwz r12, 0(r11)
/* 8047D1CC  7D 89 03 A6 */	mtctr r12
/* 8047D1D0  4E 80 04 21 */	bctrl 
lbl_8047D1D4:
/* 8047D1D4  A8 7E 03 9E */	lha r3, 0x39e(r30)
/* 8047D1D8  38 03 FF FF */	addi r0, r3, -1
/* 8047D1DC  B0 1E 03 9E */	sth r0, 0x39e(r30)
lbl_8047D1E0:
/* 8047D1E0  3B 5A 00 01 */	addi r26, r26, 1
/* 8047D1E4  3A F7 00 20 */	addi r23, r23, 0x20
/* 8047D1E8  2C 1A 00 03 */	cmpwi r26, 3
/* 8047D1EC  41 80 FE 74 */	blt lbl_8047D060
lbl_8047D1F0:
/* 8047D1F0  39 61 00 50 */	addi r11, r1, 0x50
/* 8047D1F4  4B C1 DD 11 */	bl func_8009AF04
/* 8047D1F8  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8047D1FC  7C 08 03 A6 */	mtlr r0
/* 8047D200  38 21 00 50 */	addi r1, r1, 0x50
/* 8047D204  4E 80 00 20 */	blr 
