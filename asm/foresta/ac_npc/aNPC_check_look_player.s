lbl_8052DD84:
/* 8052DD84  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8052DD88  7C 08 02 A6 */	mflr r0
/* 8052DD8C  3C A0 80 65 */	lis r5, lit_1151@ha /* 0x806492A4@ha */
/* 8052DD90  38 C0 00 00 */	li r6, 0
/* 8052DD94  90 01 00 14 */	stw r0, 0x14(r1)
/* 8052DD98  C0 05 92 A4 */	lfs f0, lit_1151@l(r5)  /* 0x806492A4@l */
/* 8052DD9C  C0 23 00 BC */	lfs f1, 0xbc(r3)
/* 8052DDA0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8052DDA4  40 80 00 4C */	bge lbl_8052DDF0
/* 8052DDA8  80 E3 01 4C */	lwz r7, 0x14c(r3)
/* 8052DDAC  A8 A3 00 DE */	lha r5, 0xde(r3)
/* 8052DDB0  28 07 00 00 */	cmplwi r7, 0
/* 8052DDB4  41 82 00 10 */	beq lbl_8052DDC4
/* 8052DDB8  A8 07 00 DE */	lha r0, 0xde(r7)
/* 8052DDBC  7C 05 02 14 */	add r0, r5, r0
/* 8052DDC0  7C 05 07 34 */	extsh r5, r0
lbl_8052DDC4:
/* 8052DDC4  A8 03 00 B6 */	lha r0, 0xb6(r3)
/* 8052DDC8  7C 05 00 50 */	subf r0, r5, r0
/* 8052DDCC  7C 03 07 35 */	extsh. r3, r0
/* 8052DDD0  7C 03 00 D0 */	neg r0, r3
/* 8052DDD4  41 80 00 08 */	blt lbl_8052DDDC
/* 8052DDD8  7C 60 1B 78 */	mr r0, r3
lbl_8052DDDC:
/* 8052DDDC  2C 00 30 00 */	cmpwi r0, 0x3000
/* 8052DDE0  40 80 00 10 */	bge lbl_8052DDF0
/* 8052DDE4  7C 83 23 78 */	mr r3, r4
/* 8052DDE8  4B EA B8 59 */	bl get_player_actor_withoutCheck
/* 8052DDEC  7C 66 1B 78 */	mr r6, r3
lbl_8052DDF0:
/* 8052DDF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8052DDF4  7C C3 33 78 */	mr r3, r6
/* 8052DDF8  7C 08 03 A6 */	mtlr r0
/* 8052DDFC  38 21 00 10 */	addi r1, r1, 0x10
/* 8052DE00  4E 80 00 20 */	blr 
