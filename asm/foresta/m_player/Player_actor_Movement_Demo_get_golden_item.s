lbl_805086A0:
/* 805086A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 805086A4  7C 08 02 A6 */	mflr r0
/* 805086A8  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 805086AC  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 805086B0  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 805086B4  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 805086B8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 805086BC  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 805086C0  C8 86 00 00 */	lfd f4, 0(r6)
/* 805086C4  38 A0 09 C4 */	li r5, 0x9c4
/* 805086C8  FC 40 28 34 */	frsqrte f2, f5
/* 805086CC  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 805086D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 805086D4  38 80 00 00 */	li r4, 0
/* 805086D8  38 C0 00 32 */	li r6, 0x32
/* 805086DC  FC 22 00 B2 */	fmul f1, f2, f2
/* 805086E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805086E4  7C 7F 1B 78 */	mr r31, r3
/* 805086E8  FC 44 00 B2 */	fmul f2, f4, f2
/* 805086EC  38 7F 00 DE */	addi r3, r31, 0xde
/* 805086F0  FC 25 00 72 */	fmul f1, f5, f1
/* 805086F4  FC 23 08 28 */	fsub f1, f3, f1
/* 805086F8  FC 42 00 72 */	fmul f2, f2, f1
/* 805086FC  FC 22 00 B2 */	fmul f1, f2, f2
/* 80508700  FC 44 00 B2 */	fmul f2, f4, f2
/* 80508704  FC 25 00 72 */	fmul f1, f5, f1
/* 80508708  FC 23 08 28 */	fsub f1, f3, f1
/* 8050870C  FC 42 00 72 */	fmul f2, f2, f1
/* 80508710  FC 22 00 B2 */	fmul f1, f2, f2
/* 80508714  FC 44 00 B2 */	fmul f2, f4, f2
/* 80508718  FC 25 00 72 */	fmul f1, f5, f1
/* 8050871C  FC 23 08 28 */	fsub f1, f3, f1
/* 80508720  FC 22 00 72 */	fmul f1, f2, f1
/* 80508724  FC 25 00 72 */	fmul f1, f5, f1
/* 80508728  FC 20 08 18 */	frsp f1, f1
/* 8050872C  D0 21 00 08 */	stfs f1, 8(r1)
/* 80508730  C0 21 00 08 */	lfs f1, 8(r1)
/* 80508734  EC 20 08 28 */	fsubs f1, f0, f1
/* 80508738  4B EB 2B D9 */	bl add_calc_short_angle2
/* 8050873C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80508740  3C 60 80 64 */	lis r3, lit_1011@ha /* 0x806469F0@ha */
/* 80508744  38 83 69 F0 */	addi r4, r3, lit_1011@l /* 0x806469F0@l */
/* 80508748  7F E3 FB 78 */	mr r3, r31
/* 8050874C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80508750  C0 24 00 00 */	lfs f1, 0(r4)
/* 80508754  4B FC D1 E9 */	bl Player_actor_Movement_Base_Braking_common
/* 80508758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050875C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80508760  7C 08 03 A6 */	mtlr r0
/* 80508764  38 21 00 20 */	addi r1, r1, 0x20
/* 80508768  4E 80 00 20 */	blr 
