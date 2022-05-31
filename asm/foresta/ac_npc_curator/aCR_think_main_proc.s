lbl_8054B3E8:
/* 8054B3E8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054B3EC  7C 08 02 A6 */	mflr r0
/* 8054B3F0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054B3F4  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8054B3F8  7C 7F 1B 78 */	mr r31, r3
/* 8054B3FC  93 C1 00 08 */	stw r30, 8(r1)
/* 8054B400  7C 9E 23 78 */	mr r30, r4
/* 8054B404  88 03 07 F6 */	lbz r0, 0x7f6(r3)
/* 8054B408  28 00 00 FF */	cmplwi r0, 0xff
/* 8054B40C  40 82 00 0C */	bne lbl_8054B418
/* 8054B410  4B FF FD 89 */	bl aCR_set_request_act
/* 8054B414  48 00 00 58 */	b lbl_8054B46C
lbl_8054B418:
/* 8054B418  88 1F 07 F5 */	lbz r0, 0x7f5(r31)
/* 8054B41C  28 00 00 10 */	cmplwi r0, 0x10
/* 8054B420  40 82 00 4C */	bne lbl_8054B46C
/* 8054B424  4B FF FD 91 */	bl aCR_check_sleep_time
/* 8054B428  2C 03 00 01 */	cmpwi r3, 1
/* 8054B42C  40 82 00 24 */	bne lbl_8054B450
/* 8054B430  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8054B434  2C 00 00 00 */	cmpwi r0, 0
/* 8054B438  40 82 00 34 */	bne lbl_8054B46C
/* 8054B43C  7F E3 FB 78 */	mr r3, r31
/* 8054B440  7F C4 F3 78 */	mr r4, r30
/* 8054B444  38 A0 00 01 */	li r5, 1
/* 8054B448  4B FF FE 45 */	bl aCR_setupAction
/* 8054B44C  48 00 00 20 */	b lbl_8054B46C
lbl_8054B450:
/* 8054B450  80 1F 09 94 */	lwz r0, 0x994(r31)
/* 8054B454  2C 00 00 02 */	cmpwi r0, 2
/* 8054B458  40 82 00 14 */	bne lbl_8054B46C
/* 8054B45C  7F E3 FB 78 */	mr r3, r31
/* 8054B460  7F C4 F3 78 */	mr r4, r30
/* 8054B464  38 A0 00 00 */	li r5, 0
/* 8054B468  4B FF FE 25 */	bl aCR_setupAction
lbl_8054B46C:
/* 8054B46C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054B470  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8054B474  83 C1 00 08 */	lwz r30, 8(r1)
/* 8054B478  7C 08 03 A6 */	mtlr r0
/* 8054B47C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054B480  4E 80 00 20 */	blr 
