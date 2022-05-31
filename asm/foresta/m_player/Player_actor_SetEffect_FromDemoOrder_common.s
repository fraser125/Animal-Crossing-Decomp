lbl_804FADB0:
/* 804FADB0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804FADB4  7C 08 02 A6 */	mflr r0
/* 804FADB8  2C 05 00 00 */	cmpwi r5, 0
/* 804FADBC  7C 6B 1B 78 */	mr r11, r3
/* 804FADC0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804FADC4  40 81 00 68 */	ble lbl_804FAE2C
/* 804FADC8  2C 05 00 FD */	cmpwi r5, 0xfd
/* 804FADCC  41 82 00 08 */	beq lbl_804FADD4
/* 804FADD0  48 00 00 5C */	b lbl_804FAE2C
lbl_804FADD4:
/* 804FADD4  80 CB 10 38 */	lwz r6, 0x1038(r11)
/* 804FADD8  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 804FADDC  80 0B 10 3C */	lwz r0, 0x103c(r11)
/* 804FADE0  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 804FADE4  3C 63 00 02 */	addis r3, r3, 2
/* 804FADE8  3C A0 00 01 */	lis r5, 0x0001 /* 0x0000FFFF@ha */
/* 804FADEC  90 C1 00 08 */	stw r6, 8(r1)
/* 804FADF0  7C 87 23 78 */	mr r7, r4
/* 804FADF4  80 C3 60 9C */	lwz r6, 0x609c(r3)
/* 804FADF8  38 81 00 08 */	addi r4, r1, 8
/* 804FADFC  90 01 00 0C */	stw r0, 0xc(r1)
/* 804FAE00  39 05 FF FF */	addi r8, r5, 0xFFFF /* 0x0000FFFF@l */
/* 804FAE04  38 60 00 67 */	li r3, 0x67
/* 804FAE08  38 A0 00 02 */	li r5, 2
/* 804FAE0C  80 0B 10 40 */	lwz r0, 0x1040(r11)
/* 804FAE10  39 20 00 00 */	li r9, 0
/* 804FAE14  39 40 00 00 */	li r10, 0
/* 804FAE18  90 01 00 10 */	stw r0, 0x10(r1)
/* 804FAE1C  81 86 00 00 */	lwz r12, 0(r6)
/* 804FAE20  A8 CB 00 DE */	lha r6, 0xde(r11)
/* 804FAE24  7D 89 03 A6 */	mtctr r12
/* 804FAE28  4E 80 04 21 */	bctrl 
lbl_804FAE2C:
/* 804FAE2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804FAE30  7C 08 03 A6 */	mtlr r0
/* 804FAE34  38 21 00 20 */	addi r1, r1, 0x20
/* 804FAE38  4E 80 00 20 */	blr 
