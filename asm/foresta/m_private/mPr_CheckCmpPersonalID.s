lbl_803E0144:
/* 803E0144  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803E0148  7C 08 02 A6 */	mflr r0
/* 803E014C  90 01 00 24 */	stw r0, 0x24(r1)
/* 803E0150  39 61 00 20 */	addi r11, r1, 0x20
/* 803E0154  4B CB AD 81 */	bl func_8009AED4
/* 803E0158  7C 7D 1B 78 */	mr r29, r3
/* 803E015C  7C 9E 23 78 */	mr r30, r4
/* 803E0160  A0 63 00 12 */	lhz r3, 0x12(r3)
/* 803E0164  3B E0 00 00 */	li r31, 0
/* 803E0168  A0 04 00 12 */	lhz r0, 0x12(r4)
/* 803E016C  7C 03 00 40 */	cmplw r3, r0
/* 803E0170  40 82 00 40 */	bne lbl_803E01B0
/* 803E0174  A0 7D 00 10 */	lhz r3, 0x10(r29)
/* 803E0178  A0 1E 00 10 */	lhz r0, 0x10(r30)
/* 803E017C  7C 03 00 40 */	cmplw r3, r0
/* 803E0180  40 82 00 30 */	bne lbl_803E01B0
/* 803E0184  38 7D 00 08 */	addi r3, r29, 8
/* 803E0188  38 9E 00 08 */	addi r4, r30, 8
/* 803E018C  4B FD 36 81 */	bl mLd_CheckCmpLandName
/* 803E0190  2C 03 00 01 */	cmpwi r3, 1
/* 803E0194  40 82 00 1C */	bne lbl_803E01B0
/* 803E0198  7F A3 EB 78 */	mr r3, r29
/* 803E019C  7F C4 F3 78 */	mr r4, r30
/* 803E01A0  4B FF FD 7D */	bl mPr_CheckCmpPlayerName
/* 803E01A4  2C 03 00 01 */	cmpwi r3, 1
/* 803E01A8  40 82 00 08 */	bne lbl_803E01B0
/* 803E01AC  3B E0 00 01 */	li r31, 1
lbl_803E01B0:
/* 803E01B0  7F E3 FB 78 */	mr r3, r31
/* 803E01B4  39 61 00 20 */	addi r11, r1, 0x20
/* 803E01B8  4B CB AD 69 */	bl func_8009AF20
/* 803E01BC  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803E01C0  7C 08 03 A6 */	mtlr r0
/* 803E01C4  38 21 00 20 */	addi r1, r1, 0x20
/* 803E01C8  4E 80 00 20 */	blr 
