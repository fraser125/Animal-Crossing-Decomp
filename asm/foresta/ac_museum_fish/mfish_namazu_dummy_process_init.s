lbl_80454464:
/* 80454464  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80454468  7C 08 02 A6 */	mflr r0
/* 8045446C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80454470  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80454474  7C 7F 1B 78 */	mr r31, r3
/* 80454478  4B FD D8 91 */	bl mfish_get_hide_camera_angle
/* 8045447C  3C 80 80 64 */	lis r4, lit_469@ha /* 0x8064424C@ha */
/* 80454480  CC A4 42 4C */	lfdu f5, lit_469@l(r4)  /* 0x8064424C@l */
/* 80454484  B0 7F 06 34 */	sth r3, 0x634(r31)
/* 80454488  3C 60 80 64 */	lis r3, lit_470@ha /* 0x80644254@ha */
/* 8045448C  FC 40 28 34 */	frsqrte f2, f5
/* 80454490  38 A3 42 54 */	addi r5, r3, lit_470@l /* 0x80644254@l */
/* 80454494  C8 65 00 00 */	lfd f3, 0(r5)
/* 80454498  3C 60 80 64 */	lis r3, lit_472@ha /* 0x80644260@ha */
/* 8045449C  C8 84 00 00 */	lfd f4, 0(r4)
/* 804544A0  38 83 42 60 */	addi r4, r3, lit_472@l /* 0x80644260@l */
/* 804544A4  FC 22 00 B2 */	fmul f1, f2, f2
/* 804544A8  C0 04 00 00 */	lfs f0, 0(r4)
/* 804544AC  A8 9F 06 14 */	lha r4, 0x614(r31)
/* 804544B0  38 7F 06 34 */	addi r3, r31, 0x634
/* 804544B4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804544B8  38 A0 07 1C */	li r5, 0x71c
/* 804544BC  FC 25 00 72 */	fmul f1, f5, f1
/* 804544C0  38 C0 00 5B */	li r6, 0x5b
/* 804544C4  FC 23 08 28 */	fsub f1, f3, f1
/* 804544C8  FC 42 00 72 */	fmul f2, f2, f1
/* 804544CC  FC 22 00 B2 */	fmul f1, f2, f2
/* 804544D0  FC 44 00 B2 */	fmul f2, f4, f2
/* 804544D4  FC 25 00 72 */	fmul f1, f5, f1
/* 804544D8  FC 23 08 28 */	fsub f1, f3, f1
/* 804544DC  FC 42 00 72 */	fmul f2, f2, f1
/* 804544E0  FC 22 00 B2 */	fmul f1, f2, f2
/* 804544E4  FC 44 00 B2 */	fmul f2, f4, f2
/* 804544E8  FC 25 00 72 */	fmul f1, f5, f1
/* 804544EC  FC 23 08 28 */	fsub f1, f3, f1
/* 804544F0  FC 22 00 72 */	fmul f1, f2, f1
/* 804544F4  FC 25 00 72 */	fmul f1, f5, f1
/* 804544F8  FC 20 08 18 */	frsp f1, f1
/* 804544FC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80454500  C0 21 00 08 */	lfs f1, 8(r1)
/* 80454504  EC 20 08 28 */	fsubs f1, f0, f1
/* 80454508  4B F6 6E 09 */	bl add_calc_short_angle2
/* 8045450C  3C 60 80 45 */	lis r3, mfish_namazu_dummy_process@ha /* 0x8045452C@ha */
/* 80454510  38 03 45 2C */	addi r0, r3, mfish_namazu_dummy_process@l /* 0x8045452C@l */
/* 80454514  90 1F 00 34 */	stw r0, 0x34(r31)
/* 80454518  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8045451C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80454520  7C 08 03 A6 */	mtlr r0
/* 80454524  38 21 00 20 */	addi r1, r1, 0x20
/* 80454528  4E 80 00 20 */	blr 
