lbl_80503984:
/* 80503984  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80503988  7C 08 02 A6 */	mflr r0
/* 8050398C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80503990  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80503994  7C 7F 1B 78 */	mr r31, r3
/* 80503998  4B FD 20 09 */	bl Player_actor_Movement_Base_Braking
/* 8050399C  3C 60 80 64 */	lis r3, lit_1027@ha /* 0x806469F4@ha */
/* 805039A0  3C 80 80 64 */	lis r4, lit_1028@ha /* 0x806469FC@ha */
/* 805039A4  38 A3 69 F4 */	addi r5, r3, lit_1027@l /* 0x806469F4@l */
/* 805039A8  C8 64 69 FC */	lfd f3, lit_1028@l(r4)  /* 0x806469FC@l */
/* 805039AC  C8 A5 00 00 */	lfd f5, 0(r5)
/* 805039B0  3C 60 80 64 */	lis r3, lit_603@ha /* 0x80646564@ha */
/* 805039B4  C8 85 00 00 */	lfd f4, 0(r5)
/* 805039B8  38 A0 09 C4 */	li r5, 0x9c4
/* 805039BC  FC 40 28 34 */	frsqrte f2, f5
/* 805039C0  C0 03 65 64 */	lfs f0, lit_603@l(r3)  /* 0x80646564@l */
/* 805039C4  A8 9F 0D 1C */	lha r4, 0xd1c(r31)
/* 805039C8  38 7F 00 DE */	addi r3, r31, 0xde
/* 805039CC  38 C0 00 32 */	li r6, 0x32
/* 805039D0  FC 22 00 B2 */	fmul f1, f2, f2
/* 805039D4  FC 44 00 B2 */	fmul f2, f4, f2
/* 805039D8  FC 25 00 72 */	fmul f1, f5, f1
/* 805039DC  FC 23 08 28 */	fsub f1, f3, f1
/* 805039E0  FC 42 00 72 */	fmul f2, f2, f1
/* 805039E4  FC 22 00 B2 */	fmul f1, f2, f2
/* 805039E8  FC 44 00 B2 */	fmul f2, f4, f2
/* 805039EC  FC 25 00 72 */	fmul f1, f5, f1
/* 805039F0  FC 23 08 28 */	fsub f1, f3, f1
/* 805039F4  FC 42 00 72 */	fmul f2, f2, f1
/* 805039F8  FC 22 00 B2 */	fmul f1, f2, f2
/* 805039FC  FC 44 00 B2 */	fmul f2, f4, f2
/* 80503A00  FC 25 00 72 */	fmul f1, f5, f1
/* 80503A04  FC 23 08 28 */	fsub f1, f3, f1
/* 80503A08  FC 22 00 72 */	fmul f1, f2, f1
/* 80503A0C  FC 25 00 72 */	fmul f1, f5, f1
/* 80503A10  FC 20 08 18 */	frsp f1, f1
/* 80503A14  D0 21 00 08 */	stfs f1, 8(r1)
/* 80503A18  C0 21 00 08 */	lfs f1, 8(r1)
/* 80503A1C  EC 20 08 28 */	fsubs f1, f0, f1
/* 80503A20  4B EB 78 F1 */	bl add_calc_short_angle2
/* 80503A24  A8 1F 00 DE */	lha r0, 0xde(r31)
/* 80503A28  B0 1F 00 36 */	sth r0, 0x36(r31)
/* 80503A2C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80503A30  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80503A34  7C 08 03 A6 */	mtlr r0
/* 80503A38  38 21 00 20 */	addi r1, r1, 0x20
/* 80503A3C  4E 80 00 20 */	blr 
