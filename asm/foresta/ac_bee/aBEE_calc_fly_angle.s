lbl_8050CF78:
/* 8050CF78  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8050CF7C  7C 08 02 A6 */	mflr r0
/* 8050CF80  3C 80 80 65 */	lis r4, lit_537@ha /* 0x80648EAC@ha */
/* 8050CF84  3C A0 80 65 */	lis r5, lit_457@ha /* 0x80648E84@ha */
/* 8050CF88  38 C4 8E AC */	addi r6, r4, lit_537@l /* 0x80648EAC@l */
/* 8050CF8C  90 01 00 24 */	stw r0, 0x24(r1)
/* 8050CF90  C8 A6 00 00 */	lfd f5, 0(r6)
/* 8050CF94  38 C5 8E 84 */	addi r6, r5, lit_457@l /* 0x80648E84@l */
/* 8050CF98  3C 80 80 65 */	lis r4, lit_458@ha /* 0x80648E8C@ha */
/* 8050CF9C  C8 86 00 00 */	lfd f4, 0(r6)
/* 8050CFA0  FC 40 28 34 */	frsqrte f2, f5
/* 8050CFA4  38 A4 8E 8C */	addi r5, r4, lit_458@l /* 0x80648E8C@l */
/* 8050CFA8  C8 65 00 00 */	lfd f3, 0(r5)
/* 8050CFAC  3C 80 80 65 */	lis r4, lit_456@ha /* 0x80648E7C@ha */
/* 8050CFB0  C0 04 8E 7C */	lfs f0, lit_456@l(r4)  /* 0x80648E7C@l */
/* 8050CFB4  38 80 00 00 */	li r4, 0
/* 8050CFB8  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CFBC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8050CFC0  7C 7F 1B 78 */	mr r31, r3
/* 8050CFC4  38 A0 03 E8 */	li r5, 0x3e8
/* 8050CFC8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CFCC  38 7F 00 E0 */	addi r3, r31, 0xe0
/* 8050CFD0  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CFD4  38 C0 00 00 */	li r6, 0
/* 8050CFD8  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CFDC  FC 42 00 72 */	fmul f2, f2, f1
/* 8050CFE0  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CFE4  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CFE8  FC 25 00 72 */	fmul f1, f5, f1
/* 8050CFEC  FC 23 08 28 */	fsub f1, f3, f1
/* 8050CFF0  FC 42 00 72 */	fmul f2, f2, f1
/* 8050CFF4  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050CFF8  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050CFFC  FC 25 00 72 */	fmul f1, f5, f1
/* 8050D000  FC 23 08 28 */	fsub f1, f3, f1
/* 8050D004  FC 22 00 72 */	fmul f1, f2, f1
/* 8050D008  FC 25 00 72 */	fmul f1, f5, f1
/* 8050D00C  FC 20 08 18 */	frsp f1, f1
/* 8050D010  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8050D014  C0 21 00 0C */	lfs f1, 0xc(r1)
/* 8050D018  EC 20 08 28 */	fsubs f1, f0, f1
/* 8050D01C  4B EA E2 F5 */	bl add_calc_short_angle2
/* 8050D020  3C 60 80 65 */	lis r3, lit_537@ha /* 0x80648EAC@ha */
/* 8050D024  3C 80 80 65 */	lis r4, lit_457@ha /* 0x80648E84@ha */
/* 8050D028  38 A3 8E AC */	addi r5, r3, lit_537@l /* 0x80648EAC@l */
/* 8050D02C  38 C0 00 00 */	li r6, 0
/* 8050D030  C8 A5 00 00 */	lfd f5, 0(r5)
/* 8050D034  38 A4 8E 84 */	addi r5, r4, lit_457@l /* 0x80648E84@l */
/* 8050D038  3C 60 80 65 */	lis r3, lit_458@ha /* 0x80648E8C@ha */
/* 8050D03C  C8 85 00 00 */	lfd f4, 0(r5)
/* 8050D040  FC 40 28 34 */	frsqrte f2, f5
/* 8050D044  38 83 8E 8C */	addi r4, r3, lit_458@l /* 0x80648E8C@l */
/* 8050D048  C8 64 00 00 */	lfd f3, 0(r4)
/* 8050D04C  3C 60 80 65 */	lis r3, lit_456@ha /* 0x80648E7C@ha */
/* 8050D050  C0 03 8E 7C */	lfs f0, lit_456@l(r3)  /* 0x80648E7C@l */
/* 8050D054  38 7F 00 DC */	addi r3, r31, 0xdc
/* 8050D058  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050D05C  38 80 00 00 */	li r4, 0
/* 8050D060  38 A0 03 E8 */	li r5, 0x3e8
/* 8050D064  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050D068  FC 25 00 72 */	fmul f1, f5, f1
/* 8050D06C  FC 23 08 28 */	fsub f1, f3, f1
/* 8050D070  FC 42 00 72 */	fmul f2, f2, f1
/* 8050D074  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050D078  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050D07C  FC 25 00 72 */	fmul f1, f5, f1
/* 8050D080  FC 23 08 28 */	fsub f1, f3, f1
/* 8050D084  FC 42 00 72 */	fmul f2, f2, f1
/* 8050D088  FC 22 00 B2 */	fmul f1, f2, f2
/* 8050D08C  FC 44 00 B2 */	fmul f2, f4, f2
/* 8050D090  FC 25 00 72 */	fmul f1, f5, f1
/* 8050D094  FC 23 08 28 */	fsub f1, f3, f1
/* 8050D098  FC 22 00 72 */	fmul f1, f2, f1
/* 8050D09C  FC 25 00 72 */	fmul f1, f5, f1
/* 8050D0A0  FC 20 08 18 */	frsp f1, f1
/* 8050D0A4  D0 21 00 08 */	stfs f1, 8(r1)
/* 8050D0A8  C0 21 00 08 */	lfs f1, 8(r1)
/* 8050D0AC  EC 20 08 28 */	fsubs f1, f0, f1
/* 8050D0B0  4B EA E2 61 */	bl add_calc_short_angle2
/* 8050D0B4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8050D0B8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8050D0BC  7C 08 03 A6 */	mtlr r0
/* 8050D0C0  38 21 00 20 */	addi r1, r1, 0x20
/* 8050D0C4  4E 80 00 20 */	blr 
