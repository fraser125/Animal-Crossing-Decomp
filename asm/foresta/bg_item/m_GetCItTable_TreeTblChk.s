lbl_804BBF18:
/* 804BBF18  94 21 FF 70 */	stwu r1, -0x90(r1)
/* 804BBF1C  7C 08 02 A6 */	mflr r0
/* 804BBF20  90 01 00 94 */	stw r0, 0x94(r1)
/* 804BBF24  39 61 00 90 */	addi r11, r1, 0x90
/* 804BBF28  4B BD EF 99 */	bl func_8009AEC0
/* 804BBF2C  7C 9E 23 78 */	mr r30, r4
/* 804BBF30  38 00 00 04 */	li r0, 4
/* 804BBF34  80 84 00 00 */	lwz r4, 0(r4)
/* 804BBF38  7C 7D 1B 78 */	mr r29, r3
/* 804BBF3C  39 40 00 00 */	li r10, 0
/* 804BBF40  38 60 00 00 */	li r3, 0
/* 804BBF44  90 81 00 24 */	stw r4, 0x24(r1)
/* 804BBF48  38 80 00 00 */	li r4, 0
/* 804BBF4C  38 C0 FF FF */	li r6, -1
/* 804BBF50  7C 09 03 A6 */	mtctr r0
lbl_804BBF54:
/* 804BBF54  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804BBF58  7C 0A 00 00 */	cmpw r10, r0
/* 804BBF5C  40 80 00 2C */	bge lbl_804BBF88
/* 804BBF60  7D 1E 22 14 */	add r8, r30, r4
/* 804BBF64  39 21 00 24 */	addi r9, r1, 0x24
/* 804BBF68  88 E8 00 04 */	lbz r7, 4(r8)
/* 804BBF6C  7D 29 1A 14 */	add r9, r9, r3
/* 804BBF70  88 08 00 05 */	lbz r0, 5(r8)
/* 804BBF74  7C E7 07 74 */	extsb r7, r7
/* 804BBF78  90 E9 00 04 */	stw r7, 4(r9)
/* 804BBF7C  7C 00 07 74 */	extsb r0, r0
/* 804BBF80  90 09 00 08 */	stw r0, 8(r9)
/* 804BBF84  48 00 00 14 */	b lbl_804BBF98
lbl_804BBF88:
/* 804BBF88  38 E1 00 24 */	addi r7, r1, 0x24
/* 804BBF8C  7C E7 1A 14 */	add r7, r7, r3
/* 804BBF90  90 C7 00 04 */	stw r6, 4(r7)
/* 804BBF94  90 C7 00 08 */	stw r6, 8(r7)
lbl_804BBF98:
/* 804BBF98  39 4A 00 01 */	addi r10, r10, 1
/* 804BBF9C  38 63 00 08 */	addi r3, r3, 8
/* 804BBFA0  38 84 00 10 */	addi r4, r4, 0x10
/* 804BBFA4  42 00 FF B0 */	bdnz lbl_804BBF54
/* 804BBFA8  80 85 00 00 */	lwz r4, 0(r5)
/* 804BBFAC  3C 60 80 69 */	lis r3, lit_2298@ha /* 0x806959FC@ha */
/* 804BBFB0  81 05 00 04 */	lwz r8, 4(r5)
/* 804BBFB4  38 03 59 FC */	addi r0, r3, lit_2298@l /* 0x806959FC@l */
/* 804BBFB8  80 E5 00 08 */	lwz r7, 8(r5)
/* 804BBFBC  7F C3 F3 78 */	mr r3, r30
/* 804BBFC0  90 81 00 08 */	stw r4, 8(r1)
/* 804BBFC4  7C 05 03 78 */	mr r5, r0
/* 804BBFC8  38 81 00 08 */	addi r4, r1, 8
/* 804BBFCC  38 C0 12 F8 */	li r6, 0x12f8
/* 804BBFD0  91 01 00 0C */	stw r8, 0xc(r1)
/* 804BBFD4  90 E1 00 10 */	stw r7, 0x10(r1)
/* 804BBFD8  4B EE BD C1 */	bl mFI_GetItemTable
/* 804BBFDC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 804BBFE0  80 7E 00 00 */	lwz r3, 0(r30)
/* 804BBFE4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 804BBFE8  38 00 00 04 */	li r0, 4
/* 804BBFEC  3C 84 00 03 */	addis r4, r4, 3
/* 804BBFF0  90 61 00 48 */	stw r3, 0x48(r1)
/* 804BBFF4  8B E4 85 90 */	lbz r31, -0x7a70(r4)
/* 804BBFF8  39 20 00 00 */	li r9, 0
/* 804BBFFC  38 60 00 00 */	li r3, 0
/* 804BC000  38 80 00 00 */	li r4, 0
/* 804BC004  38 A0 FF FF */	li r5, -1
/* 804BC008  7C 09 03 A6 */	mtctr r0
lbl_804BC00C:
/* 804BC00C  80 01 00 48 */	lwz r0, 0x48(r1)
/* 804BC010  7C 09 00 00 */	cmpw r9, r0
/* 804BC014  40 80 00 2C */	bge lbl_804BC040
/* 804BC018  7C FE 22 14 */	add r7, r30, r4
/* 804BC01C  39 01 00 24 */	addi r8, r1, 0x24
/* 804BC020  88 C7 00 04 */	lbz r6, 4(r7)
/* 804BC024  7D 08 1A 14 */	add r8, r8, r3
/* 804BC028  88 07 00 05 */	lbz r0, 5(r7)
/* 804BC02C  7C C6 07 74 */	extsb r6, r6
/* 804BC030  90 C8 00 28 */	stw r6, 0x28(r8)
/* 804BC034  7C 00 07 74 */	extsb r0, r0
/* 804BC038  90 08 00 2C */	stw r0, 0x2c(r8)
/* 804BC03C  48 00 00 14 */	b lbl_804BC050
lbl_804BC040:
/* 804BC040  38 C1 00 24 */	addi r6, r1, 0x24
/* 804BC044  7C C6 1A 14 */	add r6, r6, r3
/* 804BC048  90 A6 00 28 */	stw r5, 0x28(r6)
/* 804BC04C  90 A6 00 2C */	stw r5, 0x2c(r6)
lbl_804BC050:
/* 804BC050  39 29 00 01 */	addi r9, r9, 1
/* 804BC054  38 63 00 08 */	addi r3, r3, 8
/* 804BC058  38 84 00 10 */	addi r4, r4, 0x10
/* 804BC05C  42 00 FF B0 */	bdnz lbl_804BC00C
/* 804BC060  38 00 00 04 */	li r0, 4
/* 804BC064  38 81 00 14 */	addi r4, r1, 0x14
/* 804BC068  39 20 00 00 */	li r9, 0
/* 804BC06C  38 A0 00 00 */	li r5, 0
/* 804BC070  38 60 00 00 */	li r3, 0
/* 804BC074  7C 09 03 A6 */	mtctr r0
lbl_804BC078:
/* 804BC078  7C A4 19 2E */	stwx r5, r4, r3
/* 804BC07C  38 A5 00 01 */	addi r5, r5, 1
/* 804BC080  38 63 00 04 */	addi r3, r3, 4
/* 804BC084  42 00 FF F4 */	bdnz lbl_804BC078
/* 804BC088  39 00 00 00 */	li r8, 0
/* 804BC08C  38 60 00 00 */	li r3, 0
lbl_804BC090:
/* 804BC090  38 C1 00 24 */	addi r6, r1, 0x24
/* 804BC094  7C C6 1A 14 */	add r6, r6, r3
/* 804BC098  80 06 00 04 */	lwz r0, 4(r6)
/* 804BC09C  2C 00 FF FF */	cmpwi r0, -1
/* 804BC0A0  41 82 00 6C */	beq lbl_804BC10C
/* 804BC0A4  38 00 00 04 */	li r0, 4
/* 804BC0A8  39 40 00 00 */	li r10, 0
/* 804BC0AC  38 80 00 00 */	li r4, 0
/* 804BC0B0  7C 09 03 A6 */	mtctr r0
lbl_804BC0B4:
/* 804BC0B4  7C 08 50 00 */	cmpw r8, r10
/* 804BC0B8  41 82 00 48 */	beq lbl_804BC100
/* 804BC0BC  38 E1 00 24 */	addi r7, r1, 0x24
/* 804BC0C0  7C E7 22 14 */	add r7, r7, r4
/* 804BC0C4  80 A7 00 28 */	lwz r5, 0x28(r7)
/* 804BC0C8  2C 05 FF FF */	cmpwi r5, -1
/* 804BC0CC  41 82 00 34 */	beq lbl_804BC100
/* 804BC0D0  80 06 00 04 */	lwz r0, 4(r6)
/* 804BC0D4  7C 00 28 00 */	cmpw r0, r5
/* 804BC0D8  40 82 00 28 */	bne lbl_804BC100
/* 804BC0DC  80 A6 00 08 */	lwz r5, 8(r6)
/* 804BC0E0  80 07 00 2C */	lwz r0, 0x2c(r7)
/* 804BC0E4  7C 05 00 00 */	cmpw r5, r0
/* 804BC0E8  40 82 00 18 */	bne lbl_804BC100
/* 804BC0EC  55 40 10 3A */	slwi r0, r10, 2
/* 804BC0F0  38 81 00 14 */	addi r4, r1, 0x14
/* 804BC0F4  7D 04 01 2E */	stwx r8, r4, r0
/* 804BC0F8  39 20 00 01 */	li r9, 1
/* 804BC0FC  48 00 00 10 */	b lbl_804BC10C
lbl_804BC100:
/* 804BC100  39 4A 00 01 */	addi r10, r10, 1
/* 804BC104  38 84 00 08 */	addi r4, r4, 8
/* 804BC108  42 00 FF AC */	bdnz lbl_804BC0B4
lbl_804BC10C:
/* 804BC10C  39 08 00 01 */	addi r8, r8, 1
/* 804BC110  38 63 00 08 */	addi r3, r3, 8
/* 804BC114  2C 08 00 04 */	cmpwi r8, 4
/* 804BC118  41 80 FF 78 */	blt lbl_804BC090
/* 804BC11C  2C 09 00 00 */	cmpwi r9, 0
/* 804BC120  41 82 00 78 */	beq lbl_804BC198
/* 804BC124  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811CFB00@ha */
/* 804BC128  3B 41 00 14 */	addi r26, r1, 0x14
/* 804BC12C  3B 23 FB 00 */	addi r25, r3, tmp_info_tbl@l /* 0x811CFB00@l */
/* 804BC130  3B 00 00 00 */	li r24, 0
/* 804BC134  3B 80 00 00 */	li r28, 0
/* 804BC138  3B 60 00 00 */	li r27, 0
lbl_804BC13C:
/* 804BC13C  7C 1A E0 2E */	lwzx r0, r26, r28
/* 804BC140  7C 79 DA 14 */	add r3, r25, r27
/* 804BC144  54 04 40 2E */	slwi r4, r0, 8
/* 804BC148  38 84 00 04 */	addi r4, r4, 4
/* 804BC14C  7C 9D 22 14 */	add r4, r29, r4
/* 804BC150  4B FF FC F9 */	bl bIT_common_info_tbl_copy
/* 804BC154  3B 18 00 01 */	addi r24, r24, 1
/* 804BC158  3B 7B 01 00 */	addi r27, r27, 0x100
/* 804BC15C  2C 18 00 04 */	cmpwi r24, 4
/* 804BC160  3B 9C 00 04 */	addi r28, r28, 4
/* 804BC164  41 80 FF D8 */	blt lbl_804BC13C
/* 804BC168  3C 60 81 1D */	lis r3, tmp_info_tbl@ha /* 0x811CFB00@ha */
/* 804BC16C  3B 20 00 00 */	li r25, 0
/* 804BC170  3B 63 FB 00 */	addi r27, r3, tmp_info_tbl@l /* 0x811CFB00@l */
/* 804BC174  3B 80 00 00 */	li r28, 0
lbl_804BC178:
/* 804BC178  38 7C 00 04 */	addi r3, r28, 4
/* 804BC17C  7C 9B E2 14 */	add r4, r27, r28
/* 804BC180  7C 7D 1A 14 */	add r3, r29, r3
/* 804BC184  4B FF FC C5 */	bl bIT_common_info_tbl_copy
/* 804BC188  3B 39 00 01 */	addi r25, r25, 1
/* 804BC18C  3B 9C 01 00 */	addi r28, r28, 0x100
/* 804BC190  2C 19 00 04 */	cmpwi r25, 4
/* 804BC194  41 80 FF E4 */	blt lbl_804BC178
lbl_804BC198:
/* 804BC198  3B 1E 00 04 */	addi r24, r30, 4
/* 804BC19C  3B BD 00 04 */	addi r29, r29, 4
/* 804BC1A0  3B 20 00 00 */	li r25, 0
/* 804BC1A4  3B 60 00 01 */	li r27, 1
/* 804BC1A8  48 00 00 54 */	b lbl_804BC1FC
lbl_804BC1AC:
/* 804BC1AC  7F 60 C8 30 */	slw r0, r27, r25
/* 804BC1B0  7F E0 00 39 */	and. r0, r31, r0
/* 804BC1B4  41 82 00 3C */	beq lbl_804BC1F0
/* 804BC1B8  8B 58 00 00 */	lbz r26, 0(r24)
/* 804BC1BC  7F A5 EB 78 */	mr r5, r29
/* 804BC1C0  8B 98 00 01 */	lbz r28, 1(r24)
/* 804BC1C4  7F 5A 07 74 */	extsb r26, r26
/* 804BC1C8  7F 9C 07 74 */	extsb r28, r28
/* 804BC1CC  7F 43 D3 78 */	mr r3, r26
/* 804BC1D0  7F 84 E3 78 */	mr r4, r28
/* 804BC1D4  4B FF FC 95 */	bl bIT_common_clear_treeatr
/* 804BC1D8  7F 43 D3 78 */	mr r3, r26
/* 804BC1DC  7F 84 E3 78 */	mr r4, r28
/* 804BC1E0  4B EE D4 41 */	bl mFI_ClearHoleBlock
/* 804BC1E4  7F 43 D3 78 */	mr r3, r26
/* 804BC1E8  7F 84 E3 78 */	mr r4, r28
/* 804BC1EC  4B EE D4 59 */	bl mFI_ClearBeecomb
lbl_804BC1F0:
/* 804BC1F0  3B 18 00 10 */	addi r24, r24, 0x10
/* 804BC1F4  3B BD 01 00 */	addi r29, r29, 0x100
/* 804BC1F8  3B 39 00 01 */	addi r25, r25, 1
lbl_804BC1FC:
/* 804BC1FC  80 1E 00 00 */	lwz r0, 0(r30)
/* 804BC200  7C 19 00 00 */	cmpw r25, r0
/* 804BC204  41 80 FF A8 */	blt lbl_804BC1AC
/* 804BC208  39 61 00 90 */	addi r11, r1, 0x90
/* 804BC20C  4B BD ED 01 */	bl func_8009AF0C
/* 804BC210  80 01 00 94 */	lwz r0, 0x94(r1)
/* 804BC214  7C 08 03 A6 */	mtlr r0
/* 804BC218  38 21 00 90 */	addi r1, r1, 0x90
/* 804BC21C  4E 80 00 20 */	blr 
