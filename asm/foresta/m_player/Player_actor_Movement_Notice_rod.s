lbl_804F66A0:
/* 804F66A0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804F66A4  7C 08 02 A6 */	mflr r0
/* 804F66A8  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804F66AC  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 804F66B0  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804F66B4  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 804F66B8  C8 A6 00 00 */	lfd f5, 0(r6)
/* 804F66BC  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804F66C0  C8 86 00 00 */	lfd f4, 0(r6)
/* 804F66C4  38 A0 09 C4 */	li r5, 0x9c4
/* 804F66C8  FC 40 28 34 */	frsqrte f2, f5
/* 804F66CC  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804F66D0  90 01 00 24 */	stw r0, 0x24(r1)
/* 804F66D4  38 80 00 00 */	li r4, 0
/* 804F66D8  38 C0 00 32 */	li r6, 0x32
/* 804F66DC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F66E0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804F66E4  7C 7F 1B 78 */	mr r31, r3
/* 804F66E8  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F66EC  38 7F 00 DE */	addi r3, r31, 0xde
/* 804F66F0  FC 25 00 72 */	fmul f1, f5, f1
/* 804F66F4  FC 23 08 28 */	fsub f1, f3, f1
/* 804F66F8  FC 42 00 72 */	fmul f2, f2, f1
/* 804F66FC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F6700  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F6704  FC 25 00 72 */	fmul f1, f5, f1
/* 804F6708  FC 23 08 28 */	fsub f1, f3, f1
/* 804F670C  FC 42 00 72 */	fmul f2, f2, f1
/* 804F6710  FC 22 00 B2 */	fmul f1, f2, f2
/* 804F6714  FC 44 00 B2 */	fmul f2, f4, f2
/* 804F6718  FC 25 00 72 */	fmul f1, f5, f1
/* 804F671C  FC 23 08 28 */	fsub f1, f3, f1
/* 804F6720  FC 22 00 72 */	fmul f1, f2, f1
/* 804F6724  FC 25 00 72 */	fmul f1, f5, f1
/* 804F6728  FC 20 08 18 */	frsp f1, f1
/* 804F672C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804F6730  C0 21 00 08 */	lfs f1, 8(r1)
/* 804F6734  EC 20 08 28 */	fsubs f1, f0, f1
/* 804F6738  4B EC 4B D9 */	bl add_calc_short_angle2
/* 804F673C  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 804F6740  3C 60 80 64 */	lis r3, lit_1011@ha /* 0x806469F0@ha */
/* 804F6744  38 83 69 F0 */	addi r4, r3, lit_1011@l /* 0x806469F0@l */
/* 804F6748  7F E3 FB 78 */	mr r3, r31
/* 804F674C  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 804F6750  C0 24 00 00 */	lfs f1, 0(r4)
/* 804F6754  4B FD F1 E9 */	bl Player_actor_Movement_Base_Braking_common
/* 804F6758  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804F675C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804F6760  7C 08 03 A6 */	mtlr r0
/* 804F6764  38 21 00 20 */	addi r1, r1, 0x20
/* 804F6768  4E 80 00 20 */	blr 
