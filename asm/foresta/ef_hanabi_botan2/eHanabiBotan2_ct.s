lbl_8060DEEC:
/* 8060DEEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8060DEF0  7C 08 02 A6 */	mflr r0
/* 8060DEF4  3C A0 80 65 */	lis r5, data_8064C154@ha /* 0x8064C154@ha */
/* 8060DEF8  3C 80 80 65 */	lis r4, lit_385@ha /* 0x8064C158@ha */
/* 8060DEFC  90 01 00 24 */	stw r0, 0x24(r1)
/* 8060DF00  38 00 00 6E */	li r0, 0x6e
/* 8060DF04  C0 25 C1 54 */	lfs f1, data_8064C154@l(r5)  /* 0x8064C154@l */
/* 8060DF08  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8060DF0C  7C 7F 1B 78 */	mr r31, r3
/* 8060DF10  C0 04 C1 58 */	lfs f0, lit_385@l(r4)  /* 0x8064C158@l */
/* 8060DF14  B0 03 00 00 */	sth r0, 0(r3)
/* 8060DF18  38 00 00 00 */	li r0, 0
/* 8060DF1C  D0 3F 00 34 */	stfs f1, 0x34(r31)
/* 8060DF20  D0 3F 00 38 */	stfs f1, 0x38(r31)
/* 8060DF24  D0 3F 00 3C */	stfs f1, 0x3c(r31)
/* 8060DF28  B0 1F 00 4C */	sth r0, 0x4c(r31)
/* 8060DF2C  B0 1F 00 4E */	sth r0, 0x4e(r31)
/* 8060DF30  B0 1F 00 50 */	sth r0, 0x50(r31)
/* 8060DF34  D0 1F 00 40 */	stfs f0, 0x40(r31)
/* 8060DF38  D0 1F 00 44 */	stfs f0, 0x44(r31)
/* 8060DF3C  D0 1F 00 48 */	stfs f0, 0x48(r31)
/* 8060DF40  4B A4 ED B5 */	bl fqrand
/* 8060DF44  3C 60 80 65 */	lis r3, lit_386@ha /* 0x8064C15C@ha */
/* 8060DF48  C0 03 C1 5C */	lfs f0, lit_386@l(r3)  /* 0x8064C15C@l */
/* 8060DF4C  EC 00 00 72 */	fmuls f0, f0, f1
/* 8060DF50  FC 00 00 1E */	fctiwz f0, f0
/* 8060DF54  D8 01 00 08 */	stfd f0, 8(r1)
/* 8060DF58  80 01 00 0C */	lwz r0, 0xc(r1)
/* 8060DF5C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 8060DF60  B0 1F 00 52 */	sth r0, 0x52(r31)
/* 8060DF64  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8060DF68  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8060DF6C  7C 08 03 A6 */	mtlr r0
/* 8060DF70  38 21 00 20 */	addi r1, r1, 0x20
/* 8060DF74  4E 80 00 20 */	blr 
