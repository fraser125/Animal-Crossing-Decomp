lbl_805DFE60:
/* 805DFE60  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805DFE64  7C 08 02 A6 */	mflr r0
/* 805DFE68  90 01 00 24 */	stw r0, 0x24(r1)
/* 805DFE6C  39 61 00 20 */	addi r11, r1, 0x20
/* 805DFE70  4B AB B0 65 */	bl func_8009AED4
/* 805DFE74  7C 7D 1B 78 */	mr r29, r3
/* 805DFE78  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805DFE7C  3C A0 80 6D */	lis r5, mes_data_tbl@ha /* 0x806CD228@ha */
/* 805DFE80  54 86 18 38 */	slwi r6, r4, 3
/* 805DFE84  80 63 09 9C */	lwz r3, 0x99c(r3)
/* 805DFE88  38 05 D2 28 */	addi r0, r5, mes_data_tbl@l /* 0x806CD228@l */
/* 805DFE8C  7C 9F 23 78 */	mr r31, r4
/* 805DFE90  38 80 00 16 */	li r4, 0x16
/* 805DFE94  38 63 00 20 */	addi r3, r3, 0x20
/* 805DFE98  7F C0 32 14 */	add r30, r0, r6
/* 805DFE9C  90 61 00 08 */	stw r3, 8(r1)
/* 805DFEA0  38 A0 00 20 */	li r5, 0x20
/* 805DFEA4  4B DD AB A5 */	bl mem_clear
/* 805DFEA8  2C 1F 00 0C */	cmpwi r31, 0xc
/* 805DFEAC  40 82 00 38 */	bne lbl_805DFEE4
/* 805DFEB0  3C 80 80 6D */	lis r4, mes_beru_data@ha /* 0x806CD290@ha */
/* 805DFEB4  80 61 00 08 */	lwz r3, 8(r1)
/* 805DFEB8  3B E4 D2 90 */	addi r31, r4, mes_beru_data@l /* 0x806CD290@l */
/* 805DFEBC  80 9F 00 00 */	lwz r4, 0(r31)
/* 805DFEC0  80 BF 00 04 */	lwz r5, 4(r31)
/* 805DFEC4  4B DD AB 61 */	bl func_803BAA24
/* 805DFEC8  80 A1 00 08 */	lwz r5, 8(r1)
/* 805DFECC  7F A3 EB 78 */	mr r3, r29
/* 805DFED0  80 1F 00 04 */	lwz r0, 4(r31)
/* 805DFED4  38 81 00 08 */	addi r4, r1, 8
/* 805DFED8  7C 05 02 14 */	add r0, r5, r0
/* 805DFEDC  90 01 00 08 */	stw r0, 8(r1)
/* 805DFEE0  4B FF FE A9 */	bl mHW_set_price
lbl_805DFEE4:
/* 805DFEE4  80 61 00 08 */	lwz r3, 8(r1)
/* 805DFEE8  80 9E 00 00 */	lwz r4, 0(r30)
/* 805DFEEC  80 BE 00 04 */	lwz r5, 4(r30)
/* 805DFEF0  4B DD AB 35 */	bl func_803BAA24
/* 805DFEF4  39 61 00 20 */	addi r11, r1, 0x20
/* 805DFEF8  4B AB B0 29 */	bl func_8009AF20
/* 805DFEFC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805DFF00  7C 08 03 A6 */	mtlr r0
/* 805DFF04  38 21 00 20 */	addi r1, r1, 0x20
/* 805DFF08  4E 80 00 20 */	blr 
