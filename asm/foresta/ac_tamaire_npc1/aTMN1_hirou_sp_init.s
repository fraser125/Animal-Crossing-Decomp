lbl_8058B108:
/* 8058B108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058B10C  7C 08 02 A6 */	mflr r0
/* 8058B110  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058B114  88 03 09 AF */	lbz r0, 0x9af(r3)
/* 8058B118  28 00 00 00 */	cmplwi r0, 0
/* 8058B11C  40 82 00 10 */	bne lbl_8058B12C
/* 8058B120  38 A0 00 06 */	li r5, 6
/* 8058B124  48 00 01 29 */	bl aTMN1_setup_think_proc
/* 8058B128  48 00 00 20 */	b lbl_8058B148
lbl_8058B12C:
/* 8058B12C  A9 03 09 A6 */	lha r8, 0x9a6(r3)
/* 8058B130  38 80 00 04 */	li r4, 4
/* 8058B134  A9 23 09 A8 */	lha r9, 0x9a8(r3)
/* 8058B138  38 A0 00 03 */	li r5, 3
/* 8058B13C  38 C0 00 03 */	li r6, 3
/* 8058B140  38 E0 00 00 */	li r7, 0
/* 8058B144  4B FF F1 75 */	bl aTMN1_set_request_act
lbl_8058B148:
/* 8058B148  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058B14C  7C 08 03 A6 */	mtlr r0
/* 8058B150  38 21 00 10 */	addi r1, r1, 0x10
/* 8058B154  4E 80 00 20 */	blr 