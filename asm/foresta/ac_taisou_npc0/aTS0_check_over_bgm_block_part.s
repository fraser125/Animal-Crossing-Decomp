lbl_805889DC:
/* 805889DC  89 03 09 94 */	lbz r8, 0x994(r3)
/* 805889E0  2C 05 00 00 */	cmpwi r5, 0
/* 805889E4  C0 43 09 9C */	lfs f2, 0x99c(r3)
/* 805889E8  39 20 00 01 */	li r9, 1
/* 805889EC  7D 08 07 74 */	extsb r8, r8
/* 805889F0  41 82 00 38 */	beq lbl_80588A28
/* 805889F4  88 E3 09 97 */	lbz r7, 0x997(r3)
/* 805889F8  28 07 00 00 */	cmplwi r7, 0
/* 805889FC  41 82 00 2C */	beq lbl_80588A28
/* 80588A00  3C C0 80 65 */	lis r6, lit_554@ha /* 0x80649B1C@ha */
/* 80588A04  3C A0 80 65 */	lis r5, lit_555@ha /* 0x80649B20@ha */
/* 80588A08  C0 26 9B 1C */	lfs f1, lit_554@l(r6)  /* 0x80649B1C@l */
/* 80588A0C  38 07 FF FF */	addi r0, r7, -1
/* 80588A10  C0 05 9B 20 */	lfs f0, lit_555@l(r5)  /* 0x80649B20@l */
/* 80588A14  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80588A18  98 03 09 97 */	stb r0, 0x997(r3)
/* 80588A1C  EC 42 00 32 */	fmuls f2, f2, f0
/* 80588A20  D0 23 09 A8 */	stfs f1, 0x9a8(r3)
/* 80588A24  48 00 00 0C */	b lbl_80588A30
lbl_80588A28:
/* 80588A28  C0 03 09 A8 */	lfs f0, 0x9a8(r3)
/* 80588A2C  EC 42 00 28 */	fsubs f2, f2, f0
lbl_80588A30:
/* 80588A30  3C 60 80 6C */	lis r3, aTS0_startRatio@ha /* 0x806C1E48@ha */
/* 80588A34  55 05 10 3A */	slwi r5, r8, 2
/* 80588A38  38 63 1E 48 */	addi r3, r3, aTS0_startRatio@l /* 0x806C1E48@l */
/* 80588A3C  54 80 10 3A */	slwi r0, r4, 2
/* 80588A40  7C 63 28 2E */	lwzx r3, r3, r5
/* 80588A44  7C 63 02 14 */	add r3, r3, r0
/* 80588A48  C0 03 00 04 */	lfs f0, 4(r3)
/* 80588A4C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80588A50  4C 40 13 82 */	cror 2, 0, 2
/* 80588A54  40 82 00 08 */	bne lbl_80588A5C
/* 80588A58  39 20 00 00 */	li r9, 0
lbl_80588A5C:
/* 80588A5C  7D 23 4B 78 */	mr r3, r9
/* 80588A60  4E 80 00 20 */	blr 
