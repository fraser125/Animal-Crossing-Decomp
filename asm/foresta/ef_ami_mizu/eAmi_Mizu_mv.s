lbl_806049A4:
/* 806049A4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 806049A8  7C 08 02 A6 */	mflr r0
/* 806049AC  90 01 00 14 */	stw r0, 0x14(r1)
/* 806049B0  93 E1 00 0C */	stw r31, 0xc(r1)
/* 806049B4  93 C1 00 08 */	stw r30, 8(r1)
/* 806049B8  7C 7E 1B 78 */	mr r30, r3
/* 806049BC  A8 63 00 00 */	lha r3, 0(r3)
/* 806049C0  2C 03 00 0A */	cmpwi r3, 0xa
/* 806049C4  40 82 00 18 */	bne lbl_806049DC
/* 806049C8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 806049CC  D0 1E 00 3C */	stfs f0, 0x3c(r30)
/* 806049D0  D0 1E 00 38 */	stfs f0, 0x38(r30)
/* 806049D4  D0 1E 00 34 */	stfs f0, 0x34(r30)
/* 806049D8  48 00 00 90 */	b lbl_80604A68
lbl_806049DC:
/* 806049DC  3C 80 81 14 */	lis r4, common_data@ha /* 0x81138538@ha */
/* 806049E0  3C A0 80 65 */	lis r5, lit_409@ha /* 0x8064BB78@ha */
/* 806049E4  38 84 85 38 */	addi r4, r4, common_data@l /* 0x81138538@l */
/* 806049E8  C0 05 BB 78 */	lfs f0, lit_409@l(r5)  /* 0x8064BB78@l */
/* 806049EC  3C C0 80 65 */	lis r6, lit_408@ha /* 0x8064BB74@ha */
/* 806049F0  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 806049F4  3F E4 00 02 */	addis r31, r4, 2
/* 806049F8  38 A0 00 08 */	li r5, 8
/* 806049FC  38 86 BB 74 */	addi r4, r6, lit_408@l /* 0x8064BB74@l */
/* 80604A00  80 DF 60 9C */	lwz r6, 0x609c(r31)
/* 80604A04  C0 24 00 00 */	lfs f1, 0(r4)
/* 80604A08  38 80 00 00 */	li r4, 0
/* 80604A0C  81 86 00 14 */	lwz r12, 0x14(r6)
/* 80604A10  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80604A14  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80604A18  7D 89 03 A6 */	mtctr r12
/* 80604A1C  4E 80 04 21 */	bctrl 
/* 80604A20  D0 3E 00 3C */	stfs f1, 0x3c(r30)
/* 80604A24  3C 60 80 65 */	lis r3, lit_411@ha /* 0x8064BB80@ha */
/* 80604A28  38 C3 BB 80 */	addi r6, r3, lit_411@l /* 0x8064BB80@l */
/* 80604A2C  3C A0 80 65 */	lis r5, lit_410@ha /* 0x8064BB7C@ha */
/* 80604A30  D0 3E 00 34 */	stfs f1, 0x34(r30)
/* 80604A34  38 80 00 00 */	li r4, 0
/* 80604A38  C0 25 BB 7C */	lfs f1, lit_410@l(r5)  /* 0x8064BB7C@l */
/* 80604A3C  38 A0 00 08 */	li r5, 8
/* 80604A40  80 7F 60 9C */	lwz r3, 0x609c(r31)
/* 80604A44  C0 5E 00 40 */	lfs f2, 0x40(r30)
/* 80604A48  81 83 00 14 */	lwz r12, 0x14(r3)
/* 80604A4C  C0 06 00 00 */	lfs f0, 0(r6)
/* 80604A50  EC 21 00 B2 */	fmuls f1, f1, f2
/* 80604A54  A8 7E 00 00 */	lha r3, 0(r30)
/* 80604A58  EC 40 00 B2 */	fmuls f2, f0, f2
/* 80604A5C  7D 89 03 A6 */	mtctr r12
/* 80604A60  4E 80 04 21 */	bctrl 
/* 80604A64  D0 3E 00 38 */	stfs f1, 0x38(r30)
lbl_80604A68:
/* 80604A68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80604A6C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80604A70  83 C1 00 08 */	lwz r30, 8(r1)
/* 80604A74  7C 08 03 A6 */	mtlr r0
/* 80604A78  38 21 00 10 */	addi r1, r1, 0x10
/* 80604A7C  4E 80 00 20 */	blr 
