lbl_805CCD88:
/* 805CCD88  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 805CCD8C  7C 08 02 A6 */	mflr r0
/* 805CCD90  90 01 00 34 */	stw r0, 0x34(r1)
/* 805CCD94  39 61 00 30 */	addi r11, r1, 0x30
/* 805CCD98  4B AC E1 2D */	bl func_8009AEC4
/* 805CCD9C  7C 79 1B 78 */	mr r25, r3
/* 805CCDA0  7C BB 2B 78 */	mr r27, r5
/* 805CCDA4  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805CCDA8  7C 9A 23 78 */	mr r26, r4
/* 805CCDAC  83 E5 00 00 */	lwz r31, 0(r5)
/* 805CCDB0  3B A0 00 07 */	li r29, 7
/* 805CCDB4  83 C3 09 C0 */	lwz r30, 0x9c0(r3)
/* 805CCDB8  3B 9E 0B AF */	addi r28, r30, 0xbaf
lbl_805CCDBC:
/* 805CCDBC  2C 1D 00 00 */	cmpwi r29, 0
/* 805CCDC0  41 82 00 28 */	beq lbl_805CCDE8
/* 805CCDC4  88 1C 00 00 */	lbz r0, 0(r28)
/* 805CCDC8  88 7E 0B B2 */	lbz r3, 0xbb2(r30)
/* 805CCDCC  7C 00 18 40 */	cmplw r0, r3
/* 805CCDD0  41 82 00 18 */	beq lbl_805CCDE8
/* 805CCDD4  2C 1D 00 01 */	cmpwi r29, 1
/* 805CCDD8  40 82 00 18 */	bne lbl_805CCDF0
/* 805CCDDC  88 1C FF FF */	lbz r0, -1(r28)
/* 805CCDE0  7C 00 18 40 */	cmplw r0, r3
/* 805CCDE4  40 82 00 0C */	bne lbl_805CCDF0
lbl_805CCDE8:
/* 805CCDE8  39 00 00 01 */	li r8, 1
/* 805CCDEC  48 00 00 08 */	b lbl_805CCDF4
lbl_805CCDF0:
/* 805CCDF0  39 00 00 00 */	li r8, 0
lbl_805CCDF4:
/* 805CCDF4  88 FC 00 00 */	lbz r7, 0(r28)
/* 805CCDF8  7F 23 CB 78 */	mr r3, r25
/* 805CCDFC  7F 44 D3 78 */	mr r4, r26
/* 805CCE00  7F 65 DB 78 */	mr r5, r27
/* 805CCE04  7F E6 FB 78 */	mr r6, r31
/* 805CCE08  4B FF FA CD */	bl mCM_set_page_dl
/* 805CCE0C  37 BD FF FF */	addic. r29, r29, -1
/* 805CCE10  3B 9C FF FF */	addi r28, r28, -1
/* 805CCE14  40 80 FF A8 */	bge lbl_805CCDBC
/* 805CCE18  A8 1E 0B B0 */	lha r0, 0xbb0(r30)
/* 805CCE1C  2C 00 00 00 */	cmpwi r0, 0
/* 805CCE20  40 82 00 20 */	bne lbl_805CCE40
/* 805CCE24  80 D9 00 2C */	lwz r6, 0x2c(r25)
/* 805CCE28  7F 23 CB 78 */	mr r3, r25
/* 805CCE2C  7F 64 DB 78 */	mr r4, r27
/* 805CCE30  38 A0 00 11 */	li r5, 0x11
/* 805CCE34  81 86 09 20 */	lwz r12, 0x920(r6)
/* 805CCE38  7D 89 03 A6 */	mtctr r12
/* 805CCE3C  4E 80 04 21 */	bctrl 
lbl_805CCE40:
/* 805CCE40  39 61 00 30 */	addi r11, r1, 0x30
/* 805CCE44  4B AC E0 CD */	bl func_8009AF10
/* 805CCE48  80 01 00 34 */	lwz r0, 0x34(r1)
/* 805CCE4C  7C 08 03 A6 */	mtlr r0
/* 805CCE50  38 21 00 30 */	addi r1, r1, 0x30
/* 805CCE54  4E 80 00 20 */	blr 
