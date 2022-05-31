lbl_8058B988:
/* 8058B988  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B98C  7C 08 02 A6 */	mflr r0
/* 8058B990  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B994  88 03 07 F5 */	lbz r0, 0x7f5(r3)
/* 8058B998  28 00 00 03 */	cmplwi r0, 3
/* 8058B99C  40 82 00 18 */	bne lbl_8058B9B4
/* 8058B9A0  A8 A3 09 A2 */	lha r5, 0x9a2(r3)
/* 8058B9A4  38 05 00 01 */	addi r0, r5, 1
/* 8058B9A8  B0 03 09 A2 */	sth r0, 0x9a2(r3)
/* 8058B9AC  7C 05 07 34 */	extsh r5, r0
/* 8058B9B0  48 00 05 F1 */	bl aTKN0_setup_think_proc
lbl_8058B9B4:
/* 8058B9B4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B9B8  7C 08 03 A6 */	mtlr r0
/* 8058B9BC  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B9C0  4E 80 00 20 */	blr 
