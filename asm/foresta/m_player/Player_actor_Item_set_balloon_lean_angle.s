lbl_804E2B18:
/* 804E2B18  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804E2B1C  7C 08 02 A6 */	mflr r0
/* 804E2B20  90 01 00 24 */	stw r0, 0x24(r1)
/* 804E2B24  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804E2B28  7C 7F 1B 78 */	mr r31, r3
/* 804E2B2C  4B FF FF 25 */	bl func_804E2A50
/* 804E2B30  3C 80 80 65 */	lis r4, lit_6602@ha /* 0x806480B4@ha */
/* 804E2B34  38 A4 80 B4 */	addi r5, r4, lit_6602@l /* 0x806480B4@l */
/* 804E2B38  C8 A5 00 00 */	lfd f5, 0(r5)
/* 804E2B3C  3C 80 80 64 */	lis r4, lit_1027@ha /* 0x806469F4@ha */
/* 804E2B40  38 C4 69 F4 */	addi r6, r4, lit_1027@l /* 0x806469F4@l */
/* 804E2B44  3C A0 80 64 */	lis r5, lit_1028@ha /* 0x806469FC@ha */
/* 804E2B48  FC 40 28 34 */	frsqrte f2, f5
/* 804E2B4C  C8 86 00 00 */	lfd f4, 0(r6)
/* 804E2B50  C8 65 69 FC */	lfd f3, lit_1028@l(r5)  /* 0x806469FC@l */
/* 804E2B54  3C 80 80 64 */	lis r4, lit_603@ha /* 0x80646564@ha */
/* 804E2B58  C0 04 65 64 */	lfs f0, lit_603@l(r4)  /* 0x80646564@l */
/* 804E2B5C  7C 64 1B 78 */	mr r4, r3
/* 804E2B60  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2B64  38 7F 11 78 */	addi r3, r31, 0x1178
/* 804E2B68  38 A0 00 FA */	li r5, 0xfa
/* 804E2B6C  38 C0 00 00 */	li r6, 0
/* 804E2B70  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2B74  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2B78  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2B7C  FC 42 00 72 */	fmul f2, f2, f1
/* 804E2B80  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2B84  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2B88  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2B8C  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2B90  FC 42 00 72 */	fmul f2, f2, f1
/* 804E2B94  FC 22 00 B2 */	fmul f1, f2, f2
/* 804E2B98  FC 44 00 B2 */	fmul f2, f4, f2
/* 804E2B9C  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2BA0  FC 23 08 28 */	fsub f1, f3, f1
/* 804E2BA4  FC 22 00 72 */	fmul f1, f2, f1
/* 804E2BA8  FC 25 00 72 */	fmul f1, f5, f1
/* 804E2BAC  FC 20 08 18 */	frsp f1, f1
/* 804E2BB0  D0 21 00 08 */	stfs f1, 8(r1)
/* 804E2BB4  C0 21 00 08 */	lfs f1, 8(r1)
/* 804E2BB8  EC 20 08 28 */	fsubs f1, f0, f1
/* 804E2BBC  4B ED 87 55 */	bl add_calc_short_angle2
/* 804E2BC0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804E2BC4  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804E2BC8  7C 08 03 A6 */	mtlr r0
/* 804E2BCC  38 21 00 20 */	addi r1, r1, 0x20
/* 804E2BD0  4E 80 00 20 */	blr 
