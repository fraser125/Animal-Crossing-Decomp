lbl_803FEA30:
/* 803FEA30  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803FEA34  7C 08 02 A6 */	mflr r0
/* 803FEA38  90 01 00 24 */	stw r0, 0x24(r1)
/* 803FEA3C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FEA40  4B C9 C4 95 */	bl func_8009AED4
/* 803FEA44  80 A3 00 00 */	lwz r5, 0(r3)
/* 803FEA48  7C 9D 23 78 */	mr r29, r4
/* 803FEA4C  2C 05 FF FF */	cmpwi r5, -1
/* 803FEA50  41 82 00 B8 */	beq lbl_803FEB08
/* 803FEA54  1C 85 00 94 */	mulli r4, r5, 0x94
/* 803FEA58  3B C4 00 54 */	addi r30, r4, 0x54
/* 803FEA5C  7F C3 F2 14 */	add r30, r3, r30
/* 803FEA60  80 1E 00 7C */	lwz r0, 0x7c(r30)
/* 803FEA64  28 00 00 00 */	cmplwi r0, 0
/* 803FEA68  41 82 00 98 */	beq lbl_803FEB00
/* 803FEA6C  7C BF 2B 78 */	mr r31, r5
/* 803FEA70  38 7E 00 74 */	addi r3, r30, 0x74
/* 803FEA74  38 80 20 00 */	li r4, 0x2000
/* 803FEA78  4B FF 8E 29 */	bl mCD_check_card
/* 803FEA7C  2C 03 00 01 */	cmpwi r3, 1
/* 803FEA80  40 82 00 80 */	bne lbl_803FEB00
/* 803FEA84  80 9E 00 7C */	lwz r4, 0x7c(r30)
/* 803FEA88  7F E3 FB 78 */	mr r3, r31
/* 803FEA8C  38 A0 00 00 */	li r5, 0
/* 803FEA90  4B C9 1C 6D */	bl CARDMount
/* 803FEA94  90 7E 00 74 */	stw r3, 0x74(r30)
/* 803FEA98  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 803FEA9C  2C 00 00 00 */	cmpwi r0, 0
/* 803FEAA0  41 82 00 0C */	beq lbl_803FEAAC
/* 803FEAA4  2C 00 FF FA */	cmpwi r0, -6
/* 803FEAA8  40 82 00 40 */	bne lbl_803FEAE8
lbl_803FEAAC:
/* 803FEAAC  7F E3 FB 78 */	mr r3, r31
/* 803FEAB0  4B C9 12 C9 */	bl CARDCheck
/* 803FEAB4  90 7E 00 74 */	stw r3, 0x74(r30)
/* 803FEAB8  80 1E 00 74 */	lwz r0, 0x74(r30)
/* 803FEABC  2C 00 00 00 */	cmpwi r0, 0
/* 803FEAC0  40 82 00 18 */	bne lbl_803FEAD8
/* 803FEAC4  80 9D 00 00 */	lwz r4, 0(r29)
/* 803FEAC8  38 60 00 01 */	li r3, 1
/* 803FEACC  38 04 00 01 */	addi r0, r4, 1
/* 803FEAD0  90 1D 00 00 */	stw r0, 0(r29)
/* 803FEAD4  48 00 00 38 */	b lbl_803FEB0C
lbl_803FEAD8:
/* 803FEAD8  7F E3 FB 78 */	mr r3, r31
/* 803FEADC  4B C9 1D 05 */	bl CARDUnmount
/* 803FEAE0  38 60 FF FF */	li r3, -1
/* 803FEAE4  48 00 00 28 */	b lbl_803FEB0C
lbl_803FEAE8:
/* 803FEAE8  2C 00 FF F3 */	cmpwi r0, -13
/* 803FEAEC  40 82 00 0C */	bne lbl_803FEAF8
/* 803FEAF0  7F E3 FB 78 */	mr r3, r31
/* 803FEAF4  4B C9 1C ED */	bl CARDUnmount
lbl_803FEAF8:
/* 803FEAF8  38 60 FF FF */	li r3, -1
/* 803FEAFC  48 00 00 10 */	b lbl_803FEB0C
lbl_803FEB00:
/* 803FEB00  38 60 FF FF */	li r3, -1
/* 803FEB04  48 00 00 08 */	b lbl_803FEB0C
lbl_803FEB08:
/* 803FEB08  38 60 FF FF */	li r3, -1
lbl_803FEB0C:
/* 803FEB0C  39 61 00 20 */	addi r11, r1, 0x20
/* 803FEB10  4B C9 C4 11 */	bl func_8009AF20
/* 803FEB14  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803FEB18  7C 08 03 A6 */	mtlr r0
/* 803FEB1C  38 21 00 20 */	addi r1, r1, 0x20
/* 803FEB20  4E 80 00 20 */	blr 
