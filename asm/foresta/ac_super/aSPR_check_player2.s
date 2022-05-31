lbl_805BD268:
/* 805BD268  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805BD26C  7C 08 02 A6 */	mflr r0
/* 805BD270  90 01 00 14 */	stw r0, 0x14(r1)
/* 805BD274  4B E1 C3 CD */	bl get_player_actor_withoutCheck
/* 805BD278  A8 03 00 36 */	lha r0, 0x36(r3)
/* 805BD27C  38 A0 00 00 */	li r5, 0
/* 805BD280  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 805BD284  28 00 40 00 */	cmplwi r0, 0x4000
/* 805BD288  40 81 00 24 */	ble lbl_805BD2AC
/* 805BD28C  28 00 80 00 */	cmplwi r0, 0x8000
/* 805BD290  40 80 00 1C */	bge lbl_805BD2AC
/* 805BD294  3C 80 80 65 */	lis r4, lit_488@ha /* 0x8064AB60@ha */
/* 805BD298  C0 23 00 74 */	lfs f1, 0x74(r3)
/* 805BD29C  C0 04 AB 60 */	lfs f0, lit_488@l(r4)  /* 0x8064AB60@l */
/* 805BD2A0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805BD2A4  40 81 00 08 */	ble lbl_805BD2AC
/* 805BD2A8  38 A0 00 01 */	li r5, 1
lbl_805BD2AC:
/* 805BD2AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805BD2B0  7C A3 2B 78 */	mr r3, r5
/* 805BD2B4  7C 08 03 A6 */	mtlr r0
/* 805BD2B8  38 21 00 10 */	addi r1, r1, 0x10
/* 805BD2BC  4E 80 00 20 */	blr 
