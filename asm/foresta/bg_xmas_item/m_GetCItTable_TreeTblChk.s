lbl_804CAE28:
/* 804CAE28  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804CAE2C  7C 08 02 A6 */	mflr r0
/* 804CAE30  90 01 00 94 */	stw r0, 0x94(r1)
/* 804CAE34  39 61 00 90 */	addi r11, r1, 0x90
/* 804CAE38  4B BD 00 89 */	bl func_8009AEC0
/* 804CAE3C  7C 9E 23 78 */	mr r30, r4
/* 804CAE40  38 00 00 04 */	li r0, 4
/* 804CAE44  80 84 00 00 */	lwz r4, 0(r4)
/* 804CAE48  7C 7D 1B 78 */	mr r29, r3
/* 804CAE4C  39 40 00 00 */	li r10, 0
/* 804CAE50  38 60 00 00 */	li r3, 0
/* 804CAE54  90 81 00 24 */	stw r4, 0x24(r1)
/* 804CAE58  38 80 00 00 */	li r4, 0
/* 804CAE5C  38 C0 FF FF */	li r6, -1
/* 804CAE60  7C 09 03 A6 */	mtctr r0
lbl_804CAE64:
/* 804CAE64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804CAE68  7C 0A 00 00 */	cmpw r10, r0
/* 804CAE6C  40 80 00 2C */	bge lbl_804CAE98
/* 804CAE70  7D 1E 22 14 */	add r8, r30, r4
/* 804CAE74  39 21 00 24 */	addi r9, r1, 0x24
/* 804CAE78  88 E8 00 04 */	lbz r7, 4(r8)
/* 804CAE7C  7D 29 1A 14 */	add r9, r9, r3
/* 804CAE80  88 08 00 05 */	lbz r0, 5(r8)
/* 804CAE84  7C E7 07 74 */	extsb r7, r7
/* 804CAE88  90 E9 00 04 */	stw r7, 4(r9)
/* 804CAE8C  7C 00 07 74 */	extsb r0, r0
/* 804CAE90  90 09 00 08 */	stw r0, 8(r9)
/* 804CAE94  48 00 00 14 */	b lbl_804CAEA8
lbl_804CAE98:
/* 804CAE98  38 E1 00 24 */	addi r7, r1, 0x24
/* 804CAE9C  7C E7 1A 14 */	add r7, r7, r3
/* 804CAEA0  90 C7 00 04 */	stw r6, 4(r7)
/* 804CAEA4  90 C7 00 08 */	stw r6, 8(r7)
lbl_804CAEA8:
/* 804CAEA8  39 4A 00 01 */	addi r10, r10, 1
/* 804CAEAC  38 63 00 08 */	addi r3, r3, 8
/* 804CAEB0  38 84 00 10 */	addi r4, r4, 0x10
/* 804CAEB4  42 00 FF B0 */	bdnz lbl_804CAE64
/* 804CAEB8  80 85 00 00 */	lwz r4, 0(r5)
/* 804CAEBC  3C 60 80 6A */	lis r3, lit_2298@ha /* 0x8069BBCC@ha */
/* 804CAEC0  81 05 00 04 */	lwz r8, 4(r5)
/* 804CAEC4  38 03 BB CC */	addi r0, r3, lit_2298@l /* 0x8069BBCC@l */
/* 804CAEC8  80 E5 00 08 */	lwz r7, 8(r5)
/* 804CAECC  7F C3 F3 78 */	mr r3, r30
/* 804CAED0  90 81 00 08 */	stw r4, 8(r1)
/* 804CAED4  7C 05 03 78 */	mr r5, r0
/* 804CAED8  38 81 00 08 */	addi r4, r1, 8
/* 804CAEDC  38 C0 12 F8 */	li r6, 0x12f8
/* 804CAEE0  91 01 00 0C */	stw r8, 0xc(r1)
/* 804CAEE4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804CAEE8  4B ED CE B1 */	bl mFI_GetItemTable
/* 804CAEEC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804CAEF0  80 7E 00 00 */	lwz r3, 0(r30)
/* 804CAEF4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804CAEF8  38 00 00 04 */	li r0, 4
/* 804CAEFC  3C 84 00 03 */	addis r4, r4, 3
/* 804CAF00  90 61 00 48 */	stw r3, 0x48(r1)
/* 804CAF04  8B E4 85 90 */	lbz r31, -0x7a70(r4)
/* 804CAF08  39 20 00 00 */	li r9, 0
/* 804CAF0C  38 60 00 00 */	li r3, 0
/* 804CAF10  38 80 00 00 */	li r4, 0
/* 804CAF14  38 A0 FF FF */	li r5, -1
/* 804CAF18  7C 09 03 A6 */	mtctr r0
lbl_804CAF1C:
/* 804CAF1C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804CAF20  7C 09 00 00 */	cmpw r9, r0
/* 804CAF24  40 80 00 2C */	bge lbl_804CAF50
/* 804CAF28  7C FE 22 14 */	add r7, r30, r4
/* 804CAF2C  39 01 00 24 */	addi r8, r1, 0x24
/* 804CAF30  88 C7 00 04 */	lbz r6, 4(r7)
/* 804CAF34  7D 08 1A 14 */	add r8, r8, r3
/* 804CAF38  88 07 00 05 */	lbz r0, 5(r7)
/* 804CAF3C  7C C6 07 74 */	extsb r6, r6
/* 804CAF40  90 C8 00 28 */	stw r6, 0x28(r8)
/* 804CAF44  7C 00 07 74 */	extsb r0, r0
/* 804CAF48  90 08 00 2C */	stw r0, 0x2c(r8)
/* 804CAF4C  48 00 00 14 */	b lbl_804CAF60
lbl_804CAF50:
/* 804CAF50  38 C1 00 24 */	addi r6, r1, 0x24
/* 804CAF54  7C C6 1A 14 */	add r6, r6, r3
/* 804CAF58  90 A6 00 28 */	stw r5, 0x28(r6)
/* 804CAF5C  90 A6 00 2C */	stw r5, 0x2c(r6)
lbl_804CAF60:
/* 804CAF60  39 29 00 01 */	addi r9, r9, 1
/* 804CAF64  38 63 00 08 */	addi r3, r3, 8
/* 804CAF68  38 84 00 10 */	addi r4, r4, 0x10
/* 804CAF6C  42 00 FF B0 */	bdnz lbl_804CAF1C
/* 804CAF70  38 00 00 04 */	li r0, 4
/* 804CAF74  38 81 00 14 */	addi r4, r1, 0x14
/* 804CAF78  39 20 00 00 */	li r9, 0
/* 804CAF7C  38 A0 00 00 */	li r5, 0
/* 804CAF80  38 60 00 00 */	li r3, 0
/* 804CAF84  7C 09 03 A6 */	mtctr r0
lbl_804CAF88:
/* 804CAF88  7C A4 19 2E */	stwx r5, r4, r3
/* 804CAF8C  38 A5 00 01 */	addi r5, r5, 1
/* 804CAF90  38 63 00 04 */	addi r3, r3, 4
/* 804CAF94  42 00 FF F4 */	bdnz lbl_804CAF88
/* 804CAF98  39 00 00 00 */	li r8, 0
/* 804CAF9C  38 60 00 00 */	li r3, 0
lbl_804CAFA0:
/* 804CAFA0  38 C1 00 24 */	addi r6, r1, 0x24
/* 804CAFA4  7C C6 1A 14 */	add r6, r6, r3
/* 804CAFA8  80 06 00 04 */	lwz r0, 4(r6)
/* 804CAFAC  2C 00 FF FF */	cmpwi r0, -1
/* 804CAFB0  41 82 00 6C */	beq lbl_804CB01C
/* 804CAFB4  38 00 00 04 */	li r0, 4
/* 804CAFB8  39 40 00 00 */	li r10, 0
/* 804CAFBC  38 80 00 00 */	li r4, 0
/* 804CAFC0  7C 09 03 A6 */	mtctr r0
lbl_804CAFC4:
/* 804CAFC4  7C 08 50 00 */	cmpw r8, r10
/* 804CAFC8  41 82 00 48 */	beq lbl_804CB010
/* 804CAFCC  38 E1 00 24 */	addi r7, r1, 0x24
/* 804CAFD0  7C E7 22 14 */	add r7, r7, r4
/* 804CAFD4  80 A7 00 28 */	lwz r5, 0x28(r7)
/* 804CAFD8  2C 05 FF FF */	cmpwi r5, -1
/* 804CAFDC  41 82 00 34 */	beq lbl_804CB010
/* 804CAFE0  80 06 00 04 */	lwz r0, 4(r6)
/* 804CAFE4  7C 00 28 00 */	cmpw r0, r5
/* 804CAFE8  40 82 00 28 */	bne lbl_804CB010
/* 804CAFEC  80 A6 00 08 */	lwz r5, 8(r6)
/* 804CAFF0  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 804CAFF4  7C 05 00 00 */	cmpw r5, r0
/* 804CAFF8  40 82 00 18 */	bne lbl_804CB010
/* 804CAFFC  55 40 10 3A */	slwi r0, r10, 2
/* 804CB000  38 81 00 14 */	addi r4, r1, 0x14
/* 804CB004  7D 04 01 2E */	stwx r8, r4, r0
/* 804CB008  39 20 00 01 */	li r9, 1
/* 804CB00C  48 00 00 10 */	b lbl_804CB01C
lbl_804CB010:
/* 804CB010  39 4A 00 01 */	addi r10, r10, 1
/* 804CB014  38 84 00 08 */	addi r4, r4, 8
/* 804CB018  42 00 FF AC */	bdnz lbl_804CAFC4
lbl_804CB01C:
/* 804CB01C  39 08 00 01 */	addi r8, r8, 1
/* 804CB020  38 63 00 08 */	addi r3, r3, 8
/* 804CB024  2C 08 00 04 */	cmpwi r8, 4
/* 804CB028  41 80 FF 78 */	blt lbl_804CAFA0
/* 804CB02C  2C 09 00 00 */	cmpwi r9, 0
/* 804CB030  41 82 00 78 */	beq lbl_804CB0A8
/* 804CB034  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811D0440@ha */
/* 804CB038  3B 41 00 14 */	addi r26, r1, 0x14
/* 804CB03C  3B 23 04 40 */	addi r25, r3, tmp_info_tbl@l /* 0x811D0440@l */
/* 804CB040  3B 00 00 00 */	li r24, 0
/* 804CB044  3B 80 00 00 */	li r28, 0
/* 804CB048  3B 60 00 00 */	li r27, 0
lbl_804CB04C:
/* 804CB04C  7C 1A E0 2E */	lwzx r0, r26, r28
/* 804CB050  7C 79 DA 14 */	add r3, r25, r27
/* 804CB054  54 04 40 2E */	slwi r4, r0, 8
/* 804CB058  38 84 00 04 */	addi r4, r4, 4
/* 804CB05C  7C 9D 22 14 */	add r4, r29, r4
/* 804CB060  4B FF FC F9 */	bl bIT_common_info_tbl_copy
/* 804CB064  3B 18 00 01 */	addi r24, r24, 1
/* 804CB068  3B 7B 01 00 */	addi r27, r27, 0x100
/* 804CB06C  2C 18 00 04 */	cmpwi r24, 4
/* 804CB070  3B 9C 00 04 */	addi r28, r28, 4
/* 804CB074  41 80 FF D8 */	blt lbl_804CB04C
/* 804CB078  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811D0440@ha */
/* 804CB07C  3B 20 00 00 */	li r25, 0
/* 804CB080  3B 63 04 40 */	addi r27, r3, tmp_info_tbl@l /* 0x811D0440@l */
/* 804CB084  3B 80 00 00 */	li r28, 0
lbl_804CB088:
/* 804CB088  38 7C 00 04 */	addi r3, r28, 4
/* 804CB08C  7C 9B E2 14 */	add r4, r27, r28
/* 804CB090  7C 7D 1A 14 */	add r3, r29, r3
/* 804CB094  4B FF FC C5 */	bl bIT_common_info_tbl_copy
/* 804CB098  3B 39 00 01 */	addi r25, r25, 1
/* 804CB09C  3B 9C 01 00 */	addi r28, r28, 0x100
/* 804CB0A0  2C 19 00 04 */	cmpwi r25, 4
/* 804CB0A4  41 80 FF E4 */	blt lbl_804CB088
lbl_804CB0A8:
/* 804CB0A8  3B 1E 00 04 */	addi r24, r30, 4
/* 804CB0AC  3B BD 00 04 */	addi r29, r29, 4
/* 804CB0B0  3B 20 00 00 */	li r25, 0
/* 804CB0B4  3B 60 00 01 */	li r27, 1
/* 804CB0B8  48 00 00 54 */	b lbl_804CB10C
lbl_804CB0BC:
/* 804CB0BC  7F 60 C8 30 */	slw r0, r27, r25
/* 804CB0C0  7F E0 00 39 */	and. r0, r31, r0
/* 804CB0C4  41 82 00 3C */	beq lbl_804CB100
/* 804CB0C8  8B 58 00 00 */	lbz r26, 0(r24)
/* 804CB0CC  7F A5 EB 78 */	mr r5, r29
/* 804CB0D0  8B 98 00 01 */	lbz r28, 1(r24)
/* 804CB0D4  7F 5A 07 74 */	extsb r26, r26
/* 804CB0D8  7F 9C 07 74 */	extsb r28, r28
/* 804CB0DC  7F 43 D3 78 */	mr r3, r26
/* 804CB0E0  7F 84 E3 78 */	mr r4, r28
/* 804CB0E4  4B FF FC 95 */	bl bIT_common_clear_treeatr
/* 804CB0E8  7F 43 D3 78 */	mr r3, r26
/* 804CB0EC  7F 84 E3 78 */	mr r4, r28
/* 804CB0F0  4B ED E5 31 */	bl mFI_ClearHoleBlock
/* 804CB0F4  7F 43 D3 78 */	mr r3, r26
/* 804CB0F8  7F 84 E3 78 */	mr r4, r28
/* 804CB0FC  4B ED E5 49 */	bl mFI_ClearBeecomb
lbl_804CB100:
/* 804CB100  3B 18 00 10 */	addi r24, r24, 0x10
/* 804CB104  3B BD 01 00 */	addi r29, r29, 0x100
/* 804CB108  3B 39 00 01 */	addi r25, r25, 1
lbl_804CB10C:
/* 804CB10C  80 1E 00 00 */	lwz r0, 0(r30)
/* 804CB110  7C 19 00 00 */	cmpw r25, r0
/* 804CB114  41 80 FF A8 */	blt lbl_804CB0BC
/* 804CB118  39 61 00 90 */	addi r11, r1, 0x90
/* 804CB11C  4B BC FD F1 */	bl func_8009AF0C
/* 804CB120  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804CB124  7C 08 03 A6 */	mtlr r0
/* 804CB128  38 21 00 90 */	addi r1, r1, 0x90
/* 804CB12C  4E 80 00 20 */	blr 
