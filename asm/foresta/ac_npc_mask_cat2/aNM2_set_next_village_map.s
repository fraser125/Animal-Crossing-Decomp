lbl_8055FE2C:
/* 8055FE2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8055FE30  7C 08 02 A6 */	mflr r0
/* 8055FE34  90 01 00 14 */	stw r0, 0x14(r1)
/* 8055FE38  4B E5 3C D1 */	bl mLd_PlayerManKindCheck
/* 8055FE3C  2C 03 00 00 */	cmpwi r3, 0
/* 8055FE40  40 82 00 90 */	bne lbl_8055FED0
/* 8055FE44  4B E3 AD F1 */	bl mEv_CheckFirstJob
/* 8055FE48  2C 03 00 01 */	cmpwi r3, 1
/* 8055FE4C  40 82 00 6C */	bne lbl_8055FEB8
/* 8055FE50  4B E8 3D 19 */	bl mQst_GetFirstJobData
/* 8055FE54  88 03 00 00 */	lbz r0, 0(r3)
/* 8055FE58  54 00 06 BE */	clrlwi r0, r0, 0x1a
/* 8055FE5C  2C 00 00 0C */	cmpwi r0, 0xc
/* 8055FE60  41 82 00 28 */	beq lbl_8055FE88
/* 8055FE64  40 80 00 18 */	bge lbl_8055FE7C
/* 8055FE68  2C 00 00 06 */	cmpwi r0, 6
/* 8055FE6C  40 80 00 34 */	bge lbl_8055FEA0
/* 8055FE70  2C 00 00 03 */	cmpwi r0, 3
/* 8055FE74  40 80 00 14 */	bge lbl_8055FE88
/* 8055FE78  48 00 00 28 */	b lbl_8055FEA0
lbl_8055FE7C:
/* 8055FE7C  2C 00 00 0E */	cmpwi r0, 0xe
/* 8055FE80  41 82 00 08 */	beq lbl_8055FE88
/* 8055FE84  48 00 00 1C */	b lbl_8055FEA0
lbl_8055FE88:
/* 8055FE88  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FE8C  38 00 00 00 */	li r0, 0
/* 8055FE90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FE94  3C 63 00 02 */	addis r3, r3, 2
/* 8055FE98  98 03 61 44 */	stb r0, 0x6144(r3)
/* 8055FE9C  48 00 00 84 */	b lbl_8055FF20
lbl_8055FEA0:
/* 8055FEA0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FEA4  38 00 00 01 */	li r0, 1
/* 8055FEA8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FEAC  3C 63 00 02 */	addis r3, r3, 2
/* 8055FEB0  98 03 61 44 */	stb r0, 0x6144(r3)
/* 8055FEB4  48 00 00 6C */	b lbl_8055FF20
lbl_8055FEB8:
/* 8055FEB8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FEBC  38 00 00 01 */	li r0, 1
/* 8055FEC0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FEC4  3C 63 00 02 */	addis r3, r3, 2
/* 8055FEC8  98 03 61 44 */	stb r0, 0x6144(r3)
/* 8055FECC  48 00 00 54 */	b lbl_8055FF20
lbl_8055FED0:
/* 8055FED0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FED4  38 80 00 08 */	li r4, 8
/* 8055FED8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FEDC  3C 63 00 02 */	addis r3, r3, 2
/* 8055FEE0  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 8055FEE4  38 63 11 DC */	addi r3, r3, 0x11dc
/* 8055FEE8  4B E8 26 45 */	bl mPr_GetThisLandMapIdx
/* 8055FEEC  2C 03 FF FF */	cmpwi r3, -1
/* 8055FEF0  41 82 00 1C */	beq lbl_8055FF0C
/* 8055FEF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FEF8  38 00 00 01 */	li r0, 1
/* 8055FEFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FF00  3C 63 00 02 */	addis r3, r3, 2
/* 8055FF04  98 03 61 44 */	stb r0, 0x6144(r3)
/* 8055FF08  48 00 00 18 */	b lbl_8055FF20
lbl_8055FF0C:
/* 8055FF0C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8055FF10  38 00 00 00 */	li r0, 0
/* 8055FF14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8055FF18  3C 63 00 02 */	addis r3, r3, 2
/* 8055FF1C  98 03 61 44 */	stb r0, 0x6144(r3)
lbl_8055FF20:
/* 8055FF20  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8055FF24  7C 08 03 A6 */	mtlr r0
/* 8055FF28  38 21 00 10 */	addi r1, r1, 0x10
/* 8055FF2C  4E 80 00 20 */	blr 
