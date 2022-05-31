lbl_80613BB4:
/* 80613BB4  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80613BB8  7C 08 02 A6 */	mflr r0
/* 80613BBC  90 01 00 54 */	stw r0, 0x54(r1)
/* 80613BC0  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 80613BC4  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 80613BC8  DB C1 00 30 */	stfd f30, 0x30(r1)
/* 80613BCC  F3 C1 00 38 */	psq_st f30, 56(r1), 0, 0 /* qr0 */
/* 80613BD0  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80613BD4  93 C1 00 28 */	stw r30, 0x28(r1)
/* 80613BD8  7C 7E 1B 78 */	mr r30, r3
/* 80613BDC  7C BF 2B 78 */	mr r31, r5
/* 80613BE0  4B A4 91 15 */	bl fqrand
/* 80613BE4  3C 80 80 65 */	lis r4, lit_386@ha /* 0x8064C560@ha */
/* 80613BE8  3C 60 80 65 */	lis r3, data_8064C55C@ha /* 0x8064C55C@ha */
/* 80613BEC  C0 44 C5 60 */	lfs f2, lit_386@l(r4)  /* 0x8064C560@l */
/* 80613BF0  C0 03 C5 5C */	lfs f0, data_8064C55C@l(r3)  /* 0x8064C55C@l */
/* 80613BF4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80613BF8  EF E0 08 2A */	fadds f31, f0, f1
/* 80613BFC  4B A4 90 F9 */	bl fqrand
/* 80613C00  3C 80 80 65 */	lis r4, lit_388@ha /* 0x8064C568@ha */
/* 80613C04  3C 60 80 65 */	lis r3, lit_387@ha /* 0x8064C564@ha */
/* 80613C08  C0 44 C5 68 */	lfs f2, lit_388@l(r4)  /* 0x8064C568@l */
/* 80613C0C  C0 03 C5 64 */	lfs f0, lit_387@l(r3)  /* 0x8064C564@l */
/* 80613C10  EC 22 00 72 */	fmuls f1, f2, f1
/* 80613C14  EF C0 08 2A */	fadds f30, f0, f1
/* 80613C18  4B A4 90 DD */	bl fqrand
/* 80613C1C  3C 80 80 65 */	lis r4, lit_389@ha /* 0x8064C56C@ha */
/* 80613C20  A8 7F 00 00 */	lha r3, 0(r31)
/* 80613C24  C0 04 C5 6C */	lfs f0, lit_389@l(r4)  /* 0x8064C56C@l */
/* 80613C28  3C 03 00 01 */	addis r0, r3, 1
/* 80613C2C  EC 00 00 72 */	fmuls f0, f0, f1
/* 80613C30  FC 00 00 1E */	fctiwz f0, f0
/* 80613C34  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 80613C38  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 80613C3C  7C 60 1A 14 */	add r3, r0, r3
/* 80613C40  38 03 80 00 */	addi r0, r3, -32768
/* 80613C44  7C 1F 07 34 */	extsh r31, r0
/* 80613C48  4B A4 90 AD */	bl fqrand
/* 80613C4C  3C 60 80 65 */	lis r3, lit_390@ha /* 0x8064C570@ha */
/* 80613C50  C0 03 C5 70 */	lfs f0, lit_390@l(r3)  /* 0x8064C570@l */
/* 80613C54  EC 00 00 72 */	fmuls f0, f0, f1
/* 80613C58  FC 00 00 1E */	fctiwz f0, f0
/* 80613C5C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 80613C60  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80613C64  54 03 08 3C */	slwi r3, r0, 1
/* 80613C68  38 03 00 3C */	addi r0, r3, 0x3c
/* 80613C6C  B0 1E 00 00 */	sth r0, 0(r30)
/* 80613C70  4B A4 90 BD */	bl fqrand2
/* 80613C74  3C 80 80 65 */	lis r4, lit_392@ha /* 0x8064C578@ha */
/* 80613C78  3C 60 80 65 */	lis r3, lit_391@ha /* 0x8064C574@ha */
/* 80613C7C  C0 44 C5 78 */	lfs f2, lit_392@l(r4)  /* 0x8064C578@l */
/* 80613C80  C0 03 C5 74 */	lfs f0, lit_391@l(r3)  /* 0x8064C574@l */
/* 80613C84  EC 22 00 72 */	fmuls f1, f2, f1
/* 80613C88  EC 00 08 2A */	fadds f0, f0, f1
/* 80613C8C  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 80613C90  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 80613C94  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 80613C98  4B A4 90 95 */	bl fqrand2
/* 80613C9C  3C 60 80 65 */	lis r3, lit_390@ha /* 0x8064C570@ha */
/* 80613CA0  C0 1E 00 10 */	lfs f0, 0x10(r30)
/* 80613CA4  C0 43 C5 70 */	lfs f2, lit_390@l(r3)  /* 0x8064C570@l */
/* 80613CA8  EC 22 00 72 */	fmuls f1, f2, f1
/* 80613CAC  EC 00 08 2A */	fadds f0, f0, f1
/* 80613CB0  D0 1E 00 10 */	stfs f0, 0x10(r30)
/* 80613CB4  4B A4 90 79 */	bl fqrand2
/* 80613CB8  3C 60 80 65 */	lis r3, lit_390@ha /* 0x8064C570@ha */
/* 80613CBC  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80613CC0  C0 43 C5 70 */	lfs f2, lit_390@l(r3)  /* 0x8064C570@l */
/* 80613CC4  EC 22 00 72 */	fmuls f1, f2, f1
/* 80613CC8  EC 00 08 2A */	fadds f0, f0, f1
/* 80613CCC  D0 1E 00 14 */	stfs f0, 0x14(r30)
/* 80613CD0  4B A4 90 5D */	bl fqrand2
/* 80613CD4  3C 80 80 65 */	lis r4, lit_390@ha /* 0x8064C570@ha */
/* 80613CD8  3C 60 80 65 */	lis r3, lit_393@ha /* 0x8064C57C@ha */
/* 80613CDC  C0 44 C5 70 */	lfs f2, lit_390@l(r4)  /* 0x8064C570@l */
/* 80613CE0  38 A3 C5 7C */	addi r5, r3, lit_393@l /* 0x8064C57C@l */
/* 80613CE4  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 80613CE8  38 81 00 08 */	addi r4, r1, 8
/* 80613CEC  EC 42 00 72 */	fmuls f2, f2, f1
/* 80613CF0  C0 25 00 00 */	lfs f1, 0(r5)
/* 80613CF4  38 60 00 00 */	li r3, 0
/* 80613CF8  EC 00 10 2A */	fadds f0, f0, f2
/* 80613CFC  D0 1E 00 18 */	stfs f0, 0x18(r30)
/* 80613D00  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80613D04  D0 1E 00 40 */	stfs f0, 0x40(r30)
/* 80613D08  80 BE 00 10 */	lwz r5, 0x10(r30)
/* 80613D0C  80 1E 00 14 */	lwz r0, 0x14(r30)
/* 80613D10  90 A1 00 08 */	stw r5, 8(r1)
/* 80613D14  90 01 00 0C */	stw r0, 0xc(r1)
/* 80613D18  80 1E 00 18 */	lwz r0, 0x18(r30)
/* 80613D1C  90 01 00 10 */	stw r0, 0x10(r1)
/* 80613D20  4B D7 B9 99 */	bl func_8038F6B8
/* 80613D24  D0 3E 00 44 */	stfs f1, 0x44(r30)
/* 80613D28  3C 60 80 65 */	lis r3, lit_394@ha /* 0x8064C580@ha */
/* 80613D2C  38 83 C5 80 */	addi r4, r3, lit_394@l /* 0x8064C580@l */
/* 80613D30  7F E3 FB 78 */	mr r3, r31
/* 80613D34  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80613D38  C0 04 00 00 */	lfs f0, 0(r4)
/* 80613D3C  EC 01 00 2A */	fadds f0, f1, f0
/* 80613D40  D0 1E 00 44 */	stfs f0, 0x44(r30)
/* 80613D44  4B DA 6D AD */	bl sin_s
/* 80613D48  EC 1F 00 72 */	fmuls f0, f31, f1
/* 80613D4C  7F E3 FB 78 */	mr r3, r31
/* 80613D50  D0 1E 00 1C */	stfs f0, 0x1c(r30)
/* 80613D54  4B DA 6D 49 */	bl cos_s
/* 80613D58  EC 3F 00 72 */	fmuls f1, f31, f1
/* 80613D5C  3C 60 80 65 */	lis r3, lit_395@ha /* 0x8064C584@ha */
/* 80613D60  C0 03 C5 84 */	lfs f0, lit_395@l(r3)  /* 0x8064C584@l */
/* 80613D64  D0 3E 00 24 */	stfs f1, 0x24(r30)
/* 80613D68  D3 DE 00 20 */	stfs f30, 0x20(r30)
/* 80613D6C  D0 1E 00 2C */	stfs f0, 0x2c(r30)
/* 80613D70  4B A4 8F 5D */	bl func_8005CCCC
/* 80613D74  B0 7E 00 4C */	sth r3, 0x4c(r30)
/* 80613D78  4B A4 8F 55 */	bl func_8005CCCC
/* 80613D7C  B0 7E 00 50 */	sth r3, 0x50(r30)
/* 80613D80  4B A4 8F 4D */	bl func_8005CCCC
/* 80613D84  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 80613D88  B0 1E 00 4E */	sth r0, 0x4e(r30)
/* 80613D8C  4B A4 8F 41 */	bl func_8005CCCC
/* 80613D90  54 60 04 FE */	clrlwi r0, r3, 0x13
/* 80613D94  B0 1E 00 52 */	sth r0, 0x52(r30)
/* 80613D98  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 80613D9C  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 80613DA0  E3 C1 00 38 */	psq_l f30, 56(r1), 0, 0 /* qr0 */
/* 80613DA4  CB C1 00 30 */	lfd f30, 0x30(r1)
/* 80613DA8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80613DAC  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80613DB0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 80613DB4  7C 08 03 A6 */	mtlr r0
/* 80613DB8  38 21 00 50 */	addi r1, r1, 0x50
/* 80613DBC  4E 80 00 20 */	blr 
