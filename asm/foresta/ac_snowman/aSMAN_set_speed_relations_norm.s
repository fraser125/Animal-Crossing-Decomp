lbl_804A4FFC:
/* 804A4FFC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 804A5000  7C 08 02 A6 */	mflr r0
/* 804A5004  90 01 00 24 */	stw r0, 0x24(r1)
/* 804A5008  38 81 00 08 */	addi r4, r1, 8
/* 804A500C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 804A5010  7C 7F 1B 78 */	mr r31, r3
/* 804A5014  38 BF 00 28 */	addi r5, r31, 0x28
/* 804A5018  4B FF EE FD */	bl aSMAN_get_ground_norm
/* 804A501C  2C 03 00 00 */	cmpwi r3, 0
/* 804A5020  41 82 00 B4 */	beq lbl_804A50D4
/* 804A5024  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A5028  3C 60 80 64 */	lis r3, lit_784@ha /* 0x80645D10@ha */
/* 804A502C  C0 23 5D 10 */	lfs f1, lit_784@l(r3)  /* 0x80645D10@l */
/* 804A5030  FC 00 02 10 */	fabs f0, f0
/* 804A5034  FC 00 00 18 */	frsp f0, f0
/* 804A5038  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A503C  40 80 00 18 */	bge lbl_804A5054
/* 804A5040  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A5044  FC 00 02 10 */	fabs f0, f0
/* 804A5048  FC 00 00 18 */	frsp f0, f0
/* 804A504C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 804A5050  41 80 00 84 */	blt lbl_804A50D4
lbl_804A5054:
/* 804A5054  3C 60 80 64 */	lis r3, lit_812@ha /* 0x80645D18@ha */
/* 804A5058  3C 80 80 64 */	lis r4, lit_811@ha /* 0x80645D14@ha */
/* 804A505C  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A5060  C0 23 5D 18 */	lfs f1, lit_812@l(r3)  /* 0x80645D18@l */
/* 804A5064  C0 64 5D 14 */	lfs f3, lit_811@l(r4)  /* 0x80645D14@l */
/* 804A5068  EC 41 00 32 */	fmuls f2, f1, f0
/* 804A506C  C0 01 00 08 */	lfs f0, 8(r1)
/* 804A5070  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 804A5074  EC 43 10 2A */	fadds f2, f3, f2
/* 804A5078  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A507C  EC 01 00 2A */	fadds f0, f1, f0
/* 804A5080  D0 1F 00 68 */	stfs f0, 0x68(r31)
/* 804A5084  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 804A5088  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804A508C  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804A5090  EC 01 00 2A */	fadds f0, f1, f0
/* 804A5094  D0 1F 00 70 */	stfs f0, 0x70(r31)
/* 804A5098  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804A509C  C0 5F 00 68 */	lfs f2, 0x68(r31)
/* 804A50A0  4B F6 6F 61 */	bl atans_table
/* 804A50A4  B0 7F 00 36 */	sth r3, 0x36(r31)
/* 804A50A8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 804A50AC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 804A50B0  EC 21 00 72 */	fmuls f1, f1, f1
/* 804A50B4  EC 00 00 32 */	fmuls f0, f0, f0
/* 804A50B8  EC 21 00 2A */	fadds f1, f1, f0
/* 804A50BC  4B BB 7B 7D */	bl fsqrt
/* 804A50C0  3C 60 80 64 */	lis r3, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A50C4  D0 3F 01 C4 */	stfs f1, 0x1c4(r31)
/* 804A50C8  C0 03 5C 8C */	lfs f0, data_80645C8C@l(r3)  /* 0x80645C8C@l */
/* 804A50CC  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
/* 804A50D0  48 00 00 34 */	b lbl_804A5104
lbl_804A50D4:
/* 804A50D4  3C 80 80 64 */	lis r4, data_80645C8C@ha /* 0x80645C8C@ha */
/* 804A50D8  3C 60 80 64 */	lis r3, lit_1014@ha /* 0x80645D38@ha */
/* 804A50DC  38 A4 5C 8C */	addi r5, r4, data_80645C8C@l /* 0x80645C8C@l */
/* 804A50E0  C0 23 5D 38 */	lfs f1, lit_1014@l(r3)  /* 0x80645D38@l */
/* 804A50E4  C0 05 00 00 */	lfs f0, 0(r5)
/* 804A50E8  3C 80 80 64 */	lis r4, lit_472@ha /* 0x80645C9C@ha */
/* 804A50EC  C0 44 5C 9C */	lfs f2, lit_472@l(r4)  /* 0x80645C9C@l */
/* 804A50F0  D0 1F 01 C4 */	stfs f0, 0x1c4(r31)
/* 804A50F4  C0 1F 01 D0 */	lfs f0, 0x1d0(r31)
/* 804A50F8  EC 01 00 32 */	fmuls f0, f1, f0
/* 804A50FC  EC 02 00 28 */	fsubs f0, f2, f0
/* 804A5100  D0 1F 01 C8 */	stfs f0, 0x1c8(r31)
lbl_804A5104:
/* 804A5104  3C 80 80 64 */	lis r4, lit_470@ha /* 0x80645C94@ha */
/* 804A5108  3C 60 80 64 */	lis r3, lit_471@ha /* 0x80645C98@ha */
/* 804A510C  C0 24 5C 94 */	lfs f1, lit_470@l(r4)  /* 0x80645C94@l */
/* 804A5110  C0 03 5C 98 */	lfs f0, lit_471@l(r3)  /* 0x80645C98@l */
/* 804A5114  D0 3F 00 7C */	stfs f1, 0x7c(r31)
/* 804A5118  D0 1F 00 78 */	stfs f0, 0x78(r31)
/* 804A511C  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 804A5120  D0 1F 01 CC */	stfs f0, 0x1cc(r31)
/* 804A5124  80 01 00 24 */	lwz r0, 0x24(r1)
/* 804A5128  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 804A512C  7C 08 03 A6 */	mtlr r0
/* 804A5130  38 21 00 20 */	addi r1, r1, 0x20
/* 804A5134  4E 80 00 20 */	blr 
