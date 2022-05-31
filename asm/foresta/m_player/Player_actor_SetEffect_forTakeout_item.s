lbl_804DADF4:
/* 804DADF4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804DADF8  7C 08 02 A6 */	mflr r0
/* 804DADFC  7C 66 1B 78 */	mr r6, r3
/* 804DAE00  90 01 00 24 */	stw r0, 0x24(r1)
/* 804DAE04  88 A3 11 2B */	lbz r5, 0x112b(r3)
/* 804DAE08  38 60 00 00 */	li r3, 0
/* 804DAE0C  7C A0 07 75 */	extsb. r0, r5
/* 804DAE10  41 80 00 14 */	blt lbl_804DAE24
/* 804DAE14  7C A0 07 74 */	extsb r0, r5
/* 804DAE18  2C 00 00 09 */	cmpwi r0, 9
/* 804DAE1C  40 80 00 08 */	bge lbl_804DAE24
/* 804DAE20  38 60 00 01 */	li r3, 1
lbl_804DAE24:
/* 804DAE24  2C 03 00 00 */	cmpwi r3, 0
/* 804DAE28  41 82 00 60 */	beq lbl_804DAE88
/* 804DAE2C  80 E6 00 28 */	lwz r7, 0x28(r6)
/* 804DAE30  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DAE34  80 06 00 2C */	lwz r0, 0x2c(r6)
/* 804DAE38  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DAE3C  3C 63 00 02 */	addis r3, r3, 2
/* 804DAE40  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804DAE44  90 E1 00 14 */	stw r7, 0x14(r1)
/* 804DAE48  7C 87 23 78 */	mr r7, r4
/* 804DAE4C  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 804DAE50  38 81 00 14 */	addi r4, r1, 0x14
/* 804DAE54  90 01 00 18 */	stw r0, 0x18(r1)
/* 804DAE58  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804DAE5C  38 60 00 56 */	li r3, 0x56
/* 804DAE60  38 A0 00 02 */	li r5, 2
/* 804DAE64  80 06 00 30 */	lwz r0, 0x30(r6)
/* 804DAE68  39 20 00 01 */	li r9, 1
/* 804DAE6C  39 40 00 00 */	li r10, 0
/* 804DAE70  90 01 00 1C */	stw r0, 0x1c(r1)
/* 804DAE74  81 8B 00 00 */	lwz r12, 0(r11)
/* 804DAE78  A8 C6 00 DE */	lha r6, 0xde(r6)
/* 804DAE7C  7D 89 03 A6 */	mtctr r12
/* 804DAE80  4E 80 04 21 */	bctrl 
/* 804DAE84  48 00 00 80 */	b lbl_804DAF04
lbl_804DAE88:
/* 804DAE88  7C A0 07 74 */	extsb r0, r5
/* 804DAE8C  38 60 00 00 */	li r3, 0
/* 804DAE90  2C 00 00 35 */	cmpwi r0, 0x35
/* 804DAE94  41 80 00 10 */	blt lbl_804DAEA4
/* 804DAE98  2C 00 00 37 */	cmpwi r0, 0x37
/* 804DAE9C  40 80 00 08 */	bge lbl_804DAEA4
/* 804DAEA0  38 60 00 01 */	li r3, 1
lbl_804DAEA4:
/* 804DAEA4  2C 03 00 00 */	cmpwi r3, 0
/* 804DAEA8  41 82 00 5C */	beq lbl_804DAF04
/* 804DAEAC  80 E6 00 28 */	lwz r7, 0x28(r6)
/* 804DAEB0  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804DAEB4  80 06 00 2C */	lwz r0, 0x2c(r6)
/* 804DAEB8  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804DAEBC  3C 63 00 02 */	addis r3, r3, 2
/* 804DAEC0  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804DAEC4  90 E1 00 08 */	stw r7, 8(r1)
/* 804DAEC8  7C 87 23 78 */	mr r7, r4
/* 804DAECC  81 63 60 9C */	lwz r11, 0x609c(r3)
/* 804DAED0  38 81 00 08 */	addi r4, r1, 8
/* 804DAED4  90 01 00 0C */	stw r0, 0xc(r1)
/* 804DAED8  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804DAEDC  38 60 00 56 */	li r3, 0x56
/* 804DAEE0  38 A0 00 02 */	li r5, 2
/* 804DAEE4  80 06 00 30 */	lwz r0, 0x30(r6)
/* 804DAEE8  39 20 00 02 */	li r9, 2
/* 804DAEEC  39 40 00 00 */	li r10, 0
/* 804DAEF0  90 01 00 10 */	stw r0, 0x10(r1)
/* 804DAEF4  81 8B 00 00 */	lwz r12, 0(r11)
/* 804DAEF8  A8 C6 00 DE */	lha r6, 0xde(r6)
/* 804DAEFC  7D 89 03 A6 */	mtctr r12
/* 804DAF00  4E 80 04 21 */	bctrl 
lbl_804DAF04:
/* 804DAF04  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804DAF08  7C 08 03 A6 */	mtlr r0
/* 804DAF0C  38 21 00 20 */	addi r1, r1, 0x20
/* 804DAF10  4E 80 00 20 */	blr 
