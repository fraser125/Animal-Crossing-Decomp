lbl_805AA108:
/* 805AA108  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA10C  7C 08 02 A6 */	mflr r0
/* 805AA110  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA114  4B E2 F5 2D */	bl get_player_actor_withoutCheck
/* 805AA118  A8 03 00 36 */	lha r0, 0x36(r3)
/* 805AA11C  38 A0 00 00 */	li r5, 0
/* 805AA120  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805AA124  28 00 60 00 */	cmplwi r0, 0x6000
/* 805AA128  40 81 00 24 */	ble lbl_805AA14C
/* 805AA12C  28 00 A0 00 */	cmplwi r0, 0xa000
/* 805AA130  40 80 00 1C */	bge lbl_805AA14C
/* 805AA134  3C 80 80 65 */	lis r4, lit_466@ha /* 0x8064A5F0@ha */
/* 805AA138  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805AA13C  C0 04 A5 F0 */	lfs f0, lit_466@l(r4)  /* 0x8064A5F0@l */
/* 805AA140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AA144  40 81 00 08 */	ble lbl_805AA14C
/* 805AA148  38 A0 00 01 */	li r5, 1
lbl_805AA14C:
/* 805AA14C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA150  7C A3 2B 78 */	mr r3, r5
/* 805AA154  7C 08 03 A6 */	mtlr r0
/* 805AA158  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA15C  4E 80 00 20 */	blr 
