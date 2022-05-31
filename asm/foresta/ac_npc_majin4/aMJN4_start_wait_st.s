lbl_805592AC:
/* 805592AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805592B0  7C 08 02 A6 */	mflr r0
/* 805592B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805592B8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805592BC  7C 9F 23 78 */	mr r31, r4
/* 805592C0  93 C1 00 08 */	stw r30, 8(r1)
/* 805592C4  7C 7E 1B 78 */	mr r30, r3
/* 805592C8  7F E3 FB 78 */	mr r3, r31
/* 805592CC  4B E8 03 75 */	bl get_player_actor_withoutCheck
/* 805592D0  28 03 00 00 */	cmplwi r3, 0
/* 805592D4  41 82 00 28 */	beq lbl_805592FC
/* 805592D8  3C 80 80 65 */	lis r4, data_8064967C@ha /* 0x8064967C@ha */
/* 805592DC  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 805592E0  C0 04 96 7C */	lfs f0, data_8064967C@l(r4)  /* 0x8064967C@l */
/* 805592E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 805592E8  40 81 00 14 */	ble lbl_805592FC
/* 805592EC  7F C3 F3 78 */	mr r3, r30
/* 805592F0  7F E4 FB 78 */	mr r4, r31
/* 805592F4  38 A0 00 02 */	li r5, 2
/* 805592F8  48 00 04 09 */	bl aMJN4_setup_think_proc
lbl_805592FC:
/* 805592FC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80559300  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80559304  83 C1 00 08 */	lwz r30, 8(r1)
/* 80559308  7C 08 03 A6 */	mtlr r0
/* 8055930C  38 21 00 10 */	addi r1, r1, 0x10
/* 80559310  4E 80 00 20 */	blr 
