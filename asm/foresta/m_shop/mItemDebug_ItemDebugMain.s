lbl_803EBDA4:
/* 803EBDA4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803EBDA8  7C 08 02 A6 */	mflr r0
/* 803EBDAC  90 01 00 24 */	stw r0, 0x24(r1)
/* 803EBDB0  39 61 00 20 */	addi r11, r1, 0x20
/* 803EBDB4  4B CA F1 21 */	bl func_8009AED4
/* 803EBDB8  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803EBDBC  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803EBDC0  80 63 00 00 */	lwz r3, 0(r3)
/* 803EBDC4  A0 03 00 50 */	lhz r0, 0x50(r3)
/* 803EBDC8  54 00 04 E6 */	rlwinm r0, r0, 0, 0x13, 0x13
/* 803EBDCC  2C 00 10 00 */	cmpwi r0, 0x1000
/* 803EBDD0  40 82 00 3C */	bne lbl_803EBE0C
/* 803EBDD4  3C 60 81 17 */	lis r3, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBDD8  84 83 14 44 */	lwzu r4, l_mItemDebug_work_data@l(r3)  /* 0x81171444@l */
/* 803EBDDC  38 04 00 01 */	addi r0, r4, 1
/* 803EBDE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 803EBDE4  90 03 00 00 */	stw r0, 0(r3)
/* 803EBDE8  41 82 00 1C */	beq lbl_803EBE04
/* 803EBDEC  38 80 00 0C */	li r4, 0xc
/* 803EBDF0  4B C7 12 79 */	bl bzero
/* 803EBDF4  3C 60 81 17 */	lis r3, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBDF8  38 00 00 01 */	li r0, 1
/* 803EBDFC  90 03 14 44 */	stw r0, l_mItemDebug_work_data@l(r3)  /* 0x81171444@l */
/* 803EBE00  48 00 00 0C */	b lbl_803EBE0C
lbl_803EBE04:
/* 803EBE04  38 80 00 0C */	li r4, 0xc
/* 803EBE08  4B C7 12 61 */	bl bzero
lbl_803EBE0C:
/* 803EBE0C  3C 60 81 17 */	lis r3, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBE10  38 C3 14 44 */	addi r6, r3, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EBE14  80 06 00 00 */	lwz r0, 0(r6)
/* 803EBE18  2C 00 00 00 */	cmpwi r0, 0
/* 803EBE1C  41 82 02 08 */	beq lbl_803EC024
/* 803EBE20  3C 60 81 1C */	lis r3, data_811C52F0@ha /* 0x811C52F0@ha */
/* 803EBE24  38 63 52 F0 */	addi r3, r3, data_811C52F0@l /* 0x811C52F0@l */
/* 803EBE28  80 63 00 00 */	lwz r3, 0(r3)
/* 803EBE2C  A0 03 00 50 */	lhz r0, 0x50(r3)
/* 803EBE30  54 00 05 28 */	rlwinm r0, r0, 0, 0x14, 0x14
/* 803EBE34  2C 00 08 00 */	cmpwi r0, 0x800
/* 803EBE38  40 82 00 24 */	bne lbl_803EBE5C
/* 803EBE3C  80 86 00 04 */	lwz r4, 4(r6)
/* 803EBE40  38 A0 00 00 */	li r5, 0
/* 803EBE44  90 A6 00 08 */	stw r5, 8(r6)
/* 803EBE48  38 04 00 01 */	addi r0, r4, 1
/* 803EBE4C  2C 00 00 11 */	cmpwi r0, 0x11
/* 803EBE50  90 06 00 04 */	stw r0, 4(r6)
/* 803EBE54  40 81 00 08 */	ble lbl_803EBE5C
/* 803EBE58  90 A6 00 04 */	stw r5, 4(r6)
lbl_803EBE5C:
/* 803EBE5C  3C 80 81 17 */	lis r4, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBE60  38 A4 14 44 */	addi r5, r4, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EBE64  83 E5 00 04 */	lwz r31, 4(r5)
/* 803EBE68  2C 1F 00 00 */	cmpwi r31, 0
/* 803EBE6C  41 82 01 08 */	beq lbl_803EBF74
/* 803EBE70  A0 83 00 50 */	lhz r4, 0x50(r3)
/* 803EBE74  54 80 05 EE */	rlwinm r0, r4, 0, 0x17, 0x17
/* 803EBE78  2C 00 01 00 */	cmpwi r0, 0x100
/* 803EBE7C  40 82 00 84 */	bne lbl_803EBF00
/* 803EBE80  A0 83 00 44 */	lhz r4, 0x44(r3)
/* 803EBE84  54 80 04 62 */	rlwinm r0, r4, 0, 0x11, 0x11
/* 803EBE88  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803EBE8C  40 82 00 14 */	bne lbl_803EBEA0
/* 803EBE90  80 85 00 08 */	lwz r4, 8(r5)
/* 803EBE94  38 04 00 0A */	addi r0, r4, 0xa
/* 803EBE98  90 05 00 08 */	stw r0, 8(r5)
/* 803EBE9C  48 00 00 30 */	b lbl_803EBECC
lbl_803EBEA0:
/* 803EBEA0  54 84 04 20 */	rlwinm r4, r4, 0, 0x10, 0x10
/* 803EBEA4  3C 04 00 00 */	addis r0, r4, 0
/* 803EBEA8  28 00 80 00 */	cmplwi r0, 0x8000
/* 803EBEAC  40 82 00 14 */	bne lbl_803EBEC0
/* 803EBEB0  80 85 00 08 */	lwz r4, 8(r5)
/* 803EBEB4  38 04 00 64 */	addi r0, r4, 0x64
/* 803EBEB8  90 05 00 08 */	stw r0, 8(r5)
/* 803EBEBC  48 00 00 10 */	b lbl_803EBECC
lbl_803EBEC0:
/* 803EBEC0  80 85 00 08 */	lwz r4, 8(r5)
/* 803EBEC4  38 04 00 01 */	addi r0, r4, 1
/* 803EBEC8  90 05 00 08 */	stw r0, 8(r5)
lbl_803EBECC:
/* 803EBECC  3C 80 80 66 */	lis r4, mItemDebug_category_max_table@ha /* 0x8065DA98@ha */
/* 803EBED0  3C A0 81 17 */	lis r5, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBED4  57 E0 10 3A */	slwi r0, r31, 2
/* 803EBED8  38 84 DA 98 */	addi r4, r4, mItemDebug_category_max_table@l /* 0x8065DA98@l */
/* 803EBEDC  38 C5 14 44 */	addi r6, r5, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EBEE0  7C 84 00 2E */	lwzx r4, r4, r0
/* 803EBEE4  80 A6 00 08 */	lwz r5, 8(r6)
/* 803EBEE8  38 04 FF FF */	addi r0, r4, -1
/* 803EBEEC  7C 05 00 00 */	cmpw r5, r0
/* 803EBEF0  40 81 00 84 */	ble lbl_803EBF74
/* 803EBEF4  38 00 00 00 */	li r0, 0
/* 803EBEF8  90 06 00 08 */	stw r0, 8(r6)
/* 803EBEFC  48 00 00 78 */	b lbl_803EBF74
lbl_803EBF00:
/* 803EBF00  54 80 05 AC */	rlwinm r0, r4, 0, 0x16, 0x16
/* 803EBF04  2C 00 02 00 */	cmpwi r0, 0x200
/* 803EBF08  40 82 00 6C */	bne lbl_803EBF74
/* 803EBF0C  A0 83 00 44 */	lhz r4, 0x44(r3)
/* 803EBF10  54 80 04 62 */	rlwinm r0, r4, 0, 0x11, 0x11
/* 803EBF14  2C 00 40 00 */	cmpwi r0, 0x4000
/* 803EBF18  40 82 00 14 */	bne lbl_803EBF2C
/* 803EBF1C  80 85 00 08 */	lwz r4, 8(r5)
/* 803EBF20  38 04 FF F6 */	addi r0, r4, -10
/* 803EBF24  90 05 00 08 */	stw r0, 8(r5)
/* 803EBF28  48 00 00 30 */	b lbl_803EBF58
lbl_803EBF2C:
/* 803EBF2C  54 84 04 20 */	rlwinm r4, r4, 0, 0x10, 0x10
/* 803EBF30  3C 04 00 00 */	addis r0, r4, 0
/* 803EBF34  28 00 80 00 */	cmplwi r0, 0x8000
/* 803EBF38  40 82 00 14 */	bne lbl_803EBF4C
/* 803EBF3C  80 85 00 08 */	lwz r4, 8(r5)
/* 803EBF40  38 04 FF 9C */	addi r0, r4, -100
/* 803EBF44  90 05 00 08 */	stw r0, 8(r5)
/* 803EBF48  48 00 00 10 */	b lbl_803EBF58
lbl_803EBF4C:
/* 803EBF4C  80 85 00 08 */	lwz r4, 8(r5)
/* 803EBF50  38 04 FF FF */	addi r0, r4, -1
/* 803EBF54  90 05 00 08 */	stw r0, 8(r5)
lbl_803EBF58:
/* 803EBF58  3C 80 81 17 */	lis r4, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBF5C  38 84 14 44 */	addi r4, r4, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EBF60  80 04 00 08 */	lwz r0, 8(r4)
/* 803EBF64  2C 00 00 00 */	cmpwi r0, 0
/* 803EBF68  40 80 00 0C */	bge lbl_803EBF74
/* 803EBF6C  38 00 00 00 */	li r0, 0
/* 803EBF70  90 04 00 08 */	stw r0, 8(r4)
lbl_803EBF74:
/* 803EBF74  A0 03 00 50 */	lhz r0, 0x50(r3)
/* 803EBF78  54 00 05 6A */	rlwinm r0, r0, 0, 0x15, 0x15
/* 803EBF7C  2C 00 04 00 */	cmpwi r0, 0x400
/* 803EBF80  40 82 00 A4 */	bne lbl_803EC024
/* 803EBF84  2C 1F 00 00 */	cmpwi r31, 0
/* 803EBF88  41 82 00 9C */	beq lbl_803EC024
/* 803EBF8C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 803EBF90  38 80 00 00 */	li r4, 0
/* 803EBF94  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 803EBF98  38 A0 00 00 */	li r5, 0
/* 803EBF9C  3F C3 00 02 */	addis r30, r3, 2
/* 803EBFA0  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803EBFA4  4B FF 47 CD */	bl mPr_GetPossessionItemIdxWithCond
/* 803EBFA8  2C 1F 00 01 */	cmpwi r31, 1
/* 803EBFAC  7C 7D 1B 78 */	mr r29, r3
/* 803EBFB0  41 82 00 2C */	beq lbl_803EBFDC
/* 803EBFB4  3C 80 81 17 */	lis r4, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBFB8  3C 60 80 66 */	lis r3, mItemDebug_category_start_no_table@ha /* 0x8065DA74@ha */
/* 803EBFBC  38 84 14 44 */	addi r4, r4, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EBFC0  57 E0 08 3C */	slwi r0, r31, 1
/* 803EBFC4  38 63 DA 74 */	addi r3, r3, mItemDebug_category_start_no_table@l /* 0x8065DA74@l */
/* 803EBFC8  80 84 00 08 */	lwz r4, 8(r4)
/* 803EBFCC  7C 03 02 2E */	lhzx r0, r3, r0
/* 803EBFD0  7C 04 02 14 */	add r0, r4, r0
/* 803EBFD4  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 803EBFD8  48 00 00 34 */	b lbl_803EC00C
lbl_803EBFDC:
/* 803EBFDC  3C 60 81 17 */	lis r3, l_mItemDebug_work_data@ha /* 0x81171444@ha */
/* 803EBFE0  3B E3 14 44 */	addi r31, r3, l_mItemDebug_work_data@l /* 0x81171444@l */
/* 803EBFE4  80 7F 00 08 */	lwz r3, 8(r31)
/* 803EBFE8  4B FF FD 5D */	bl func_803EBD44
/* 803EBFEC  2C 03 00 00 */	cmpwi r3, 0
/* 803EBFF0  41 82 00 34 */	beq lbl_803EC024
/* 803EBFF4  80 7F 00 08 */	lwz r3, 8(r31)
/* 803EBFF8  38 80 00 00 */	li r4, 0
/* 803EBFFC  4B FF B7 D9 */	bl mRmTp_FtrIdx2FtrItemNo
/* 803EC000  7C 65 1B 78 */	mr r5, r3
/* 803EC004  48 00 00 08 */	b lbl_803EC00C
/* 803EC008  48 00 00 1C */	b lbl_803EC024
lbl_803EC00C:
/* 803EC00C  2C 1D FF FF */	cmpwi r29, -1
/* 803EC010  41 82 00 14 */	beq lbl_803EC024
/* 803EC014  80 7E 61 3C */	lwz r3, 0x613c(r30)
/* 803EC018  7F A4 EB 78 */	mr r4, r29
/* 803EC01C  38 C0 00 00 */	li r6, 0
/* 803EC020  4B FF 4E 09 */	bl mPr_SetPossessionItem
lbl_803EC024:
/* 803EC024  39 61 00 20 */	addi r11, r1, 0x20
/* 803EC028  4B CA EE F9 */	bl func_8009AF20
/* 803EC02C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803EC030  7C 08 03 A6 */	mtlr r0
/* 803EC034  38 21 00 20 */	addi r1, r1, 0x20
/* 803EC038  4E 80 00 20 */	blr 
