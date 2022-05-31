lbl_8042AC74:
/* 8042AC74  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8042AC78  7C 08 02 A6 */	mflr r0
/* 8042AC7C  90 01 00 14 */	stw r0, 0x14(r1)
/* 8042AC80  93 E1 00 0C */	stw r31, 0xc(r1)
/* 8042AC84  7C 9F 23 78 */	mr r31, r4
/* 8042AC88  93 C1 00 08 */	stw r30, 8(r1)
/* 8042AC8C  7C 7E 1B 78 */	mr r30, r3
/* 8042AC90  7F E3 FB 78 */	mr r3, r31
/* 8042AC94  4B FA E9 AD */	bl get_player_actor_withoutCheck
/* 8042AC98  28 03 00 00 */	cmplwi r3, 0
/* 8042AC9C  41 82 00 44 */	beq lbl_8042ACE0
/* 8042ACA0  3C 80 80 64 */	lis r4, data_8064403C@ha /* 0x8064403C@ha */
/* 8042ACA4  C0 03 00 30 */	lfs f0, 0x30(r3)
/* 8042ACA8  C0 44 40 3C */	lfs f2, data_8064403C@l(r4)  /* 0x8064403C@l */
/* 8042ACAC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 8042ACB0  4C 41 13 82 */	cror 2, 1, 2
/* 8042ACB4  40 82 00 18 */	bne lbl_8042ACCC
/* 8042ACB8  7F C3 F3 78 */	mr r3, r30
/* 8042ACBC  7F E4 FB 78 */	mr r4, r31
/* 8042ACC0  38 A0 00 05 */	li r5, 5
/* 8042ACC4  48 00 08 51 */	bl aID_setupAction
/* 8042ACC8  48 00 00 18 */	b lbl_8042ACE0
lbl_8042ACCC:
/* 8042ACCC  3C 80 80 64 */	lis r4, lit_528@ha /* 0x80644040@ha */
/* 8042ACD0  3C 60 80 64 */	lis r3, lit_529@ha /* 0x80644044@ha */
/* 8042ACD4  C0 24 40 40 */	lfs f1, lit_528@l(r4)  /* 0x80644040@l */
/* 8042ACD8  C0 63 40 44 */	lfs f3, lit_529@l(r3)  /* 0x80644044@l */
/* 8042ACDC  4B FB 0B F9 */	bl mPlib_Set_goal_player_demo_walk
lbl_8042ACE0:
/* 8042ACE0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8042ACE4  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 8042ACE8  83 C1 00 08 */	lwz r30, 8(r1)
/* 8042ACEC  7C 08 03 A6 */	mtlr r0
/* 8042ACF0  38 21 00 10 */	addi r1, r1, 0x10
/* 8042ACF4  4E 80 00 20 */	blr 
