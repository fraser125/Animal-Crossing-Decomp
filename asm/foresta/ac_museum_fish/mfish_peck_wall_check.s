lbl_804373F4:
/* 804373F4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804373F8  7C 08 02 A6 */	mflr r0
/* 804373FC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80437400  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80437404  7C 7F 1B 78 */	mr r31, r3
/* 80437408  A8 03 06 2E */	lha r0, 0x62e(r3)
/* 8043740C  A8 A3 06 2C */	lha r5, 0x62c(r3)
/* 80437410  54 00 06 FD */	rlwinm. r0, r0, 0, 0x1b, 0x1e
/* 80437414  A8 63 06 0E */	lha r3, 0x60e(r3)
/* 80437418  7C 05 18 50 */	subf r0, r5, r3
/* 8043741C  7C 03 07 34 */	extsh r3, r0
/* 80437420  41 82 00 60 */	beq lbl_80437480
/* 80437424  7C 60 07 35 */	extsh. r0, r3
/* 80437428  7C 03 00 D0 */	neg r0, r3
/* 8043742C  41 80 00 08 */	blt lbl_80437434
/* 80437430  7C 60 1B 78 */	mr r0, r3
lbl_80437434:
/* 80437434  2C 00 20 00 */	cmpwi r0, 0x2000
/* 80437438  40 80 00 48 */	bge lbl_80437480
/* 8043743C  7C 83 23 78 */	mr r3, r4
/* 80437440  4B FA 22 01 */	bl get_player_actor_withoutCheck
/* 80437444  80 A3 00 28 */	lwz r5, 0x28(r3)
/* 80437448  38 81 00 08 */	addi r4, r1, 8
/* 8043744C  80 03 00 2C */	lwz r0, 0x2c(r3)
/* 80437450  90 A1 00 08 */	stw r5, 8(r1)
/* 80437454  90 01 00 0C */	stw r0, 0xc(r1)
/* 80437458  80 03 00 30 */	lwz r0, 0x30(r3)
/* 8043745C  38 7F 05 A0 */	addi r3, r31, 0x5a0
/* 80437460  90 01 00 10 */	stw r0, 0x10(r1)
/* 80437464  4B F8 3B 71 */	bl search_position_distance
/* 80437468  3C 60 80 64 */	lis r3, lit_530@ha /* 0x80644274@ha */
/* 8043746C  C0 03 42 74 */	lfs f0, lit_530@l(r3)  /* 0x80644274@l */
/* 80437470  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80437474  7C 00 00 26 */	mfcr r0
/* 80437478  54 03 0F FE */	srwi r3, r0, 0x1f
/* 8043747C  48 00 00 08 */	b lbl_80437484
lbl_80437480:
/* 80437480  38 60 00 00 */	li r3, 0
lbl_80437484:
/* 80437484  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80437488  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8043748C  7C 08 03 A6 */	mtlr r0
/* 80437490  38 21 00 20 */	addi r1, r1, 0x20
/* 80437494  4E 80 00 20 */	blr 