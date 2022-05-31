lbl_805AAD2C:
/* 805AAD2C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AAD30  7C 08 02 A6 */	mflr r0
/* 805AAD34  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AAD38  4B E2 E9 09 */	bl get_player_actor_withoutCheck
/* 805AAD3C  A8 03 00 36 */	lha r0, 0x36(r3)
/* 805AAD40  38 A0 00 00 */	li r5, 0
/* 805AAD44  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805AAD48  28 00 40 00 */	cmplwi r0, 0x4000
/* 805AAD4C  40 81 00 24 */	ble lbl_805AAD70
/* 805AAD50  28 00 80 00 */	cmplwi r0, 0x8000
/* 805AAD54  40 80 00 1C */	bge lbl_805AAD70
/* 805AAD58  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064A630@ha */
/* 805AAD5C  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805AAD60  C0 04 A6 30 */	lfs f0, lit_488@l(r4)  /* 0x8064A630@l */
/* 805AAD64  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805AAD68  40 81 00 08 */	ble lbl_805AAD70
/* 805AAD6C  38 A0 00 01 */	li r5, 1
lbl_805AAD70:
/* 805AAD70  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AAD74  7C A3 2B 78 */	mr r3, r5
/* 805AAD78  7C 08 03 A6 */	mtlr r0
/* 805AAD7C  38 21 00 10 */	addi r1, r1, 0x10
/* 805AAD80  4E 80 00 20 */	blr 
