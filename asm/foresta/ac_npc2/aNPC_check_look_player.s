lbl_8053C860:
/* 8053C860  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8053C864  7C 08 02 A6 */	mflr r0
/* 8053C868  3C A0 80 65 */	lis r5, lit_1127@ha /* 0x806493A4@ha */
/* 8053C86C  38 C0 00 00 */	li r6, 0
/* 8053C870  90 01 00 14 */	stw r0, 0x14(r1)
/* 8053C874  C0 05 93 A4 */	lfs f0, lit_1127@l(r5)  /* 0x806493A4@l */
/* 8053C878  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 8053C87C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8053C880  40 80 00 4C */	bge lbl_8053C8CC
/* 8053C884  80 E3 01 4C */	lwz r7, 0x14c(r3)
/* 8053C888  A8 A3 00 DE */	lha r5, 0xde(r3)
/* 8053C88C  28 07 00 00 */	cmplwi r7, 0
/* 8053C890  41 82 00 10 */	beq lbl_8053C8A0
/* 8053C894  A8 07 00 DE */	lha r0, 0xde(r7)
/* 8053C898  7C 05 02 14 */	add r0, r5, r0
/* 8053C89C  7C 05 07 34 */	extsh r5, r0
lbl_8053C8A0:
/* 8053C8A0  A8 03 00 B6 */	lha r0, 0xb6(r3)
/* 8053C8A4  7C 05 00 50 */	subf r0, r5, r0
/* 8053C8A8  7C 03 07 35 */	extsh. r3, r0
/* 8053C8AC  7C 03 00 D0 */	neg r0, r3
/* 8053C8B0  41 80 00 08 */	blt lbl_8053C8B8
/* 8053C8B4  7C 60 1B 78 */	mr r0, r3
lbl_8053C8B8:
/* 8053C8B8  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8053C8BC  40 80 00 10 */	bge lbl_8053C8CC
/* 8053C8C0  7C 83 23 78 */	mr r3, r4
/* 8053C8C4  4B E9 CD 7D */	bl get_player_actor_withoutCheck
/* 8053C8C8  7C 66 1B 78 */	mr r6, r3
lbl_8053C8CC:
/* 8053C8CC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8053C8D0  7C C3 33 78 */	mr r3, r6
/* 8053C8D4  7C 08 03 A6 */	mtlr r0
/* 8053C8D8  38 21 00 10 */	addi r1, r1, 0x10
/* 8053C8DC  4E 80 00 20 */	blr 
