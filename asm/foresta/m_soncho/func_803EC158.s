lbl_803EC158:
/* 803EC158  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 803EC15C  7C 08 02 A6 */	mflr r0
/* 803EC160  3C 60 80 66 */	lis r3, data_8065DAF8@ha /* 0x8065DAF8@ha */
/* 803EC164  90 01 00 14 */	stw r0, 0x14(r1)
/* 803EC168  93 E1 00 0C */	stw r31, 0xc(r1)
/* 803EC16C  3B E3 DA F8 */	addi r31, r3, data_8065DAF8@l /* 0x8065DAF8@l */
/* 803EC170  93 C1 00 08 */	stw r30, 8(r1)
/* 803EC174  3B C0 00 00 */	li r30, 0
lbl_803EC178:
/* 803EC178  2C 1E 00 16 */	cmpwi r30, 0x16
/* 803EC17C  41 82 00 20 */	beq lbl_803EC19C
/* 803EC180  88 7F 00 00 */	lbz r3, 0(r31)
/* 803EC184  38 80 00 10 */	li r4, 0x10
/* 803EC188  4B FB 19 79 */	bl mEv_check_status
/* 803EC18C  2C 03 00 00 */	cmpwi r3, 0
/* 803EC190  41 82 00 0C */	beq lbl_803EC19C
/* 803EC194  57 C3 06 3E */	clrlwi r3, r30, 0x18
/* 803EC198  48 00 00 84 */	b lbl_803EC21C
lbl_803EC19C:
/* 803EC19C  3B DE 00 01 */	addi r30, r30, 1
/* 803EC1A0  3B FF 00 01 */	addi r31, r31, 1
/* 803EC1A4  2C 1E 00 1C */	cmpwi r30, 0x1c
/* 803EC1A8  41 80 FF D0 */	blt lbl_803EC178
/* 803EC1AC  38 60 00 66 */	li r3, 0x66
/* 803EC1B0  38 80 00 10 */	li r4, 0x10
/* 803EC1B4  4B FB 19 4D */	bl mEv_check_status
/* 803EC1B8  2C 03 00 00 */	cmpwi r3, 0
/* 803EC1BC  41 82 00 0C */	beq lbl_803EC1C8
/* 803EC1C0  38 60 00 16 */	li r3, 0x16
/* 803EC1C4  48 00 00 58 */	b lbl_803EC21C
lbl_803EC1C8:
/* 803EC1C8  38 60 00 04 */	li r3, 4
/* 803EC1CC  38 80 00 10 */	li r4, 0x10
/* 803EC1D0  4B FB 19 31 */	bl mEv_check_status
/* 803EC1D4  2C 03 00 00 */	cmpwi r3, 0
/* 803EC1D8  41 82 00 0C */	beq lbl_803EC1E4
/* 803EC1DC  38 60 00 65 */	li r3, 0x65
/* 803EC1E0  48 00 00 3C */	b lbl_803EC21C
lbl_803EC1E4:
/* 803EC1E4  38 60 00 05 */	li r3, 5
/* 803EC1E8  38 80 00 10 */	li r4, 0x10
/* 803EC1EC  4B FB 19 15 */	bl mEv_check_status
/* 803EC1F0  2C 03 00 00 */	cmpwi r3, 0
/* 803EC1F4  41 82 00 0C */	beq lbl_803EC200
/* 803EC1F8  38 60 00 66 */	li r3, 0x66
/* 803EC1FC  48 00 00 20 */	b lbl_803EC21C
lbl_803EC200:
/* 803EC200  38 60 00 23 */	li r3, 0x23
/* 803EC204  38 80 00 10 */	li r4, 0x10
/* 803EC208  4B FB 18 F9 */	bl mEv_check_status
/* 803EC20C  2C 03 00 00 */	cmpwi r3, 0
/* 803EC210  38 60 00 FF */	li r3, 0xff
/* 803EC214  41 82 00 08 */	beq lbl_803EC21C
/* 803EC218  38 60 00 67 */	li r3, 0x67
lbl_803EC21C:
/* 803EC21C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 803EC220  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 803EC224  83 C1 00 08 */	lwz r30, 8(r1)
/* 803EC228  7C 08 03 A6 */	mtlr r0
/* 803EC22C  38 21 00 10 */	addi r1, r1, 0x10
/* 803EC230  4E 80 00 20 */	blr 
