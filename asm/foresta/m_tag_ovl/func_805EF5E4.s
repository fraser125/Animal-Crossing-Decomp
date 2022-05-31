lbl_805EF5E4:
/* 805EF5E4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805EF5E8  7C 08 02 A6 */	mflr r0
/* 805EF5EC  90 01 00 14 */	stw r0, 0x14(r1)
/* 805EF5F0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805EF5F4  3B E0 00 00 */	li r31, 0
/* 805EF5F8  80 63 00 2C */	lwz r3, 0x2c(r3)
/* 805EF5FC  80 63 09 80 */	lwz r3, 0x980(r3)
/* 805EF600  A0 03 02 34 */	lhz r0, 0x234(r3)
/* 805EF604  28 00 00 00 */	cmplwi r0, 0
/* 805EF608  40 82 00 18 */	bne lbl_805EF620
/* 805EF60C  38 63 02 36 */	addi r3, r3, 0x236
/* 805EF610  4B DC D1 91 */	bl mMl_check_not_used_mail
/* 805EF614  2C 03 00 01 */	cmpwi r3, 1
/* 805EF618  40 82 00 08 */	bne lbl_805EF620
/* 805EF61C  3B E0 00 01 */	li r31, 1
lbl_805EF620:
/* 805EF620  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805EF624  7F E3 FB 78 */	mr r3, r31
/* 805EF628  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805EF62C  7C 08 03 A6 */	mtlr r0
/* 805EF630  38 21 00 10 */	addi r1, r1, 0x10
/* 805EF634  4E 80 00 20 */	blr 
