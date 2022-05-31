lbl_8047ED6C:
/* 8047ED6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8047ED70  7C 08 02 A6 */	mflr r0
/* 8047ED74  90 01 00 14 */	stw r0, 0x14(r1)
/* 8047ED78  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8047ED7C  7C 7F 1B 78 */	mr r31, r3
/* 8047ED80  A0 03 00 00 */	lhz r0, 0(r3)
/* 8047ED84  2C 00 04 E8 */	cmpwi r0, 0x4e8
/* 8047ED88  41 82 00 88 */	beq lbl_8047EE10
/* 8047ED8C  40 80 01 04 */	bge lbl_8047EE90
/* 8047ED90  2C 00 04 06 */	cmpwi r0, 0x406
/* 8047ED94  41 82 00 08 */	beq lbl_8047ED9C
/* 8047ED98  48 00 00 F8 */	b lbl_8047EE90
lbl_8047ED9C:
/* 8047ED9C  4B FF 4F E9 */	bl aMR_GetContactInfoLayer1
/* 8047EDA0  A8 9F 00 3C */	lha r4, 0x3c(r31)
/* 8047EDA4  2C 04 00 01 */	cmpwi r4, 1
/* 8047EDA8  41 82 00 1C */	beq lbl_8047EDC4
/* 8047EDAC  38 04 FF FE */	addi r0, r4, -2
/* 8047EDB0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8047EDB4  28 00 00 04 */	cmplwi r0, 4
/* 8047EDB8  40 81 00 0C */	ble lbl_8047EDC4
/* 8047EDBC  2C 04 00 07 */	cmpwi r4, 7
/* 8047EDC0  40 82 00 E8 */	bne lbl_8047EEA8
lbl_8047EDC4:
/* 8047EDC4  28 03 00 00 */	cmplwi r3, 0
/* 8047EDC8  41 82 00 E0 */	beq lbl_8047EEA8
/* 8047EDCC  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8047EDD0  2C 00 00 02 */	cmpwi r0, 2
/* 8047EDD4  41 82 00 2C */	beq lbl_8047EE00
/* 8047EDD8  40 80 00 10 */	bge lbl_8047EDE8
/* 8047EDDC  2C 00 00 01 */	cmpwi r0, 1
/* 8047EDE0  40 80 00 10 */	bge lbl_8047EDF0
/* 8047EDE4  48 00 00 1C */	b lbl_8047EE00
lbl_8047EDE8:
/* 8047EDE8  2C 00 00 04 */	cmpwi r0, 4
/* 8047EDEC  40 80 00 14 */	bge lbl_8047EE00
lbl_8047EDF0:
/* 8047EDF0  38 9F 00 08 */	addi r4, r31, 8
/* 8047EDF4  38 60 00 7D */	li r3, 0x7d
/* 8047EDF8  48 1A F1 B1 */	bl sAdo_OngenTrgStart
/* 8047EDFC  48 00 00 AC */	b lbl_8047EEA8
lbl_8047EE00:
/* 8047EE00  38 9F 00 08 */	addi r4, r31, 8
/* 8047EE04  38 60 00 7E */	li r3, 0x7e
/* 8047EE08  48 1A F1 A1 */	bl sAdo_OngenTrgStart
/* 8047EE0C  48 00 00 9C */	b lbl_8047EEA8
lbl_8047EE10:
/* 8047EE10  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047EE14  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047EE18  3C 63 00 03 */	addis r3, r3, 3
/* 8047EE1C  88 63 85 91 */	lbz r3, -0x7a6f(r3)
/* 8047EE20  7C 60 07 74 */	extsb r0, r3
/* 8047EE24  2C 00 00 1A */	cmpwi r0, 0x1a
/* 8047EE28  41 82 00 0C */	beq lbl_8047EE34
/* 8047EE2C  2C 00 00 30 */	cmpwi r0, 0x30
/* 8047EE30  40 82 00 54 */	bne lbl_8047EE84
lbl_8047EE34:
/* 8047EE34  4B FF 4F 51 */	bl aMR_GetContactInfoLayer1
/* 8047EE38  A8 9F 00 3C */	lha r4, 0x3c(r31)
/* 8047EE3C  2C 04 00 01 */	cmpwi r4, 1
/* 8047EE40  41 82 00 1C */	beq lbl_8047EE5C
/* 8047EE44  38 04 FF FE */	addi r0, r4, -2
/* 8047EE48  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 8047EE4C  28 00 00 01 */	cmplwi r0, 1
/* 8047EE50  40 81 00 0C */	ble lbl_8047EE5C
/* 8047EE54  2C 04 00 04 */	cmpwi r4, 4
/* 8047EE58  40 82 00 50 */	bne lbl_8047EEA8
lbl_8047EE5C:
/* 8047EE5C  28 03 00 00 */	cmplwi r3, 0
/* 8047EE60  41 82 00 48 */	beq lbl_8047EEA8
/* 8047EE64  80 03 00 28 */	lwz r0, 0x28(r3)
/* 8047EE68  2C 00 00 00 */	cmpwi r0, 0
/* 8047EE6C  41 82 00 08 */	beq lbl_8047EE74
/* 8047EE70  48 00 00 38 */	b lbl_8047EEA8
lbl_8047EE74:
/* 8047EE74  38 9F 00 08 */	addi r4, r31, 8
/* 8047EE78  38 60 01 77 */	li r3, 0x177
/* 8047EE7C  48 1A F1 2D */	bl sAdo_OngenTrgStart
/* 8047EE80  48 00 00 28 */	b lbl_8047EEA8
lbl_8047EE84:
/* 8047EE84  38 9F 00 08 */	addi r4, r31, 8
/* 8047EE88  48 1A F1 E9 */	bl sAdo_FloorTrgStart
/* 8047EE8C  48 00 00 1C */	b lbl_8047EEA8
lbl_8047EE90:
/* 8047EE90  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 8047EE94  38 9F 00 08 */	addi r4, r31, 8
/* 8047EE98  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 8047EE9C  3C 63 00 03 */	addis r3, r3, 3
/* 8047EEA0  88 63 85 91 */	lbz r3, -0x7a6f(r3)
/* 8047EEA4  48 1A F1 CD */	bl sAdo_FloorTrgStart
lbl_8047EEA8:
/* 8047EEA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8047EEAC  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8047EEB0  7C 08 03 A6 */	mtlr r0
/* 8047EEB4  38 21 00 10 */	addi r1, r1, 0x10
/* 8047EEB8  4E 80 00 20 */	blr 
