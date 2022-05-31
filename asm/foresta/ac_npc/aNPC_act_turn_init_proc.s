lbl_80531AD8:
/* 80531AD8  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80531ADC  7C 08 02 A6 */	mflr r0
/* 80531AE0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80531AE4  38 00 00 00 */	li r0, 0
/* 80531AE8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80531AEC  7C 7F 1B 78 */	mr r31, r3
/* 80531AF0  98 03 07 F6 */	stb r0, 0x7f6(r3)
/* 80531AF4  88 03 07 F7 */	lbz r0, 0x7f7(r3)
/* 80531AF8  28 00 00 01 */	cmplwi r0, 1
/* 80531AFC  40 82 00 50 */	bne lbl_80531B4C
/* 80531B00  A8 1F 08 00 */	lha r0, 0x800(r31)
/* 80531B04  3C C0 43 30 */	lis r6, 0x4330
/* 80531B08  A8 9F 08 02 */	lha r4, 0x802(r31)
/* 80531B0C  3D 00 80 65 */	lis r8, lit_818@ha /* 0x80649284@ha */
/* 80531B10  6C 07 80 00 */	xoris r7, r0, 0x8000
/* 80531B14  90 C1 00 08 */	stw r6, 8(r1)
/* 80531B18  6C 85 80 00 */	xoris r5, r4, 0x8000
/* 80531B1C  A0 1F 08 14 */	lhz r0, 0x814(r31)
/* 80531B20  90 E1 00 0C */	stw r7, 0xc(r1)
/* 80531B24  C8 48 92 84 */	lfd f2, lit_818@l(r8)  /* 0x80649284@l */
/* 80531B28  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80531B2C  C8 01 00 08 */	lfd f0, 8(r1)
/* 80531B30  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80531B34  EC 20 10 28 */	fsubs f1, f0, f2
/* 80531B38  90 C1 00 10 */	stw r6, 0x10(r1)
/* 80531B3C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80531B40  EC 40 10 28 */	fsubs f2, f0, f2
/* 80531B44  4B FF DC E9 */	bl aNPC_set_avoid_pos
/* 80531B48  48 00 00 44 */	b lbl_80531B8C
lbl_80531B4C:
/* 80531B4C  A8 BF 08 00 */	lha r5, 0x800(r31)
/* 80531B50  3C 80 43 30 */	lis r4, 0x4330
/* 80531B54  A8 1F 08 02 */	lha r0, 0x802(r31)
/* 80531B58  3C C0 80 65 */	lis r6, lit_818@ha /* 0x80649284@ha */
/* 80531B5C  6C A5 80 00 */	xoris r5, r5, 0x8000
/* 80531B60  90 81 00 10 */	stw r4, 0x10(r1)
/* 80531B64  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80531B68  C8 46 92 84 */	lfd f2, lit_818@l(r6)  /* 0x80649284@l */
/* 80531B6C  90 A1 00 14 */	stw r5, 0x14(r1)
/* 80531B70  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 80531B74  90 01 00 0C */	stw r0, 0xc(r1)
/* 80531B78  EC 20 10 28 */	fsubs f1, f0, f2
/* 80531B7C  90 81 00 08 */	stw r4, 8(r1)
/* 80531B80  C8 01 00 08 */	lfd f0, 8(r1)
/* 80531B84  EC 40 10 28 */	fsubs f2, f0, f2
/* 80531B88  4B FF DC D1 */	bl aNPC_set_dst_pos
lbl_80531B8C:
/* 80531B8C  88 9F 07 F5 */	lbz r4, 0x7f5(r31)
/* 80531B90  7F E3 FB 78 */	mr r3, r31
/* 80531B94  38 04 FF FD */	addi r0, r4, -3
/* 80531B98  30 00 FF FF */	addic r0, r0, -1
/* 80531B9C  7C 80 01 10 */	subfe r4, r0, r0
/* 80531BA0  38 84 00 0E */	addi r4, r4, 0xe
/* 80531BA4  4B FF E1 89 */	bl aNPC_setupAction
/* 80531BA8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80531BAC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80531BB0  7C 08 03 A6 */	mtlr r0
/* 80531BB4  38 21 00 20 */	addi r1, r1, 0x20
/* 80531BB8  4E 80 00 20 */	blr 
