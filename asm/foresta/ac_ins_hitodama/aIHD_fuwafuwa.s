lbl_8059AA9C:
/* 8059AA9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8059AAA0  7C 08 02 A6 */	mflr r0
/* 8059AAA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 8059AAA8  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 8059AAAC  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 8059AAB0  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 8059AAB4  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 8059AAB8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8059AABC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8059AAC0  2C 04 00 00 */	cmpwi r4, 0
/* 8059AAC4  7C 7E 1B 78 */	mr r30, r3
/* 8059AAC8  40 82 00 30 */	bne lbl_8059AAF8
/* 8059AACC  4B AC 22 29 */	bl fqrand
/* 8059AAD0  3C 80 80 65 */	lis r4, lit_487@ha /* 0x80649FC4@ha */
/* 8059AAD4  3C 60 80 65 */	lis r3, lit_488@ha /* 0x80649FC8@ha */
/* 8059AAD8  C0 04 9F C4 */	lfs f0, lit_487@l(r4)  /* 0x80649FC4@l */
/* 8059AADC  C3 C3 9F C8 */	lfs f30, lit_488@l(r3)  /* 0x80649FC8@l */
/* 8059AAE0  EC 00 00 72 */	fmuls f0, f0, f1
/* 8059AAE4  FC 00 00 1E */	fctiwz f0, f0
/* 8059AAE8  D8 01 00 08 */	stfd f0, 8(r1)
/* 8059AAEC  80 61 00 0C */	lwz r3, 0xc(r1)
/* 8059AAF0  3B E3 01 00 */	addi r31, r3, 0x100
/* 8059AAF4  48 00 00 10 */	b lbl_8059AB04
lbl_8059AAF8:
/* 8059AAF8  3C 60 80 65 */	lis r3, lit_489@ha /* 0x80649FCC@ha */
/* 8059AAFC  3B E0 04 00 */	li r31, 0x400
/* 8059AB00  C3 C3 9F CC */	lfs f30, lit_489@l(r3)  /* 0x80649FCC@l */
lbl_8059AB04:
/* 8059AB04  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 8059AB08  7C 03 07 34 */	extsh r3, r0
/* 8059AB0C  4B E1 FF E5 */	bl sin_s
/* 8059AB10  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 8059AB14  3C 60 80 65 */	lis r3, lit_488@ha /* 0x80649FC8@ha */
/* 8059AB18  C0 03 9F C8 */	lfs f0, lit_488@l(r3)  /* 0x80649FC8@l */
/* 8059AB1C  7C 00 FA 14 */	add r0, r0, r31
/* 8059AB20  90 1E 02 40 */	stw r0, 0x240(r30)
/* 8059AB24  EF E0 00 72 */	fmuls f31, f0, f1
/* 8059AB28  80 1E 02 40 */	lwz r0, 0x240(r30)
/* 8059AB2C  7C 03 07 34 */	extsh r3, r0
/* 8059AB30  4B E1 FF C1 */	bl sin_s
/* 8059AB34  EC 1E 00 72 */	fmuls f0, f30, f1
/* 8059AB38  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 8059AB3C  EC 00 F8 28 */	fsubs f0, f0, f31
/* 8059AB40  EC 01 00 2A */	fadds f0, f1, f0
/* 8059AB44  D0 1E 00 6C */	stfs f0, 0x6c(r30)
/* 8059AB48  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 8059AB4C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 8059AB50  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 8059AB54  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 8059AB58  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8059AB5C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8059AB60  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8059AB64  7C 08 03 A6 */	mtlr r0
/* 8059AB68  38 21 00 40 */	addi r1, r1, 0x40
/* 8059AB6C  4E 80 00 20 */	blr 
