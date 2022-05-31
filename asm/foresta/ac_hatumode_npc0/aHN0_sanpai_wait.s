lbl_8052B8DC:
/* 8052B8DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052B8E0  7C 08 02 A6 */	mflr r0
/* 8052B8E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052B8E8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8052B8EC  7C 9F 23 78 */	mr r31, r4
/* 8052B8F0  38 80 00 07 */	li r4, 7
/* 8052B8F4  93 C1 00 08 */	stw r30, 8(r1)
/* 8052B8F8  7C 7E 1B 78 */	mr r30, r3
/* 8052B8FC  38 60 00 01 */	li r3, 1
/* 8052B900  4B E7 24 CD */	bl mEv_get_save_area
/* 8052B904  A0 83 00 02 */	lhz r4, 2(r3)
/* 8052B908  54 80 04 21 */	rlwinm. r0, r4, 0, 0x10, 0x10
/* 8052B90C  40 82 00 40 */	bne lbl_8052B94C
/* 8052B910  60 80 40 00 */	ori r0, r4, 0x4000
/* 8052B914  38 E0 00 01 */	li r7, 1
/* 8052B918  B0 03 00 02 */	sth r0, 2(r3)
/* 8052B91C  7F E4 FB 78 */	mr r4, r31
/* 8052B920  38 A0 00 0A */	li r5, 0xa
/* 8052B924  A0 DE 00 06 */	lhz r6, 6(r30)
/* 8052B928  A1 03 00 04 */	lhz r8, 4(r3)
/* 8052B92C  3C C6 FF FF */	addis r6, r6, 0xffff
/* 8052B930  38 06 2F A8 */	addi r0, r6, 0x2fa8
/* 8052B934  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8052B938  7C E0 00 30 */	slw r0, r7, r0
/* 8052B93C  7D 00 00 78 */	andc r0, r8, r0
/* 8052B940  B0 03 00 04 */	sth r0, 4(r3)
/* 8052B944  7F C3 F3 78 */	mr r3, r30
/* 8052B948  48 00 01 01 */	bl aHN0_setup_think_proc
lbl_8052B94C:
/* 8052B94C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052B950  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8052B954  83 C1 00 08 */	lwz r30, 8(r1)
/* 8052B958  7C 08 03 A6 */	mtlr r0
/* 8052B95C  38 21 00 10 */	addi r1, r1, 0x10
/* 8052B960  4E 80 00 20 */	blr 
