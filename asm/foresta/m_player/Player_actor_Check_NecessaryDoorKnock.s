lbl_804DCDE8:
/* 804DCDE8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804DCDEC  7C 08 02 A6 */	mflr r0
/* 804DCDF0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804DCDF4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 804DCDF8  A3 E3 00 06 */	lhz r31, 6(r3)
/* 804DCDFC  57 E0 A7 3E */	rlwinm r0, r31, 0x14, 0x1c, 0x1f
/* 804DCE00  2C 00 00 05 */	cmpwi r0, 5
/* 804DCE04  40 82 00 8C */	bne lbl_804DCE90
/* 804DCE08  28 1F 58 00 */	cmplwi r31, 0x5800
/* 804DCE0C  41 80 00 5C */	blt lbl_804DCE68
/* 804DCE10  28 1F 58 04 */	cmplwi r31, 0x5804
/* 804DCE14  40 80 00 54 */	bge lbl_804DCE68
/* 804DCE18  4B EB DF 15 */	bl mEv_CheckFirstIntro
/* 804DCE1C  2C 03 00 00 */	cmpwi r3, 0
/* 804DCE20  41 82 00 0C */	beq lbl_804DCE2C
/* 804DCE24  38 60 00 01 */	li r3, 1
/* 804DCE28  48 00 00 6C */	b lbl_804DCE94
lbl_804DCE2C:
/* 804DCE2C  3B FF A8 00 */	addi r31, r31, -22528
/* 804DCE30  4B ED 6C D9 */	bl mLd_PlayerManKindCheck
/* 804DCE34  2C 03 00 00 */	cmpwi r3, 0
/* 804DCE38  40 82 00 28 */	bne lbl_804DCE60
/* 804DCE3C  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DCE40  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DCE44  3C 63 00 02 */	addis r3, r3, 2
/* 804DCE48  88 63 60 03 */	lbz r3, 0x6003(r3)
/* 804DCE4C  4B ED 67 6D */	bl mHS_get_arrange_idx
/* 804DCE50  7C 1F 18 00 */	cmpw r31, r3
/* 804DCE54  41 82 00 3C */	beq lbl_804DCE90
/* 804DCE58  38 60 00 01 */	li r3, 1
/* 804DCE5C  48 00 00 38 */	b lbl_804DCE94
lbl_804DCE60:
/* 804DCE60  38 60 00 01 */	li r3, 1
/* 804DCE64  48 00 00 30 */	b lbl_804DCE94
lbl_804DCE68:
/* 804DCE68  28 1F 50 00 */	cmplwi r31, 0x5000
/* 804DCE6C  41 80 00 0C */	blt lbl_804DCE78
/* 804DCE70  28 1F 50 EE */	cmplwi r31, 0x50ee
/* 804DCE74  41 80 00 14 */	blt lbl_804DCE88
lbl_804DCE78:
/* 804DCE78  28 1F 58 51 */	cmplwi r31, 0x5851
/* 804DCE7C  41 80 00 14 */	blt lbl_804DCE90
/* 804DCE80  28 1F 58 52 */	cmplwi r31, 0x5852
/* 804DCE84  40 80 00 0C */	bge lbl_804DCE90
lbl_804DCE88:
/* 804DCE88  38 60 00 01 */	li r3, 1
/* 804DCE8C  48 00 00 08 */	b lbl_804DCE94
lbl_804DCE90:
/* 804DCE90  38 60 00 00 */	li r3, 0
lbl_804DCE94:
/* 804DCE94  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804DCE98  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 804DCE9C  7C 08 03 A6 */	mtlr r0
/* 804DCEA0  38 21 00 10 */	addi r1, r1, 0x10
/* 804DCEA4  4E 80 00 20 */	blr 
