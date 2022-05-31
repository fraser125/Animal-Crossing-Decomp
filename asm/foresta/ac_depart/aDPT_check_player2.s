lbl_805ACB08:
/* 805ACB08  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805ACB0C  7C 08 02 A6 */	mflr r0
/* 805ACB10  90 01 00 14 */	stw r0, 0x14(r1)
/* 805ACB14  4B E2 CB 2D */	bl get_player_actor_withoutCheck
/* 805ACB18  A8 03 00 36 */	lha r0, 0x36(r3)
/* 805ACB1C  38 A0 00 00 */	li r5, 0
/* 805ACB20  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805ACB24  28 00 40 00 */	cmplwi r0, 0x4000
/* 805ACB28  40 81 00 24 */	ble lbl_805ACB4C
/* 805ACB2C  28 00 80 00 */	cmplwi r0, 0x8000
/* 805ACB30  40 80 00 1C */	bge lbl_805ACB4C
/* 805ACB34  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064A6A8@ha */
/* 805ACB38  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805ACB3C  C0 04 A6 A8 */	lfs f0, lit_488@l(r4)  /* 0x8064A6A8@l */
/* 805ACB40  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805ACB44  40 81 00 08 */	ble lbl_805ACB4C
/* 805ACB48  38 A0 00 01 */	li r5, 1
lbl_805ACB4C:
/* 805ACB4C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805ACB50  7C A3 2B 78 */	mr r3, r5
/* 805ACB54  7C 08 03 A6 */	mtlr r0
/* 805ACB58  38 21 00 10 */	addi r1, r1, 0x10
/* 805ACB5C  4E 80 00 20 */	blr 
