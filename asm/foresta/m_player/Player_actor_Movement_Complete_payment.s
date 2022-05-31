lbl_80505078:
/* 80505078  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050507C  7C 08 02 A6 */	mflr r0
/* 80505080  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 80505084  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 80505088  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 8050508C  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 80505090  C8 A6 00 00 */	lfd f5, 0(r6)
/* 80505094  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 80505098  C8 86 00 00 */	lfd f4, 0(r6)
/* 8050509C  38 A0 09 C4 */	li r5, 0x9c4
/* 805050A0  FC 40 28 34 */	frsqrte f2, f5
/* 805050A4  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 805050A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 805050AC  38 80 00 00 */	li r4, 0
/* 805050B0  38 C0 00 32 */	li r6, 0x32
/* 805050B4  FC 22 00 B2 */	fmul f1, f2, f2
/* 805050B8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 805050BC  7C 7F 1B 78 */	mr r31, r3
/* 805050C0  FC 44 00 B2 */	fmul f2, f4, f2
/* 805050C4  38 7F 00 DE */	addi r3, r31, 0xde
/* 805050C8  FC 25 00 72 */	fmul f1, f5, f1
/* 805050CC  FC 23 08 28 */	fsub f1, f3, f1
/* 805050D0  FC 42 00 72 */	fmul f2, f2, f1
/* 805050D4  FC 22 00 B2 */	fmul f1, f2, f2
/* 805050D8  FC 44 00 B2 */	fmul f2, f4, f2
/* 805050DC  FC 25 00 72 */	fmul f1, f5, f1
/* 805050E0  FC 23 08 28 */	fsub f1, f3, f1
/* 805050E4  FC 42 00 72 */	fmul f2, f2, f1
/* 805050E8  FC 22 00 B2 */	fmul f1, f2, f2
/* 805050EC  FC 44 00 B2 */	fmul f2, f4, f2
/* 805050F0  FC 25 00 72 */	fmul f1, f5, f1
/* 805050F4  FC 23 08 28 */	fsub f1, f3, f1
/* 805050F8  FC 22 00 72 */	fmul f1, f2, f1
/* 805050FC  FC 25 00 72 */	fmul f1, f5, f1
/* 80505100  FC 20 08 18 */	frsp f1, f1
/* 80505104  D0 21 00 08 */	stfs f1, 8(r1)
/* 80505108  C0 21 00 08 */	lfs f1, 8(r1)
/* 8050510C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80505110  4B EB 62 01 */	bl add_calc_short_angle2
/* 80505114  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80505118  3C 60 80 64 */	lis r3, lit_1011@ha /* 0x806469F0@ha */
/* 8050511C  38 83 69 F0 */	addi r4, r3, lit_1011@l /* 0x806469F0@l */
/* 80505120  7F E3 FB 78 */	mr r3, r31
/* 80505124  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80505128  C0 24 00 00 */	lfs f1, 0(r4)
/* 8050512C  4B FD 08 11 */	bl Player_actor_Movement_Base_Braking_common
/* 80505130  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80505134  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80505138  7C 08 03 A6 */	mtlr r0
/* 8050513C  38 21 00 20 */	addi r1, r1, 0x20
/* 80505140  4E 80 00 20 */	blr 
