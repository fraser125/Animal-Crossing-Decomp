lbl_805CDA90:
/* 805CDA90  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805CDA94  7C 08 02 A6 */	mflr r0
/* 805CDA98  90 01 00 24 */	stw r0, 0x24(r1)
/* 805CDA9C  39 61 00 20 */	addi r11, r1, 0x20
/* 805CDAA0  4B AC D4 2D */	bl func_8009AECC
/* 805CDAA4  7C 9B 23 78 */	mr r27, r4
/* 805CDAA8  7C 7D 1B 78 */	mr r29, r3
/* 805CDAAC  80 04 00 14 */	lwz r0, 0x14(r4)
/* 805CDAB0  80 A3 00 2C */	lwz r5, 0x2c(r3)
/* 805CDAB4  1C 80 00 48 */	mulli r4, r0, 0x48
/* 805CDAB8  83 E5 09 DC */	lwz r31, 0x9dc(r5)
/* 805CDABC  38 84 00 54 */	addi r4, r4, 0x54
/* 805CDAC0  7C 85 22 14 */	add r4, r5, r4
/* 805CDAC4  80 04 00 04 */	lwz r0, 4(r4)
/* 805CDAC8  2C 00 00 00 */	cmpwi r0, 0
/* 805CDACC  40 82 01 18 */	bne lbl_805CDBE4
/* 805CDAD0  80 04 00 30 */	lwz r0, 0x30(r4)
/* 805CDAD4  2C 00 00 04 */	cmpwi r0, 4
/* 805CDAD8  40 82 01 0C */	bne lbl_805CDBE4
/* 805CDADC  80 04 00 00 */	lwz r0, 0(r4)
/* 805CDAE0  2C 00 00 0F */	cmpwi r0, 0xf
/* 805CDAE4  40 82 00 EC */	bne lbl_805CDBD0
/* 805CDAE8  80 04 00 3C */	lwz r0, 0x3c(r4)
/* 805CDAEC  2C 00 00 00 */	cmpwi r0, 0
/* 805CDAF0  40 82 00 B4 */	bne lbl_805CDBA4
/* 805CDAF4  48 01 C1 81 */	bl mNW_next_data
/* 805CDAF8  3C 80 00 01 */	lis r4, 0x0001 /* 0x0000CCA0@ha */
/* 805CDAFC  80 7F 00 00 */	lwz r3, 0(r31)
/* 805CDB00  38 84 CC A0 */	addi r4, r4, 0xCCA0 /* 0x0000CCA0@l */
/* 805CDB04  38 A0 00 00 */	li r5, 0
/* 805CDB08  4B E2 C4 D5 */	bl mCD_save_data_main_to_aram
/* 805CDB0C  80 BD 00 2C */	lwz r5, 0x2c(r29)
/* 805CDB10  7F 63 DB 78 */	mr r3, r27
/* 805CDB14  38 80 00 00 */	li r4, 0
/* 805CDB18  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805CDB1C  7D 89 03 A6 */	mtctr r12
/* 805CDB20  4E 80 04 21 */	bctrl 
/* 805CDB24  3C 60 81 14 */	lis r3, common_data@ha /* 0x81138538@ha */
/* 805CDB28  38 63 85 38 */	addi r3, r3, common_data@l /* 0x81138538@l */
/* 805CDB2C  3C 63 00 02 */	addis r3, r3, 2
/* 805CDB30  80 63 61 3C */	lwz r3, 0x613c(r3)
/* 805CDB34  A0 03 10 88 */	lhz r0, 0x1088(r3)
/* 805CDB38  28 00 01 00 */	cmplwi r0, 0x100
/* 805CDB3C  41 80 00 A8 */	blt lbl_805CDBE4
/* 805CDB40  8B 9F 00 27 */	lbz r28, 0x27(r31)
/* 805CDB44  28 1C 00 FF */	cmplwi r28, 0xff
/* 805CDB48  41 82 00 9C */	beq lbl_805CDBE4
/* 805CDB4C  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 805CDB50  28 00 00 FF */	cmplwi r0, 0xff
/* 805CDB54  41 82 00 90 */	beq lbl_805CDBE4
/* 805CDB58  3B 60 00 00 */	li r27, 0
lbl_805CDB5C:
/* 805CDB5C  7F A3 EB 78 */	mr r3, r29
/* 805CDB60  7F 64 DB 78 */	mr r4, r27
/* 805CDB64  48 01 BC BD */	bl mNW_get_image_no
/* 805CDB68  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 805CDB6C  7C 1C 00 00 */	cmpw r28, r0
/* 805CDB70  40 82 00 08 */	bne lbl_805CDB78
/* 805CDB74  7F 7E DB 78 */	mr r30, r27
lbl_805CDB78:
/* 805CDB78  3B 7B 00 01 */	addi r27, r27, 1
/* 805CDB7C  2C 1B 00 08 */	cmpwi r27, 8
/* 805CDB80  41 80 FF DC */	blt lbl_805CDB5C
/* 805CDB84  7C 7F F2 14 */	add r3, r31, r30
/* 805CDB88  88 1F 00 28 */	lbz r0, 0x28(r31)
/* 805CDB8C  88 63 00 29 */	lbz r3, 0x29(r3)
/* 805CDB90  7C 03 00 40 */	cmplw r3, r0
/* 805CDB94  41 82 00 50 */	beq lbl_805CDBE4
/* 805CDB98  38 00 00 01 */	li r0, 1
/* 805CDB9C  98 1F 00 0F */	stb r0, 0xf(r31)
/* 805CDBA0  48 00 00 44 */	b lbl_805CDBE4
lbl_805CDBA4:
/* 805CDBA4  2C 00 00 01 */	cmpwi r0, 1
/* 805CDBA8  40 82 00 10 */	bne lbl_805CDBB8
/* 805CDBAC  38 00 00 01 */	li r0, 1
/* 805CDBB0  90 1B 00 04 */	stw r0, 4(r27)
/* 805CDBB4  48 00 00 30 */	b lbl_805CDBE4
lbl_805CDBB8:
/* 805CDBB8  81 85 09 4C */	lwz r12, 0x94c(r5)
/* 805CDBBC  7F 63 DB 78 */	mr r3, r27
/* 805CDBC0  38 80 00 00 */	li r4, 0
/* 805CDBC4  7D 89 03 A6 */	mtctr r12
/* 805CDBC8  4E 80 04 21 */	bctrl 
/* 805CDBCC  48 00 00 18 */	b lbl_805CDBE4
lbl_805CDBD0:
/* 805CDBD0  2C 00 00 0A */	cmpwi r0, 0xa
/* 805CDBD4  40 82 00 10 */	bne lbl_805CDBE4
/* 805CDBD8  38 00 00 01 */	li r0, 1
/* 805CDBDC  90 1B 00 04 */	stw r0, 4(r27)
/* 805CDBE0  90 1B 00 30 */	stw r0, 0x30(r27)
lbl_805CDBE4:
/* 805CDBE4  39 61 00 20 */	addi r11, r1, 0x20
/* 805CDBE8  4B AC D3 31 */	bl func_8009AF18
/* 805CDBEC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 805CDBF0  7C 08 03 A6 */	mtlr r0
/* 805CDBF4  38 21 00 20 */	addi r1, r1, 0x20
/* 805CDBF8  4E 80 00 20 */	blr 
