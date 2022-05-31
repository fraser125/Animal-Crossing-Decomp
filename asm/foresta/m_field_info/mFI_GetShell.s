lbl_803AA8FC:
/* 803AA8FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 803AA900  7C 08 02 A6 */	mflr r0
/* 803AA904  90 01 00 24 */	stw r0, 0x24(r1)
/* 803AA908  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 803AA90C  3B E0 00 00 */	li r31, 0
/* 803AA910  93 C1 00 18 */	stw r30, 0x18(r1)
/* 803AA914  7C 7E 1B 78 */	mr r30, r3
/* 803AA918  4B CB 23 DD */	bl fqrand
/* 803AA91C  3C 60 80 64 */	lis r3, lit_2499@ha /* 0x80641F78@ha */
/* 803AA920  C0 03 1F 78 */	lfs f0, lit_2499@l(r3)  /* 0x80641F78@l */
/* 803AA924  EC 00 00 72 */	fmuls f0, f0, f1
/* 803AA928  FC 00 00 1E */	fctiwz f0, f0
/* 803AA92C  D8 01 00 08 */	stfd f0, 8(r1)
/* 803AA930  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803AA934  2C 00 00 03 */	cmpwi r0, 3
/* 803AA938  40 82 00 18 */	bne lbl_803AA950
/* 803AA93C  2C 1E 00 01 */	cmpwi r30, 1
/* 803AA940  40 82 00 0C */	bne lbl_803AA94C
/* 803AA944  3B E0 00 02 */	li r31, 2
/* 803AA948  48 00 00 08 */	b lbl_803AA950
lbl_803AA94C:
/* 803AA94C  3B E0 00 01 */	li r31, 1
lbl_803AA950:
/* 803AA950  4B CB 23 A5 */	bl fqrand
/* 803AA954  3C 80 80 65 */	lis r4, shell_max@ha /* 0x8065402C@ha */
/* 803AA958  3C 60 80 65 */	lis r3, shell_table@ha /* 0x80654020@ha */
/* 803AA95C  57 E0 10 3A */	slwi r0, r31, 2
/* 803AA960  38 84 40 2C */	addi r4, r4, shell_max@l /* 0x8065402C@l */
/* 803AA964  38 63 40 20 */	addi r3, r3, shell_table@l /* 0x80654020@l */
/* 803AA968  7C 04 04 2E */	lfsx f0, r4, r0
/* 803AA96C  7C 63 00 2E */	lwzx r3, r3, r0
/* 803AA970  EC 00 00 72 */	fmuls f0, f0, f1
/* 803AA974  FC 00 00 1E */	fctiwz f0, f0
/* 803AA978  D8 01 00 08 */	stfd f0, 8(r1)
/* 803AA97C  80 01 00 0C */	lwz r0, 0xc(r1)
/* 803AA980  54 00 08 3C */	slwi r0, r0, 1
/* 803AA984  7C 63 02 2E */	lhzx r3, r3, r0
/* 803AA988  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 803AA98C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 803AA990  80 01 00 24 */	lwz r0, 0x24(r1)
/* 803AA994  7C 08 03 A6 */	mtlr r0
/* 803AA998  38 21 00 20 */	addi r1, r1, 0x20
/* 803AA99C  4E 80 00 20 */	blr 
