lbl_8050FDC4:
/* 8050FDC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050FDC8  7C 08 02 A6 */	mflr r0
/* 8050FDCC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050FDD0  39 61 00 20 */	addi r11, r1, 0x20
/* 8050FDD4  4B B8 B1 01 */	bl func_8009AED4
/* 8050FDD8  7C 7D 1B 78 */	mr r29, r3
/* 8050FDDC  7C 9E 23 78 */	mr r30, r4
/* 8050FDE0  7C BF 2B 78 */	mr r31, r5
/* 8050FDE4  4B FF FF C5 */	bl mAGrw_ClearAroundBlockInfo
/* 8050FDE8  2C 1E 00 00 */	cmpwi r30, 0
/* 8050FDEC  40 81 00 2C */	ble lbl_8050FE18
/* 8050FDF0  1C 9F 0A 00 */	mulli r4, r31, 0xa00
/* 8050FDF4  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FDF8  38 1E FF FF */	addi r0, r30, -1
/* 8050FDFC  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FE00  7C 63 22 14 */	add r3, r3, r4
/* 8050FE04  54 00 48 2C */	slwi r0, r0, 9
/* 8050FE08  7C 63 02 14 */	add r3, r3, r0
/* 8050FE0C  3C 63 00 01 */	addis r3, r3, 1
/* 8050FE10  38 03 37 A8 */	addi r0, r3, 0x37a8
/* 8050FE14  90 1D 00 08 */	stw r0, 8(r29)
lbl_8050FE18:
/* 8050FE18  2C 1E 00 04 */	cmpwi r30, 4
/* 8050FE1C  40 80 00 2C */	bge lbl_8050FE48
/* 8050FE20  1C 9F 0A 00 */	mulli r4, r31, 0xa00
/* 8050FE24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FE28  38 1E 00 01 */	addi r0, r30, 1
/* 8050FE2C  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FE30  7C 63 22 14 */	add r3, r3, r4
/* 8050FE34  54 00 48 2C */	slwi r0, r0, 9
/* 8050FE38  7C 63 02 14 */	add r3, r3, r0
/* 8050FE3C  3C 63 00 01 */	addis r3, r3, 1
/* 8050FE40  38 03 37 A8 */	addi r0, r3, 0x37a8
/* 8050FE44  90 1D 00 0C */	stw r0, 0xc(r29)
lbl_8050FE48:
/* 8050FE48  2C 1F 00 00 */	cmpwi r31, 0
/* 8050FE4C  40 81 00 2C */	ble lbl_8050FE78
/* 8050FE50  38 1F FF FF */	addi r0, r31, -1
/* 8050FE54  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FE58  1C 80 0A 00 */	mulli r4, r0, 0xa00
/* 8050FE5C  57 C0 48 2C */	slwi r0, r30, 9
/* 8050FE60  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FE64  7C 63 22 14 */	add r3, r3, r4
/* 8050FE68  7C 63 02 14 */	add r3, r3, r0
/* 8050FE6C  3C 63 00 01 */	addis r3, r3, 1
/* 8050FE70  38 03 37 A8 */	addi r0, r3, 0x37a8
/* 8050FE74  90 1D 00 00 */	stw r0, 0(r29)
lbl_8050FE78:
/* 8050FE78  2C 1F 00 05 */	cmpwi r31, 5
/* 8050FE7C  40 80 00 2C */	bge lbl_8050FEA8
/* 8050FE80  38 1F 00 01 */	addi r0, r31, 1
/* 8050FE84  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8050FE88  1C 80 0A 00 */	mulli r4, r0, 0xa00
/* 8050FE8C  57 E0 48 2C */	slwi r0, r31, 9
/* 8050FE90  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8050FE94  7C 63 22 14 */	add r3, r3, r4
/* 8050FE98  7C 63 02 14 */	add r3, r3, r0
/* 8050FE9C  3C 63 00 01 */	addis r3, r3, 1
/* 8050FEA0  38 03 37 A8 */	addi r0, r3, 0x37a8
/* 8050FEA4  90 1D 00 04 */	stw r0, 4(r29)
lbl_8050FEA8:
/* 8050FEA8  39 61 00 20 */	addi r11, r1, 0x20
/* 8050FEAC  4B B8 B0 75 */	bl func_8009AF20
/* 8050FEB0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050FEB4  7C 08 03 A6 */	mtlr r0
/* 8050FEB8  38 21 00 20 */	addi r1, r1, 0x20
/* 8050FEBC  4E 80 00 20 */	blr 
