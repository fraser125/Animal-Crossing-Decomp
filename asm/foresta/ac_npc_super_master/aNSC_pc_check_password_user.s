lbl_805813F0:
/* 805813F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805813F4  7C 08 02 A6 */	mflr r0
/* 805813F8  38 80 00 00 */	li r4, 0
/* 805813FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 80581400  88 03 00 05 */	lbz r0, 5(r3)
/* 80581404  28 00 00 01 */	cmplwi r0, 1
/* 80581408  40 82 00 1C */	bne lbl_80581424
/* 8058140C  4B E3 D7 35 */	bl mMpswd_check_name
/* 80581410  2C 03 00 01 */	cmpwi r3, 1
/* 80581414  40 82 00 0C */	bne lbl_80581420
/* 80581418  38 80 00 05 */	li r4, 5
/* 8058141C  48 00 00 08 */	b lbl_80581424
lbl_80581420:
/* 80581420  38 80 00 08 */	li r4, 8
lbl_80581424:
/* 80581424  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80581428  7C 83 23 78 */	mr r3, r4
/* 8058142C  7C 08 03 A6 */	mtlr r0
/* 80581430  38 21 00 10 */	addi r1, r1, 0x10
/* 80581434  4E 80 00 20 */	blr 