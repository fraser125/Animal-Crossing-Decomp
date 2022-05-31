lbl_8058ADDC:
/* 8058ADDC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058ADE0  7C 08 02 A6 */	mflr r0
/* 8058ADE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058ADE8  7C 60 1B 78 */	mr r0, r3
/* 8058ADEC  38 60 00 07 */	li r3, 7
/* 8058ADF0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8058ADF4  7C 1F 03 78 */	mr r31, r0
/* 8058ADF8  93 C1 00 08 */	stw r30, 8(r1)
/* 8058ADFC  7C 9E 23 78 */	mr r30, r4
/* 8058AE00  7C 04 03 78 */	mr r4, r0
/* 8058AE04  4B E0 F4 61 */	bl mDemo_Check
/* 8058AE08  2C 03 00 01 */	cmpwi r3, 1
/* 8058AE0C  41 82 00 68 */	beq lbl_8058AE74
/* 8058AE10  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058AE14  28 00 00 FF */	cmplwi r0, 0xff
/* 8058AE18  40 82 00 0C */	bne lbl_8058AE24
/* 8058AE1C  38 00 00 17 */	li r0, 0x17
/* 8058AE20  90 1F 08 40 */	stw r0, 0x840(r31)
lbl_8058AE24:
/* 8058AE24  88 1F 09 AA */	lbz r0, 0x9aa(r31)
/* 8058AE28  28 00 00 04 */	cmplwi r0, 4
/* 8058AE2C  40 82 00 1C */	bne lbl_8058AE48
/* 8058AE30  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 8058AE34  7F E3 FB 78 */	mr r3, r31
/* 8058AE38  7F C4 F3 78 */	mr r4, r30
/* 8058AE3C  7D 89 03 A6 */	mtctr r12
/* 8058AE40  4E 80 04 21 */	bctrl 
/* 8058AE44  48 00 00 30 */	b lbl_8058AE74
lbl_8058AE48:
/* 8058AE48  88 1F 07 F6 */	lbz r0, 0x7f6(r31)
/* 8058AE4C  28 00 00 FF */	cmplwi r0, 0xff
/* 8058AE50  41 82 00 10 */	beq lbl_8058AE60
/* 8058AE54  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8058AE58  28 00 00 00 */	cmplwi r0, 0
/* 8058AE5C  40 82 00 18 */	bne lbl_8058AE74
lbl_8058AE60:
/* 8058AE60  81 9F 09 94 */	lwz r12, 0x994(r31)
/* 8058AE64  7F E3 FB 78 */	mr r3, r31
/* 8058AE68  7F C4 F3 78 */	mr r4, r30
/* 8058AE6C  7D 89 03 A6 */	mtctr r12
/* 8058AE70  4E 80 04 21 */	bctrl 
lbl_8058AE74:
/* 8058AE74  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058AE78  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8058AE7C  83 C1 00 08 */	lwz r30, 8(r1)
/* 8058AE80  7C 08 03 A6 */	mtlr r0
/* 8058AE84  38 21 00 10 */	addi r1, r1, 0x10
/* 8058AE88  4E 80 00 20 */	blr 
