lbl_8049CEDC:
/* 8049CEDC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8049CEE0  7C 08 02 A6 */	mflr r0
/* 8049CEE4  90 01 00 24 */	stw r0, 0x24(r1)
/* 8049CEE8  39 61 00 20 */	addi r11, r1, 0x20
/* 8049CEEC  4B BF DF E5 */	bl func_8009AED0
/* 8049CEF0  7C 7E 1B 78 */	mr r30, r3
/* 8049CEF4  7C 9F 23 78 */	mr r31, r4
/* 8049CEF8  7F C0 26 70 */	srawi r0, r30, 4
/* 8049CEFC  7F A0 01 94 */	addze r29, r0
/* 8049CF00  7F E0 26 70 */	srawi r0, r31, 4
/* 8049CF04  7F 80 01 94 */	addze r28, r0
/* 8049CF08  7F A3 EB 78 */	mr r3, r29
/* 8049CF0C  7F 84 E3 78 */	mr r4, r28
/* 8049CF10  4B F0 A2 45 */	bl mFI_BkNumtoUtFGTop
/* 8049CF14  57 80 20 36 */	slwi r0, r28, 4
/* 8049CF18  57 A4 20 36 */	slwi r4, r29, 4
/* 8049CF1C  7C 00 F8 50 */	subf r0, r0, r31
/* 8049CF20  7C 84 F0 50 */	subf r4, r4, r30
/* 8049CF24  54 00 20 36 */	slwi r0, r0, 4
/* 8049CF28  7C 04 02 14 */	add r0, r4, r0
/* 8049CF2C  54 00 08 3C */	slwi r0, r0, 1
/* 8049CF30  7C 63 02 2E */	lhzx r3, r3, r0
/* 8049CF34  28 03 FE 0D */	cmplwi r3, 0xfe0d
/* 8049CF38  41 80 00 18 */	blt lbl_8049CF50
/* 8049CF3C  28 03 FE 18 */	cmplwi r3, 0xfe18
/* 8049CF40  41 81 00 10 */	bgt lbl_8049CF50
/* 8049CF44  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8049CF48  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8049CF4C  48 00 01 18 */	b lbl_8049D064
lbl_8049CF50:
/* 8049CF50  54 60 A7 3E */	rlwinm r0, r3, 0x14, 0x1c, 0x1f
/* 8049CF54  2C 00 00 01 */	cmpwi r0, 1
/* 8049CF58  41 82 00 AC */	beq lbl_8049D004
/* 8049CF5C  2C 00 00 03 */	cmpwi r0, 3
/* 8049CF60  41 82 00 A4 */	beq lbl_8049D004
/* 8049CF64  28 03 20 00 */	cmplwi r3, 0x2000
/* 8049CF68  41 80 00 0C */	blt lbl_8049CF74
/* 8049CF6C  28 03 21 00 */	cmplwi r3, 0x2100
/* 8049CF70  40 81 00 94 */	ble lbl_8049D004
lbl_8049CF74:
/* 8049CF74  28 03 26 00 */	cmplwi r3, 0x2600
/* 8049CF78  41 80 00 0C */	blt lbl_8049CF84
/* 8049CF7C  28 03 26 43 */	cmplwi r3, 0x2643
/* 8049CF80  40 81 00 84 */	ble lbl_8049D004
lbl_8049CF84:
/* 8049CF84  28 03 27 00 */	cmplwi r3, 0x2700
/* 8049CF88  41 80 00 0C */	blt lbl_8049CF94
/* 8049CF8C  28 03 27 43 */	cmplwi r3, 0x2743
/* 8049CF90  40 81 00 74 */	ble lbl_8049D004
lbl_8049CF94:
/* 8049CF94  28 03 24 00 */	cmplwi r3, 0x2400
/* 8049CF98  41 80 00 0C */	blt lbl_8049CFA4
/* 8049CF9C  28 03 24 FF */	cmplwi r3, 0x24ff
/* 8049CFA0  40 81 00 64 */	ble lbl_8049D004
lbl_8049CFA4:
/* 8049CFA4  28 03 22 00 */	cmplwi r3, 0x2200
/* 8049CFA8  41 80 00 0C */	blt lbl_8049CFB4
/* 8049CFAC  28 03 22 5C */	cmplwi r3, 0x225c
/* 8049CFB0  40 81 00 54 */	ble lbl_8049D004
lbl_8049CFB4:
/* 8049CFB4  28 03 29 00 */	cmplwi r3, 0x2900
/* 8049CFB8  41 80 00 0C */	blt lbl_8049CFC4
/* 8049CFBC  28 03 29 01 */	cmplwi r3, 0x2901
/* 8049CFC0  40 81 00 44 */	ble lbl_8049D004
lbl_8049CFC4:
/* 8049CFC4  28 03 29 02 */	cmplwi r3, 0x2902
/* 8049CFC8  41 80 00 0C */	blt lbl_8049CFD4
/* 8049CFCC  28 03 29 0A */	cmplwi r3, 0x290a
/* 8049CFD0  40 81 00 34 */	ble lbl_8049D004
lbl_8049CFD4:
/* 8049CFD4  28 03 2B 00 */	cmplwi r3, 0x2b00
/* 8049CFD8  41 80 00 0C */	blt lbl_8049CFE4
/* 8049CFDC  28 03 2B 0F */	cmplwi r3, 0x2b0f
/* 8049CFE0  40 81 00 24 */	ble lbl_8049D004
lbl_8049CFE4:
/* 8049CFE4  28 03 28 06 */	cmplwi r3, 0x2806
/* 8049CFE8  41 82 00 1C */	beq lbl_8049D004
/* 8049CFEC  28 03 FE 1F */	cmplwi r3, 0xfe1f
/* 8049CFF0  41 82 00 14 */	beq lbl_8049D004
/* 8049CFF4  28 03 2E 00 */	cmplwi r3, 0x2e00
/* 8049CFF8  41 82 00 0C */	beq lbl_8049D004
/* 8049CFFC  28 03 25 1E */	cmplwi r3, 0x251e
/* 8049D000  40 82 00 5C */	bne lbl_8049D05C
lbl_8049D004:
/* 8049D004  28 03 FE 1F */	cmplwi r3, 0xfe1f
/* 8049D008  40 82 00 5C */	bne lbl_8049D064
/* 8049D00C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8049D010  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8049D014  3C 63 00 02 */	addis r3, r3, 2
/* 8049D018  80 63 60 8C */	lwz r3, 0x608c(r3)
/* 8049D01C  28 03 00 00 */	cmplwi r3, 0
/* 8049D020  41 82 00 2C */	beq lbl_8049D04C
/* 8049D024  81 83 00 1C */	lwz r12, 0x1c(r3)
/* 8049D028  7F C5 F3 78 */	mr r5, r30
/* 8049D02C  7F E6 FB 78 */	mr r6, r31
/* 8049D030  38 61 00 08 */	addi r3, r1, 8
/* 8049D034  38 80 00 00 */	li r4, 0
/* 8049D038  38 E0 00 00 */	li r7, 0
/* 8049D03C  7D 89 03 A6 */	mtctr r12
/* 8049D040  4E 80 04 21 */	bctrl 
/* 8049D044  A0 61 00 08 */	lhz r3, 8(r1)
/* 8049D048  48 00 00 1C */	b lbl_8049D064
lbl_8049D04C:
/* 8049D04C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8049D050  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
/* 8049D054  48 00 00 10 */	b lbl_8049D064
/* 8049D058  48 00 00 0C */	b lbl_8049D064
lbl_8049D05C:
/* 8049D05C  3C 60 00 01 */	lis r3, 0x0001 /* 0x0000FFFF@ha */
/* 8049D060  38 63 FF FF */	addi r3, r3, 0xFFFF /* 0x0000FFFF@l */
lbl_8049D064:
/* 8049D064  39 61 00 20 */	addi r11, r1, 0x20
/* 8049D068  4B BF DE B5 */	bl func_8009AF1C
/* 8049D06C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8049D070  7C 08 03 A6 */	mtlr r0
/* 8049D074  38 21 00 20 */	addi r1, r1, 0x20
/* 8049D078  4E 80 00 20 */	blr 
