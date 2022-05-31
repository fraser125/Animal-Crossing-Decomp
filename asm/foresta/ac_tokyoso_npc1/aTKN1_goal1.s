lbl_8058CF10:
/* 8058CF10  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058CF14  7C 08 02 A6 */	mflr r0
/* 8058CF18  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058CF1C  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058CF20  28 00 00 03 */	cmplwi r0, 3
/* 8058CF24  40 82 00 0C */	bne lbl_8058CF30
/* 8058CF28  38 A0 00 11 */	li r5, 0x11
/* 8058CF2C  48 00 05 F1 */	bl aTKN1_setup_think_proc
lbl_8058CF30:
/* 8058CF30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058CF34  7C 08 03 A6 */	mtlr r0
/* 8058CF38  38 21 00 10 */	addi r1, r1, 0x10
/* 8058CF3C  4E 80 00 20 */	blr 
