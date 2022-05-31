lbl_8050C8CC:
/* 8050C8CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8050C8D0  7C 08 02 A6 */	mflr r0
/* 8050C8D4  3C A0 80 65 */	lis r5, lit_456@ha /* 0x80648E7C@ha */
/* 8050C8D8  3C 80 80 65 */	lis r4, lit_442@ha /* 0x80648E78@ha */
/* 8050C8DC  C0 85 8E 7C */	lfs f4, lit_456@l(r5)  /* 0x80648E7C@l */
/* 8050C8E0  C0 04 8E 78 */	lfs f0, lit_442@l(r4)  /* 0x80648E78@l */
/* 8050C8E4  EC C4 10 28 */	fsubs f6, f4, f2
/* 8050C8E8  90 01 00 14 */	stw r0, 0x14(r1)
/* 8050C8EC  FC 06 00 40 */	fcmpo cr0, f6, f0
/* 8050C8F0  40 81 00 68 */	ble lbl_8050C958
/* 8050C8F4  FC 40 30 34 */	frsqrte f2, f6
/* 8050C8F8  3C 80 80 65 */	lis r4, lit_457@ha /* 0x80648E84@ha */
/* 8050C8FC  38 A4 8E 84 */	addi r5, r4, lit_457@l /* 0x80648E84@l */
/* 8050C900  3C 80 80 65 */	lis r4, lit_458@ha /* 0x80648E8C@ha */
/* 8050C904  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8050C908  FC 02 00 B2 */	fmul f0, f2, f2
/* 8050C90C  C8 84 8E 8C */	lfd f4, lit_458@l(r4)  /* 0x80648E8C@l */
/* 8050C910  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050C914  FC 06 00 32 */	fmul f0, f6, f0
/* 8050C918  FC 04 00 28 */	fsub f0, f4, f0
/* 8050C91C  FC 42 00 32 */	fmul f2, f2, f0
/* 8050C920  FC 02 00 B2 */	fmul f0, f2, f2
/* 8050C924  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050C928  FC 06 00 32 */	fmul f0, f6, f0
/* 8050C92C  FC 04 00 28 */	fsub f0, f4, f0
/* 8050C930  FC 42 00 32 */	fmul f2, f2, f0
/* 8050C934  FC 02 00 B2 */	fmul f0, f2, f2
/* 8050C938  FC 45 00 B2 */	fmul f2, f5, f2
/* 8050C93C  FC 06 00 32 */	fmul f0, f6, f0
/* 8050C940  FC 04 00 28 */	fsub f0, f4, f0
/* 8050C944  FC 02 00 32 */	fmul f0, f2, f0
/* 8050C948  FC 06 00 32 */	fmul f0, f6, f0
/* 8050C94C  FC 00 00 18 */	frsp f0, f0
/* 8050C950  D0 01 00 08 */	stfs f0, 8(r1)
/* 8050C954  C0 C1 00 08 */	lfs f6, 8(r1)
lbl_8050C958:
/* 8050C958  3C 80 80 65 */	lis r4, lit_456@ha /* 0x80648E7C@ha */
/* 8050C95C  3C A0 80 65 */	lis r5, lit_459@ha /* 0x80648E94@ha */
/* 8050C960  38 C4 8E 7C */	addi r6, r4, lit_456@l /* 0x80648E7C@l */
/* 8050C964  C0 05 8E 94 */	lfs f0, lit_459@l(r5)  /* 0x80648E94@l */
/* 8050C968  C0 46 00 00 */	lfs f2, 0(r6)
/* 8050C96C  3C 80 80 65 */	lis r4, lit_442@ha /* 0x80648E78@ha */
/* 8050C970  EC 60 00 F2 */	fmuls f3, f0, f3
/* 8050C974  C0 84 8E 78 */	lfs f4, lit_442@l(r4)  /* 0x80648E78@l */
/* 8050C978  EC 42 30 28 */	fsubs f2, f2, f6
/* 8050C97C  4B EA E8 35 */	bl add_calc
/* 8050C980  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8050C984  7C 08 03 A6 */	mtlr r0
/* 8050C988  38 21 00 10 */	addi r1, r1, 0x10
/* 8050C98C  4E 80 00 20 */	blr 
